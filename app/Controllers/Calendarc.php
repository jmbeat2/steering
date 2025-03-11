<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\calendarDefectM;

class Calendarc extends Controller
{
    public function getAllDefects()
    {
        $model = new calendarDefectM();
        
        $year = date('Y');
        $startDate = "$year-03-01";
        $endDate = "$year-03-31";
    
        // Fetch defect counts grouped by category and date
        $data = $model->select('defect_type, defect_date, SUM(count) as total_count')
                      ->where('defect_date >=', $startDate)
                      ->where('defect_date <=', $endDate)
                      ->groupBy('defect_type, defect_date')
                      ->findAll();
    
        return $this->response->setJSON($data);
    }
    
}
