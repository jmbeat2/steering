<?php
namespace App\Controllers;

use App\Models\OperatorModel;

class Operators extends BaseController
{
    public function __construct()
    {
        $this->session = \Config\Services::session();  // Initialize the session service

        $this->operatorModel = new OperatorModel();  // This line initializes your model

        
    }

    // Show the add user form
    public function index()
    {
        if (!session()->get('logged_in')) {
            return redirect()->to('/login')->with('error', 'You need to login first.');
        }

        $db = \Config\Database::connect();
        $setting = $db->table('global_settings')->where('id', 1)->get()->getRow();

        
        $data = [
            'title' => 'Option / Operator',
            'category_toggle' => $setting->category_toggle ?? 0,

        ];
        return view('Option/addOperator', $data);
    }

    public function fetch()
    {
        $operators = $this->operatorModel->findAll();
    
        // Return in DataTables expected format
        return $this->response->setJSON(['data' => $operators]);
    }
    
    

public function add()
{
    $validation = \Config\Services::validation();

    // Validate required fields
    if (!$this->validate([
        'fname' => 'required',
        'lname' => 'required',
    ])) {
        return $this->response->setJSON(['status' => 'error', 'message' => $validation->getErrors()]);
    }

    // Get the form data
    $data = [
        'fname' => $this->request->getPost('fname'),
        'mname' => $this->request->getPost('mname'),
        'lname' => $this->request->getPost('lname'),
    ];

    // Check if lname is empty
    if (empty($data['lname'])) {
        return $this->response->setJSON(['status' => 'error', 'message' => 'Last name is required.']);
    }

    // Concatenate Full Name (taking into account if there is no middle name)
    if (empty($data['mname'])) {
        $data['fullname'] = trim("{$data['fname']} {$data['lname']}");
    } else {
        $data['fullname'] = trim("{$data['fname']} {$data['mname']} {$data['lname']}");
    }

    // Save to database
    $model = new OperatorModel();
    $model->insert($data);

    // Build a simplified change log for adding a new operator (no old values)
    $changes = [];
    foreach ($data as $key => $value) {
        $changes[] = ucfirst($key) . ": <span class='text-success'>\"$value\"</span>";
    }

    if (count($changes) > 0) {
        $changeList = '';
        foreach ($changes as $change) {
            $parts = explode(':', $change);
            $label = trim($parts[0]);
            $newValue = trim($parts[1]);

            // No old value for a new operator
            $oldValue = '';

            $changeList .= "<div class='mb-2'>$label: <span class='text-danger'>\"$oldValue\"</span> → <span class='text-success'>\"$newValue\"</span></div>";
        }

        // Activity description for adding the operator
        $description = "
            <div class='text-start'>
                <div class='mb-2'>
                    <strong>Operator:</strong>
                    <span class='text-primary fw-semibold'>{$data['fullname']}</span>
                </div>
                <div class='mb-2'>
                    <strong>Added by:</strong>
                    <em class='text-muted'>{$this->session->get('fullname')}</em>
                </div>
                <div class='mt-2'>
                    $changeList
                </div>
            </div>
        ";
    }

    // Log the activity for adding the operator
    log_activity(
        session()->get('employee_id'),
        "Added new operator",
        $description
    );

    session()->setFlashdata('success', 'New operator has been added successfully!');
    
    return $this->response->setJSON(['status' => 'success', 'message' => 'Operator added successfully']);
}



    public function edit($id)
    {
        $model = new OperatorModel();
        return $this->response->setJSON($model->find($id));
    }

    public function update()
    {
        $validation = \Config\Services::validation();
        $model = new OperatorModel();
        $id = $this->request->getPost('id');
    
        // Validate required fields
        if (!$this->validate([
            // 'employee_id' => 'required',
            'fname' => 'required',
            'lname' => 'required',
        ])) {
            return $this->response->setJSON(['status' => 'error', 'message' => $validation->getErrors()]);
        }
    
        // Get old data
        $oldData = $model->find($id);
    
        // Gather new input
        $data = [
            // 'employee_id' => $this->request->getPost('employee_id'),
            'fname' => $this->request->getPost('fname'),
            'mname' => $this->request->getPost('mname'),
            'lname' => $this->request->getPost('lname'),
        ];
    
        // Rebuild fullname
        if (empty($data['mname'])) {
            $data['fullname'] = trim("{$data['fname']} {$data['lname']}");
        } else {
            $data['fullname'] = trim("{$data['fname']} {$data['mname']} {$data['lname']}");
        }
    
        // Update record
        $model->update($id, $data);
    
        // Compare and log changes
        $changes = [];
        foreach ($data as $key => $newValue) {
            $oldValue = $oldData[$key] ?? '';
            if ($oldValue !== $newValue) {
                $changes[] = "<div class='mb-2'>" . ucfirst($key) . ": 
                    <span class='text-danger'>\"$oldValue\"</span> → 
                    <span class='text-success'>\"$newValue\"</span>
                </div>";
            }
        }
    
        // Build description if changes exist
        $description = '';
        if (!empty($changes)) {
            $changeList = implode('', $changes);
            $description = "
                <div class='text-start'>
                    <div class='mb-2'><strong>Operator:</strong> <span class='text-primary fw-semibold'>{$oldData['fullname']}</span></div>
                    <div class='mb-2'><strong>Updated by:</strong> <em class='text-muted'>{$this->session->get('fullname')}</em></div>
                    <div class='mt-2'>$changeList</div>
                </div>
            ";
    
            // Log activity
            log_activity(
                session()->get('employee_id'),
                "Updated operator",
                $description
            );
        }
    
        session()->setFlashdata('success', 'Selected operator was successfully updated!');

        return $this->response->setJSON(['status' => 'success', 'message' => 'Operator updated successfully']);
    }
    

