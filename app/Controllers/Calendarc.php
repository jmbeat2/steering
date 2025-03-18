<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\calendarDefectM;

class Calendarc extends Controller
{
    public function getAllDefects()
    {
        $model = new calendarDefectM();
        
        // Get current year and month
        $year = date('Y');
        $month = date('m'); // Current month (01-12)
        
        // Get the first and last day of the current month
        $startDate = "$year-$month-01";
        $endDate = date("Y-m-t", strtotime($startDate)); // Gets the last day of the month
    
        // Fetch defect counts grouped by category and date
        $data = $model->select('defect_type, defect_date, SUM(count) as total_count')
                      ->where('defect_date >=', $startDate)
                      ->where('defect_date <=', $endDate)
                      ->groupBy('defect_type, defect_date')
                      ->findAll();
    
        return $this->response->setJSON($data);
    }
    
    
}
