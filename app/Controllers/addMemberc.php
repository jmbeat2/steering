<?php
namespace App\Controllers;

use App\Models\addUserm;

class addMemberc extends BaseController
{
    public function __construct()
    {
        $this->session = \Config\Services::session();  // Initialize the session service


        $this->addUserm = new addUserm(); // Ensure the correct model is loaded
        
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
            'title' => 'Manage / Leader',
            'category_toggle' => $setting->category_toggle ?? 0,
        ];
        return view('Option/addMember', $data);
    }

    public function addUser()
    {
        $validation = \Config\Services::validation();
        // Accessing the employee_id from the session
   


        // Validate form data
        if (!$this->validate([
            'employee_id' => 'required',
            'password' => 'required',
            'fname'     => 'required',
            'lname'     => 'required',
        ])) {
            return $this->response->setJSON(['status' => 'error', 'message' => $validation->getErrors()]);
        }
    
        // Get form data
        $id_shift = $this->request->getPost('id_shift'); // Ensure you get the correct value
        $duty = $id_shift; // Assigning same value to duty
        
        $newData = [
            'employee_id' => $this->request->getPost('employee_id'),
            'user_type'     => 0,
            'password' => md5($this->request->getPost('password')),
            'fname'       => $this->request->getPost('fname'),
            'mname'       => $this->request->getPost('mname'),
            'lname'       => $this->request->getPost('lname'),
        ];
    
        // Concatenate Full Name
        $newData['fullname'] = trim("{$newData['fname']} {$newData['mname']} {$newData['lname']}");

        // Save to database
        $model = new addUserm();
        $model->insert($newData);
        
        // Build a simplified change log for adding a new user (no old values)
        $changes = [];
        foreach ($newData as $key => $value) {
            // For new data, all fields are considered as changes (no old value)
            $changes[] = ucfirst($key) . ": <span class='text-success'>\"$value\"</span>";
        }

        if (count($changes) > 0) {
            $changeList = '';
            foreach ($changes as $change) {
                $parts = explode(':', $change);
                $label = trim($parts[0]);
                $newValue = trim($parts[1]);

                // Since it's a new user, no old value exists, so we leave the old value empty
                $oldValue = '';

                $changeList .= "<div class='mb-2'>$label: <span class='text-danger'>\"$oldValue\"</span> → <span class='text-success'>\"$newValue\"</span></div>";
            }

            // Simplified description for adding a new user
            $description = "
                <div class='text-start'>
                    <div class='mb-2'>
                        <strong>User:</strong>
                        <span class='text-primary fw-semibold'>{$newData['fullname']}</span>
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
        } else {
            // Description when no changes are made (which shouldn't happen in add user)
            $description = "
                <div class='text-start'>
                    <div class='mb-2'>
                        <strong>User:</strong>
                        <span class='text-primary fw-semibold'>{$newData['fullname']}</span>
                    </div>
                    <div class='mb-2 text-muted'>No changes were made.</div>
                    <div>
                        <strong class='text-muted'>Added by:</strong>
                        <em>{$this->session->get('fullname')}</em>
                    </div>
                </div>
            ";
        }
        // Log the activity for adding a user
        log_activity(
            session()->get('employee_id'),
            "Added new user",
            $description
        );    
        session()->setFlashdata('success', 'New leader has been added successfully!');
    
        return $this->response->setJSON(['status' => 'success', 'message' => 'User added successfully']);
    }
    
    

