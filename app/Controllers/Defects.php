<?php
namespace App\Controllers;
use App\Models\defectsModel;
use CodeIgniter\Controller;

class Defects extends Controller
{
    
    public function __construct()
{
    $this->db = \Config\Database::connect();
}

    public function index()
    {
        if (!session()->get('logged_in')) {
            return redirect()->to('/login')->with('error', 'You need to login first.');
        }

        $db = \Config\Database::connect();
        $setting = $db->table('global_settings')->where('id', 1)->get()->getRow();

        $data['category_toggle'] = $setting->category_toggle ?? 0;
    
        $model = new DefectsModel();
        $data = [
            'defects' => $model
                ->select('id,id_shift, name, defect_type, SUM(count) as total')
                ->groupBy('defect_date, defect_type')
                ->orderBy('defect_date', 'DESC') // Show newest defects first
                ->findAll(),
            'title' => 'Defect information',
            'category_toggle' => $setting->category_toggle ?? 0,
        ];
    
        return view('defectsview', $data);
    }

    

    public function fetchDefects()
    {
        $model = new DefectsModel();
        $defects = $model
            ->select('id, name, id_shift, encodeby, defect_date, count, defect_type, SUM(count) as total')
            ->groupBy('defect_date, defect_type, name, encodeby')
            ->orderBy('defect_date', 'DESC')
            ->findAll();
    
        // Filter out count == 0 and format dates
        $filtered = array_filter($defects, function ($defect) {
            return $defect['count'] != 0;
        });
    
        foreach ($filtered as &$defect) {
            $defect['defect_date'] = date('F j, Y', strtotime($defect['defect_date']));
        }
    
        return $this->response->setJSON(array_values($filtered));
    }
    

