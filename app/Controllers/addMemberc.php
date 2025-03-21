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

        // Validate form data
        $validation = \Config\Services::validation();
        $validation->setRules([
            'employee_id' => 'required',
            'fname'       => 'required',
            'mname'       => 'required',
            'lname'       => 'required',
            
        ]);

        
        if (!$validation->withRequest($request)->run()) {
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

            session()->setFlashdata('success', 'your in leaders have been successfully!');

            return $this->response->setJSON(['status' => 'success', 'message' => 'User updated successfully!']);
        } else {
            return $this->response->setJSON(['status' => 'error', 'message' => 'Update failed.']);
        }
    }
    
    // Delete user
    public function deleteUser($id)
    {
        $addUserm = new addUserm();
        
        if ($addUserm->find($id)) { // Check if user exists
            $addUserm->delete($id);
    
            return $this->response->setJSON([
                session()->setFlashdata('success', 'your leader employee have been successfuly removed!'),
                'status' => 'success',
                'message' => 'User deleted successfully'
            ]);
        }
    
        return $this->response->setJSON([
            'status' => 'error',
            'message' => 'User not found'
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
            return $this->response->setJSON(['status' => 'error', 'message' => 'User not found']);
        }
    
        // Debug: Print user data
        error_log(print_r($user, true)); // Check what fields exist in the user object
    
        // Check if the `name` column exists
        $fullname = isset($user->fullname) ? $user->fullname : "User"; // Use "User" if name is missing
    
        // Update the duty
        $db->table('users')->where('id', $id)->update(['duty' => $duty]);
    
        // Custom success message based on duty type
        $dutyMessage = "{$fullname} has updated duty successfully!";
        if ($duty === "0") {
            $dutyMessage = "{$fullname} is now Off Duty!";
        } elseif ($duty == "2") {
            $dutyMessage = "{$fullname} is now assigned to Day Shift!";
        } elseif ($duty == "1") {
            $dutyMessage = "{$fullname} is now assigned to Night Shift!";
        }
    
        // Store message in flashdata
        session()->setFlashdata('success', $dutyMessage);
    
        return $this->response->setJSON(['status' => 'success', 'message' => $dutyMessage]);
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