// Update user data
public function updateUser($id)
{
    $addUserm = new addUserm();
    $request = $this->request;
    $db = \Config\Database::connect();

    // Fetch the current user record
    $user = $db->table('users')->where('id', $id)->get()->getRow();

    if (!$user) {
        session()->setFlashdata('error', 'User not found.');
        return $this->response->setJSON(['status' => 'error', 'message' => 'User not found.']);
    }

    $currentUserType = session()->get('user_type');
    if ($currentUserType == 0 && $user->user_type == 1) {
        session()->setFlashdata('error', 'You do not have permission to edit admin users.');
        return $this->response->setJSON(['status' => 'error', 'message' => 'You do not have permission to edit admin users.']);
    }

    // Validate
    $validation = \Config\Services::validation();
    $validation->setRules([
        'employee_id' => 'required',
        'fname'       => 'required',
        'mname'       => 'required',
        'lname'       => 'required',
    ]);

    if (!$validation->withRequest($request)->run()) {
        session()->setFlashdata('error', 'Validation failed. Please check the form.');
        return $this->response->setJSON(['status' => 'error', 'message' => $validation->getErrors()]);
    }

    // New data from form
    $newData = [
        'employee_id' => $request->getPost('employee_id'),
        'fname'       => $request->getPost('fname'),
        'mname'       => $request->getPost('mname'),
        'lname'       => $request->getPost('lname'),
        'duty'        => $request->getPost('id_shift'),
    ];

    $newData['fullname'] = $newData['fname'] . ' ' . $newData['mname'] . ' ' . $newData['lname'];

 // Build a simplified change log
$changes = [];
foreach ($newData as $key => $value) {
    if (isset($user->$key) && $user->$key != $value) {
        $oldValue = $user->$key;
        $changes[] = ucfirst($key) . ": <span class='text-danger'>\"$oldValue\"</span> → <span class='text-success'>\"$value\"</span>";
    }
}

if (count($changes) > 0) {
    $changeList = '';
    foreach ($changes as $change) {
        $parts = explode(':', $change);
        $label = trim($parts[0]);
        $values = trim($parts[1]);

        [$oldValue, $newValue] = explode('→', $values);

        $changeList .= "<div class='mb-2'>$label: <span class='text-danger'>\"$oldValue\"</span> → <span class='text-success'>\"$newValue\"</span></div>";
    }

    // Simplified description for update
    $description = "
        <div class='text-start'>
            <div class='mb-2'>
                <strong>User:</strong>
                <span class='text-primary fw-semibold'>{$newData['fullname']}</span>
            </div>
            <div class='mb-2'>
                <strong>Updated by:</strong>
                <em class='text-muted'>{$this->session->get('fullname')}</em>
            </div>
            <div class='mt-2'>
                $changeList
            </div>
        </div>
    ";
} else {
    // Description when no changes are made
    $description = "
        <div class='text-start'>
            <div class='mb-2'>
                <strong>User:</strong>
                <span class='text-primary fw-semibold'>{$newData['fullname']}</span>
            </div>
            <div class='mb-2 text-muted'>No changes were made.</div>
            <div>
                <strong class='text-muted'>Updated by:</strong>
                <em>{$this->session->get('fullname')}</em>
            </div>
        </div>
    ";
}


// Log the activity

    

    // Update
    if ($addUserm->update($id, $newData)) {
        session()->setFlashdata('success', "{$newData['fullname']} has been updated successfully!");

        // Log activity with formatted HTML description
        log_activity(
            session()->get('employee_id'),
            "Update user",
            $description
        );

        return $this->response->setJSON(['status' => 'success', 'message' => 'User updated successfully!']);
    } else {
        session()->setFlashdata('error', 'Update failed. Please try again.');
        return $this->response->setJSON(['status' => 'error', 'message' => 'Update failed.']);
    }
}



    
    // Delete user
