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
        return view('Option/addMember');
    }

    // Store user data
    public function addUser()
    {
        $validation = \Config\Services::validation();

        // Validate form data
        if (!$this->validate([
            'employee_id' => 'required',
            'username' => 'required',
            'password' => 'required',
            'user_type' => 'required',
            'fname' => 'required',
            'lname' => 'required',
            'id_shift' => 'required',
        ])) {
            return $this->response->setJSON(['status' => 'error', 'message' => $validation->getErrors()]);
        }

        // Get the form data
        $data = [
            'employee_id' => $this->request->getPost('employee_id'),
            'username' => $this->request->getPost('username'),
            'password' => password_hash($this->request->getPost('password'), PASSWORD_DEFAULT),
            'user_type' => $this->request->getPost('user_type'),
            'fname' => $this->request->getPost('fname'),
            'mname' => $this->request->getPost('mname'),
            'lname' => $this->request->getPost('lname'),
            'id_shift' => $this->request->getPost('id_shift'),
        ];

        $data['fullname'] = $data['fname'] . ' ' . $data['mname'] . ' ' . $data['lname'];


        // Save the user to the database
        $model = new addUserm();
        $model->insert($data);

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
            'id_shift'    => 'required',
            'username'    => 'required',
            'user_type'   => 'required',
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
            'id_shift'    => $request->getPost('id_shift'),
            'username'    => $request->getPost('username'),
            'user_type'   => $request->getPost('user_type'),
        ];

        $data['fullname'] = $data['fname'] . ' ' . $data['mname'] . ' ' . $data['lname'];

        // Update user in the database
        if ($addUserm->update($id, $data)) {
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
    public function fetchUsers()
    {
        $model = new addUserm();
        $totalRecords = $model->countAll();
        $offset = $this->request->getVar('start') ?? 0;
        $limit = $this->request->getVar('length') ?? 10;

        // Fetch users with pagination
        $users = $model->findAll($limit, $offset);

        // Prepare response for DataTable
        return $this->response->setJSON([
            'draw' => $this->request->getVar('draw'),
            'recordsTotal' => $totalRecords,
            'recordsFiltered' => $totalRecords,
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
    
}
