<?php
namespace App\Controllers;

use App\Models\addUserm;

class addMemberc extends BaseController
{
    // Show the add user form
    public function index()
    {
        return view('Option/addMember');
    }

    // Store user data
    public function addUser()
    {
        $model = new addUserm();

        $data = [
            'name' => $this->request->getPost('name'),
            'firstname' => $this->request->getPost('firstname'),
            'middlename' => $this->request->getPost('middlename'),
            'lastname' => $this->request->getPost('lastname'),
            'shift_type' => $this->request->getPost('shift'),
            'date' => date('Y-m-d H:i:s')
        ];

        if ($model->insert($data)) {
            return redirect()->to('/addMemberc/index')->with('message', 'User added successfully');
        } else {
            return redirect()->back()->with('error', 'Failed to add user');
        }
    }

    // Update user data
    public function updateUser($id)
    {
        $model = new addUserm();

        $data = [
            'firstname' => $this->request->getPost('firstname'),
            'middlename' => $this->request->getPost('middlename'),
            'lastname' => $this->request->getPost('lastname'),
            'shift_type' => $this->request->getPost('shift')
        ];
        
        // Regenerate full name
        $data['name'] = $data['firstname'] . ' ' . $data['middlename'] . ' ' . $data['lastname'];

        if ($model->update($id, $data)) {
            return redirect()->to('/addMemberc/index')->with('message', 'User updated successfully');
        } else {
            return redirect()->back()->with('error', 'Failed to update user');
        }
    }

    // Delete user
    public function deleteUser($id)
    {
        $model = new addUserm();

        if ($model->delete($id)) {
            return redirect()->to('addMemberc')->with('message', 'User deleted successfully');
        } else {
            return redirect()->back()->with('error', 'Failed to delete user');
        }
    }

    // Fetch all users
    public function fetchUsers()
    {
        $model = new addUserm();
        $totalRecords = $model->countAll();
        $offset = $this->request->getVar('start') ?? 0;
        $users = $model->findAll( $offset);

        return $this->response->setJSON([
            'draw' => $this->request->getVar('draw'),
            'recordsTotal' => $totalRecords,
            'recordsFiltered' => $totalRecords,
            'data' => $users
        ]);
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


    public function getUser($id)
    {
        $userModel = new \App\Models\addUserm();  // Adjust if your model name is different
    
        // Convert ID to integer if it's a single value
        if (is_numeric($id)) {
            $user = $userModel->find($id);
        } else {
            $ids = explode(',', $id);
            $user = $userModel->whereIn('id', $ids)->findAll();
        }
    
        if (!$user) {
            return $this->response->setStatusCode(404)->setJSON(['error' => 'User not found']);
        }
    
        return $this->response->setJSON($user);
    }
    
    

}