// Delete user
public function deleteUser($id)
{
    $addUserm = new addUserm();
    $user = $addUserm->find($id); // Find the user by ID

    if (!$user) {
        return $this->response->setJSON([
            'status' => 'error',
            'message' => 'User not found'
        ]);
    }

    // Prevent deleting users with user_type == 1 (admin users)
    if ($user['user_type'] == 1) {
        return $this->response->setJSON([
            'status' => 'error',
            'message' => 'Admin users cannot be deleted.'
        ]);
    }

    // Proceed with deletion
    $addUserm->delete($id);

    // Log the activity
    // Concatenate Full Name using data from the user
    $fullname = trim("{$user['fname']} {$user['mname']} {$user['lname']}");


    // Build the log description for the deleted user
    $description = "
        <div class='text-start'>
            <div class='mb-2'>
                <strong>User:</strong>
                <span class='text-primary fw-semibold'>{$fullname}</span>
            </div>
            <div class='mb-2'>
                <strong>Deleted by:</strong>
                <em class='text-muted'>{$this->session->get('fullname')}</em>
            </div>
        </div>
    ";

    // Log the activity: log user ID, action details, and the description
    log_activity(
        session()->get('user_id'), // Pass session user_id
        "Delete user",             // Action type
         $description
    );

    return $this->response->setJSON([
        'status' => 'success',
        'message' => 'User deleted successfully'
    ]);
}


    

    // Fetch all users for DataTable
    // public function fetchUsers()
    // {
    //     $model = new addUserm();
    //     $totalRecords = $model->countAll();
    //     $offset = $this->request->getVar('start') ?? 0;
    //     $limit = $this->request->getVar('length') ?? 10;

    //     // Fetch users with pagination
    //     $users = $model->findAll($limit, $offset);

    //     // Prepare response for DataTable
    //     return $this->response->setJSON([
    //         'draw' => $this->request->getVar('draw'),
    //         'recordsTotal' => $totalRecords,
    //         'recordsFiltered' => $totalRecords,
    //         'data' => $users
    //     ]);
    // }

    public function fetchUsers()
    {
        $model = new addUserm();
        $users = $model->findAll();
        
        foreach ($users as &$user) {
            // Format date fields or any other fields if necessary
            $user['created_at'] = date('F j, Y g:i A', strtotime($user['created_at'])); // example formatting
        }
    
        return $this->response->setJSON([
            'draw' => $this->request->getVar('draw'),
            'recordsTotal' => count($users),
            'recordsFiltered' => count($users),
            'data' => $users
        ]);
    }
    

    // Fetch specific user by ID for editing
    public function getUser($id)
    {
        $user = $this->addUserm->find($id);
        
        if ($user) {
            return $this->response->setJSON([
                'status' => 'success',
                'data' => $user
            ]);
        } else {
            return $this->response->setJSON([
                'status' => 'error',
                'message' => 'User not found'
            ]);
        }
    }

    public function updateDuty()
    {
        $db = \Config\Database::connect();
        $id = $this->request->getPost('id');
        $duty = $this->request->getPost('duty');
        
        // Check if the user exists
        $user = $db->table('users')->where('id', $id)->get()->getRow();
    
        if (!$user) {
            session()->setFlashdata('error', 'User not found');
            return $this->handleResponse('error', 'User not found');
        }
    
        // Check if the user is an admin before updating
        if ($user->user_type == 1) {
            session()->setFlashdata('error', 'Please contact the IT');
            return $this->handleResponse('error', 'User cannot update admin account');
        }
    
        // Determine user full name
        $fullname = property_exists($user, 'fullname') ? $user->fullname : "User";
    
        // Prepare the data for change tracking
        $oldDuty = $user->duty;
        $changes = [];
        
        // Track the change in duty
        if ($oldDuty != $duty) {
            $changes[] = "Duty: <span class='text-danger'>\"$oldDuty\"</span> → <span class='text-success'>\"$duty\"</span>";
        }
    
        // If there are changes, construct the change log
        if (count($changes) > 0) {
            $changeList = '';
            foreach ($changes as $change) {
                $changeList .= "<div class='mb-2'>$change</div>";
            }
    
            // Description with change list
            $description = "
                <div class='text-start'>
                    <div class='mb-2'>
                        <strong>User:</strong>
                        <span class='text-primary fw-semibold'>{$fullname}</span>
                    </div>
                    <div class='mb-2'>
                        <strong>Updated by:</strong>
                        <em class='text-muted'>{$this->session->get('fullname')}</em>
                    </div>
                    <div class='mt-2'>
                        $changeList
                    </div>
                </div>
            ";
        } else {
            // Description when no changes were made (this case shouldn't happen if duty is updated)
            $description = "
                <div class='text-start'>
                    <div class='mb-2'>
                        <strong>User:</strong>
                        <span class='text-primary fw-semibold'>{$fullname}</span>
                    </div>
                    <div class='mb-2 text-muted'>No changes were made.</div>
                    <div>
                        <strong class='text-muted'>Updated by:</strong>
                        <em>{$this->session->get('fullname')}</em>
                    </div>
                </div>
            ";
        }
    
        // Log the activity for updating duty
        log_activity(
            session()->get('employee_id'),
            "Update Duty",
            $description
        );
    
        // Update the user's duty in the database
        $db->table('users')->where('id', $id)->update(['duty' => $duty]);
    
        // Custom success message based on duty type
        $dutyMessages = [
            "0" => "{$fullname} is now Off Duty!",
            "1" => "{$fullname} is now assigned to Night Shift!",
            "2" => "{$fullname} is now assigned to Day Shift!"
        ];
    
        $dutyMessage = $dutyMessages[$duty] ?? "{$fullname} has updated duty successfully!";
    
        // Store message in Flashdata for UI display
        session()->setFlashdata('success', $dutyMessage);
    
        return $this->handleResponse('success', $dutyMessage);
    }
    
    
    /**
     * Handle response based on request type (AJAX or normal request)
     */
    private function handleResponse($status, $message)
    {
        if ($this->request->isAJAX()) {
            return $this->response->setJSON(['status' => $status, 'message' => $message]);
        }
    
        return redirect()->back();
    }
    
    
    
    public function resetPassword()
    {
        // Check if the user is an admin
        if (session()->get('user_type') !== '1') {
            return $this->response->setJSON([
                'status' => 'error',
                'message' => 'Unauthorized access!'
            ]);
        }
    
        $userId = $this->request->getPost('user_id');
        $newPassword = $this->request->getPost('new_password');
    
        if (!$userId || !$newPassword) {
            return $this->response->setJSON([
                'status' => 'error',
                'message' => 'Missing user ID or password!'
            ]);
        }
    
        $userModel = new addUserm();
    
        // Retrieve the user's full name
        $user = $userModel->find($userId);
        if (!$user) {
            return $this->response->setJSON([
                'status' => 'error',
                'message' => 'User not found!'
            ]);
        }
    
        $fullName = $user['fname'] . ' ' . $user['lname']; // Adjust field names if needed
    
        // Hash password with MD5 (not recommended, better use bcrypt)
        $hashedPassword = md5($newPassword);
    
        $userModel->update($userId, ['password' => $hashedPassword]);
    
        // Set flash session message
        session()->setFlashdata('success', "You successfully reset the password for {$fullName}!");
    
        return $this->response->setJSON([
            'status' => 'success',
            'message' => "Password reset successfully for {$fullName}!"
        ]);
    }
    
    
    
}
