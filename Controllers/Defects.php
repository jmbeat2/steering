<?php
namespace App\Controllers;
use App\Models\defectsModel;
use CodeIgniter\Controller;

class Defects extends Controller
{
    public function index()
    {
        $model = new DefectsModel();
        $data['defects'] = $model
            ->select('defect_date, name, defect_type, SUM(count) as total')
            ->groupBy('defect_date, defect_type')
            ->orderBy('defect_date', 'DESC') // Show newest defects first
            ->findAll();
    
        return view('defectsview', $data);
    }

    public function fetchDefects()
    {
        $model = new DefectsModel();
        $defects = $model
            ->select('name, defect_date, defect_type, SUM(count) as total')
            ->groupBy('defect_date, defect_type, name')
            ->orderBy('defect_date', 'DESC')
            ->findAll();

        // Format the date as "March 5, 2025"
        foreach ($defects as &$defect) {
            $defect['defect_date'] = date('F j, Y', strtotime($defect['defect_date']));
        }

        return $this->response->setJSON($defects);
    }
    
    public function store()
    {
        date_default_timezone_set('Asia/Manila'); // Replace with your correct timezone
    
        $model = new DefectsModel(); 
        $defectType = $this->request->getPost('defect_type');
        $count = $this->request->getPost('count'); 
        $name = $this->request->getPost('name');
    
        $currentDate = date('Y-m-d'); 
        $selectedDate = $this->request->getPost('defect_date') ?: $currentDate; 
    
        log_message('debug', "Selected Date: $selectedDate | Current Date: $currentDate");
    
        $existing = $model->where([
            'defect_type' => $defectType, 
            'defect_date' => $selectedDate, 
            'name' => $name
        ])->first();
    
        if ($existing) {
            $model->update($existing['id'], [
                'count' => $existing['count'] + $count
            ]);
        } else {
            $model->save([
                'defect_type' => $defectType,
                'defect_date' => $selectedDate,
                'count' => $count,
                'name' => $name,
            ]);
        }
    
        return redirect()->to('/defectsview');
    }
    
    
    
    
    
}
?>
