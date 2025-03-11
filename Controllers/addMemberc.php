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
            'date' => date('Y-m-d H:i:s')  // Store cuArrent timestamp for user creation date
        ];

        if ($model->insert($data)) {
            return redirect()->to('/addMemberc/index')->with('message', 'User added successfully');
        } else {
            return redirect()->back()->with('error', 'Failed to add user');
        }
    }

    public function fetchUsers()
    {
        $model = new addUserm();
        
        // Get the total count of records in the users table
        $totalRecords = $model->countAll();

        // Optionally, implement filtering if needed. Here, we’re not applying any filters.
        // Example: if you're filtering by name, you would do something like $model->like('name', $searchTerm);

        // Fetch the data for the current page (adjust page size if needed)
        $users = $model->findAll();  // You can implement pagination here if needed (using limits).

        // Return the DataTables response structure
        return $this->response->setJSON([
            'draw' => $this->request->getVar('draw'), // DataTable draw counter
            'recordsTotal' => $totalRecords, // Total records in the database (without any filtering)
            'recordsFiltered' => $totalRecords, // Filtered records (here we are using the same total)
            'data' => $users // The actual data for the table rows
        ]);
    }

    public function fetchShiftTypes()
    {
        $shiftTypes = $this->model->getAllShiftTypes(); // Fetch shift types from the model
        return $this->response->setJSON($shiftTypes); // Return them as JSON
    }
    
}