    public function fetchDefects1()
    {
        $model = new DefectsModel();
        $defects = $model
            ->select('id,name, id_shift, encodeby, defect_date, count, defect_type, SUM(count) as total')
            ->groupBy('defect_date, defect_type, name, encodeby')
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
    $name = $this->request->getPost('op_name');
    $id_shift = $this->request->getPost('shift');
    $empid = session()->get('employee_id');
    $encode = session()->get('fullname'); 




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
        'defect_type'   => $defectType, 
        'defect_date'   => $selectedDate, 
        'id_shift'      => $id_shift,
        'name'          => $name,
        'encodeby'      => $encode,
        'empid'         => $empid,
        'count'         => $count, 
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
            'defect_type'   => $defectType, 
            'defect_date'   => $selectedDate, 
            'id_shift'      => $id_shift,
            'name'          => $name,
            'encodeby'      => $encode,
            'empid'         => $empid,
            'count'         => $count, 
        ]);
    
        session()->setFlashdata('success', 'Defects count successfully added!');
    }
    
    // Redirect after action
    return redirect()->to('/defectsview');
}

    // Method to store defect types
    public function store1()
    {
        if ($this->request->isAJAX()) {
            $count = $this->request->getPost('count');
            $defectTypes = $this->request->getPost('defect_type');

            // CSRF protection is handled automatically by CodeIgniter, no need for manual checks

            // Validate defect types to ensure it's an array
            if (!is_array($defectTypes)) {
                return $this->response->setJSON([
                    'success' => false,
                    'message' => 'Invalid defect data.'
                ]);
            }

            // Sample insert logic (modify as needed)
            foreach ($defectTypes as $type) {
                // Insert each defect type with count and defect_date
                $this->db->table('defects')->insert([
                    'count' => $count,
                    'defect_type' => $type,
                    'defect_date' => date('Y-m-d')
                ]);
            }

            return $this->response->setJSON([
                'success' => true,
                'message' => 'Defects inserted.',
                'data' => $defectTypes
            ]);
        }

        // If the request is not AJAX, return a 403 error
        return $this->response->setStatusCode(403)->setJSON([
            'error' => 'Invalid request'
        ]);
    }

    // Method to save global toggle state
    public function saveGlobalToggle()
    {
        $state = $this->request->getPost('toggle_state');

        // Update the toggle state in the global settings table
        $db = \Config\Database::connect();
        $db->table('global_settings')
            ->where('id', 1)
            ->update(['category_toggle' => $state]);

        return $this->response->setJSON(['success' => true]);
    }

    // Method to delete defects with count 0
    public function deleteZeroCountDefects()
    {
        // Assuming you are using a model called `DefectsModel`
        $defectModel = new DefectsModel();

        // Delete defects where count = 0
        $defectModel->where('count', 0)->delete();

        return $this->response->setJSON([
            'success' => true,
            'message' => 'Defects with count 0 have been deleted.'
        ]);
    }




    public function defectsViews()
    {

        $db = \Config\Database::connect();
        $setting = $db->table('global_settings')->where('id', 1)->get()->getRow();

        $data = [
            'title' => 'Manage / Defects',
            'category_toggle' => $setting->category_toggle ?? 0,

        ];
        return view('option/defects', $data);
    }

    public function updateDefect()
{
    $model = new \App\Models\DefectsModel();
    $validation = \Config\Services::validation();

    $id = $this->request->getPost('id');

    if (!$this->validate([
        'name' => 'required',
        'defect_type' => 'required',
        'count' => 'required|integer',
        'defect_date' => 'required|valid_date',
    ])) {
        return $this->response->setJSON([
            'status' => 'error',
            'message' => $validation->getErrors()
        ]);
    }

    $oldData = $model->find($id);
    if (!$oldData) {
        return $this->response->setJSON([
            'status' => 'error',
            'message' => 'Defect not found.'
        ]);
    }

    $data = [
        'name'        => $this->request->getPost('name'),
        'defect_type' => $this->request->getPost('defect_type'),
        'count'       => $this->request->getPost('count'),
        'defect_date' => $this->request->getPost('defect_date'),
    ];

    $model->update($id, $data);

    $changes = [];
    foreach ($data as $key => $newValue) {
        $oldValue = $oldData[$key] ?? '';
        if ($oldValue != $newValue) {
            $changes[] = "<div class='mb-1'>" . ucfirst($key) . ": 
                <span class='text-danger'>\"$oldValue\"</span> → 
                <span class='text-success'>\"$newValue\"</span></div>";
        }
    }

    if (!empty($changes)) {
        $description = "
            <div class='text-start'>
                <div class='mb-2'><strong>Defect:</strong> <span class='text-primary fw-semibold'>{$oldData['name']}</span></div>
                <div class='mb-2'><strong>Updated by:</strong> <em class='text-muted'>" . session()->get('fullname') . "</em></div>
                <div class='mt-2'>" . implode('', $changes) . "</div>
            </div>";

        log_activity(
            session()->get('employee_id'),
            "Updated defect",
            $description
        );
    }

    session()->setFlashdata('success', 'Defect updated successfully.');
    return $this->response->setJSON([
        'status' => 'success',
        'message' => 'Defect updated successfully.'
    ]);
}

    public function deleteDefect()
    {
        $model = new \App\Models\DefectsModel();
        $id = $this->request->getPost('id');

        $defect = $model->find($id);
        if (!$defect) {
            return $this->response->setJSON([
                'status' => 'error',
                'message' => 'Defect not found.'
            ]);
        }

        $model->delete($id);

        // Format activity log
        $description = "
            <div class='text-start'>
                <div class='mb-2'><strong>Defect:</strong> <span class='text-danger fw-semibold'>{$defect['name']}</span></div>
                <div class='mb-2'><strong>Deleted by:</strong> <em class='text-muted'>" . session()->get('fullname') . "</em></div>
                <div class='mt-2 text-danger'><i class='fas fa-trash-alt'></i> This defect record was permanently deleted.</div>
            </div>";

        log_activity(
            session()->get('employee_id'),
            "Deleted defect",
            $description
        );

        session()->setFlashdata('success', 'Defect deleted successfully.');

        return $this->response->setJSON([
            'status' => 'success',
            'message' => 'Defect deleted successfully.'
        ]);
    }



}
?>