    public function delete($id)
    {
        $model = new OperatorModel();
        $operator = $model->find($id);
    
        if (!$operator) {
            return $this->response->setJSON(['status' => 'error', 'message' => 'Operator not found.']);
        }
    
        // Attempt deletion
        if ($model->delete($id)) {
            $description = "
                <div class='text-start'>
                    <div class='mb-2'>
                        <strong>Deleted Operator:</strong>
                        <span class='text-danger fw-semibold'>{$operator['fullname']}</span>
                    </div>
                    <div class='mb-2'>
                        <strong>Deleted by:</strong>
                        <em class='text-muted'>" . session()->get('fullname') . "</em>
                    </div>
                    <div class='mt-2'>
                        <div class='mb-2'>Employee ID: <span class='text-danger'>\"{$operator['employee_id']}\"</span></div>
                        <div class='mb-2'>Fullname: <span class='text-danger'>\"{$operator['fullname']}\"</span></div>
                        <div class='mb-2'>First Name: <span class='text-danger'>\"{$operator['fname']}\"</span></div>
                        <div class='mb-2'>Middle Name: <span class='text-danger'>\"{$operator['mname']}\"</span></div>
                        <div class='mb-2'>Last Name: <span class='text-danger'>\"{$operator['lname']}\"</span></div>
                    </div>
                </div>
            ";
    
            log_activity(
                session()->get('employee_id'),
                "Deleted an operator",
                $description
            );
    
            session()->setFlashdata('success', 'Operator has been deleted successfully!');
            return $this->response->setJSON(['status' => 'success']);
        }
    
        return $this->response->setJSON(['status' => 'error', 'message' => 'Deletion failed.']);
    }
    
    public function updateDuty()
    {
        $db = \Config\Database::connect();
        $id = $this->request->getPost('id');
        $duty = $this->request->getPost('duty');
    
        // Check if the user exists
        $user = $db->table('operators')->where('id', $id)->get()->getRow();
    
        if (!$user) {
            session()->setFlashdata('error', 'User not found');
            return $this->response->setJSON([
                'status'  => 'error',
                'message' => 'User not found'
            ]);
        }
    
        // Determine user full name
        $fullname = property_exists($user, 'fullname') ? $user->fullname : 'User';
        $oldDuty = property_exists($user, 'duty') ? $user->duty : 'N/A';
    
        $changes = [];
    
        // Track the change in duty
        if ($oldDuty != $duty) {
            $changes[] = "Duty: <span class='text-danger'>\"$oldDuty\"</span> → <span class='text-success'>\"$duty\"</span>";
        }
    
        // Build activity description
        if (count($changes) > 0) {
            $changeList = '';
            foreach ($changes as $change) {
                $changeList .= "<div class='mb-2'>$change</div>";
            }
    
            $description = "
                <div class='text-start'>
                    <div class='mb-2'>
                        <strong>User:</strong>
                        <span class='text-primary fw-semibold'>{$fullname}</span>
                    </div>
                    <div class='mb-2'>
                        <strong>Updated by:</strong>
                        <em class='text-muted'>" . session()->get('fullname') . "</em>
                    </div>
                    <div class='mt-2'>
                        $changeList
                    </div>
                </div>
            ";
        } else {
            $description = "
                <div class='text-start'>
                    <div class='mb-2'>
                        <strong>User:</strong>
                        <span class='text-primary fw-semibold'>{$fullname}</span>
                    </div>
                    <div class='mb-2 text-muted'>No changes were made.</div>
                    <div>
                        <strong class='text-muted'>Updated by:</strong>
                        <em>" . session()->get('fullname') . "</em>
                    </div>
                </div>
            ";
        }
    
        // Log the activity
        log_activity(
            session()->get('employee_id'),
            "Update Duty",
            $description
        );
    
        // Update duty in database
        $db->table('operators')->where('id', $id)->update(['duty' => $duty]);
    
        // Duty messages
        $dutyMessages = [
            "0" => "{$fullname} is now Off Duty!",
            "1" => "{$fullname} is now assigned to Night Shift!",
            "2" => "{$fullname} is now assigned to Day Shift!"
        ];
    
        $dutyMessage = $dutyMessages[$duty] ?? "{$fullname} has updated duty successfully!";
    
        session()->setFlashdata('success', $dutyMessage);
    
        return $this->response->setJSON([
            'status'  => 'success',
            'message' => $dutyMessage
        ]);
    }
    

    
}
