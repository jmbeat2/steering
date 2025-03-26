<?php
namespace App\Controllers;

use App\Models\addUserm;

class addMemberc extends BaseController
{
    public function __construct()
    {
        $this->addUserm = new addUserm(); // Ensure the correct model is loaded
    }

    // Show the add user form
    public function index()
    {
        $data = [
            'title' => 'Option / Member',
        ];
        return view('Option/addMember', $data);
    }

    public function addUser()
    {
        $validation = \Config\Services::validation();
    
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
    
        $data = [
            'employee_id' => $this->request->getPost('employee_id'),
            'user_type'     => 0,
            'password' => md5($this->request->getPost('password')),
            'fname'       => $this->request->getPost('fname'),
            'mname'       => $this->request->getPost('mname'),
            'lname'       => $this->request->getPost('lname'),
            

        ];
    
        // Concatenate Full Name
        $data['fullname'] = trim("{$data['fname']} {$data['mname']} {$data['lname']}");
    
        // Save to database
        $model = new addUserm();
        $model->insert($data);
    
        session()->setFlashdata('success', 'New leader has been added successfully!');
    
        return $this->response->setJSON(['status' => 'success', 'message' => 'User added successfully']);
    }
    

// Update user data
public function updateUser($id)
{
    $addUserm = new addUserm();
    $request = $this->request;
    $db = \Config\Database::connect();

    // Check if the user exists
    $user = $db->table('users')->where('id', $id)->get()->getRow();

    if (!$user) {
        session()->setFlashdata('error', 'User not found.');
        return $this->response->setJSON(['status' => 'error', 'message' => 'User not found.']);
    }

    // Check the logged-in user's type
    $currentUser = session()->get('user_type'); // Assuming you store user_type in session

    if ($currentUser == 0 && $user->user_type == 1) {
        // If the logged-in user is type 0, they cannot update an admin user (type 1).
        session()->setFlashdata('error', 'You do not have permission to edit admin users.');
        return $this->response->setJSON(['status' => 'error', 'message' => 'You do not have permission to edit admin users.']);
    }

    // Validate form data
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

    // Get data from form
    $data = [
        'employee_id' => $request->getPost('employee_id'),
        'fname'       => $request->getPost('fname'),
        'mname'       => $request->getPost('mname'),
        'lname'       => $request->getPost('lname'),
        'duty'        => $request->getPost('id_shift'),
    ];

    $data['fullname'] = $data['fname'] . ' ' . $data['mname'] . ' ' . $data['lname'];

    // Update user in the database
    if ($addUserm->update($id, $data)) {
        session()->setFlashdata('success', $data['fullname'] . ' has been updated successfully!');
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

    // Prevent deleting users with user_type == 1
    if ($user['user_type'] == 1) {
        return $this->response->setJSON([
            'status' => 'error',
            'message' => 'Admin users cannot be deleted.'
        ]);
    }

    // Proceed with deletion
    $addUserm->delete($id);

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
        $data = ["data" => $model->findAll()];
        return $this->response->setJSON($data);
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
    
        // Update the duty in the database
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
