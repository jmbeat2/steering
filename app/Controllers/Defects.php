<?php
namespace App\Controllers;
use App\Models\defectsModel;
use CodeIgniter\Controller;

class Defects extends Controller
{
    public function index()
    {
        if (!session()->get('logged_in')) {
            return redirect()->to('/login')->with('error', 'You need to login first.');
        }
    
        $model = new DefectsModel();
        $data = [
            'defects' => $model
                ->select('defect_date, name, defect_type, SUM(count) as total')
                ->groupBy('defect_date, defect_type')
                ->orderBy('defect_date', 'DESC') // Show newest defects first
                ->findAll(),
            'title' => 'Defect information'
        ];
    
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
    date_default_timezone_set('Asia/Manila');
    
    $model = new DefectsModel(); 
    $defectType = $this->request->getPost('defect_type');
    $count = $this->request->getPost('count'); 
    $name = session()->get('fullname'); // Getting fullname from session
    $id_shift = session()->get('duty'); // Getting shift from session
    $empid = session()->get('employee_id'); // Getting shift from session

    if (!ctype_digit($id_shift)) {
        session()->setFlashdata('error', 'No assigned shift (DS or NS).');
        return redirect()->back()->withInput(); // Prevents saving & keeps form data
    }
    
    
    
    // Debugging session values
    log_message('debug', 'Session Fullname: ' . $name . ' | Shift: ' . $id_shift);

    $currentDate = date('Y-m-d'); 
    $selectedDate = $this->request->getPost('defect_date') ?: $currentDate;

    log_message('debug', "Selected Date: $selectedDate | Current Date: $currentDate");

    // Check if defect already exists for the given date and type
    $existing = $model->where([
        'defect_type' => $defectType, 
        'defect_date' => $selectedDate, 
        'id_shift' => $id_shift,
        'name' => $name,
        'empid' => $empid,
    ])->first();

    log_message('debug', 'Existing Defect: ' . print_r($existing, true));

    if ($existing) {
        // If exists, update the count
        log_message('debug', 'Updating Defect for ID: ' . $existing['id']);
    
        $model->update($existing['id'], [
            'count' => $existing['count'] + $count,
            'id_shift' => $id_shift, // Update shift value
        ]);
    
        session()->setFlashdata('success', 'Defects count successfully added!');
    } else {
        // If not exists, create a new record
        log_message('debug', 'Creating New Defect Record');
    
        $model->save([
            'defect_type' => $defectType,
            'defect_date' => $selectedDate,
            'count' => $count,
            'id_shift' => $id_shift, // Insert shift value
            'name' => $name,
            'empid' => $empid,
        ]);
    
        session()->setFlashdata('success', 'Defects count successfully added!');
    }
    
    // Redirect after action
    return redirect()->to('/defectsview');
}

    
    
    
    
    
    
    
    
}
?>
