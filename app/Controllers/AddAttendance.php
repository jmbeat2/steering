<?php

namespace App\Controllers;

use App\Models\AddAttendancem;

class AddAttendance extends BaseController
{
    protected $AddAttendancem;

    public function __construct()
    {
        $this->AddAttendancem = new AddAttendancem();
    }

    public function index ()
    {
        return view('attendance');
    }

    // Add Attendance
    public function add()
    {
        // Capture data from POST request
        $data = [
            'date'      => $this->request->getPost('date'),
            'ds_count'  => $this->request->getPost('ds_count'),
            'ns_count'  => $this->request->getPost('ns_count'),
            'total_mp'  => $this->request->getPost('total_mp'),
            'rate'      => $this->request->getPost('rate'),
            'sl'        => $this->request->getPost('sl'),
            'vl'        => $this->request->getPost('vl'),
            'nu'        => $this->request->getPost('nu'),
        ];
    
        // Ensure the data is not empty (validation could be added here)
        if (empty($data['date']) || empty($data['ds_count']) || empty($data['ns_count'])) {
            return $this->response->setJSON([
                'status' => 'error',
                'message' => 'Missing required fields!'
            ]);
        }
    
        // Insert the data using the model
        if ($this->AddAttendancem->saveAttendanceData($data)) {
            return $this->response->setJSON([
                'status' => 'success',
                'message' => 'Attendance added successfully'
            ]);
        } else {
            return $this->response->setJSON([
                'status' => 'error',
                'message' => 'Failed to add attendance'
            ]);
        }
    }
    

    // Update Attendance
    public function update($id)
    {
        $data = [
            'date'      => $this->request->getPost('date'),
            'ds_count'  => $this->request->getPost('ds_count'),
            'ns_count'  => $this->request->getPost('ns_count'),
            'total_mp'  => $this->request->getPost('total_mp'),
            'rate'      => $this->request->getPost('rate'),
            'sl'        => $this->request->getPost('sl'),
            'vl'        => $this->request->getPost('vl'),
            'nu'        => $this->request->getPost('nu'),
        ];
    
        // Check if the attendance record exists before updating
        $attendance = $this->AddAttendancem->find($id);
        if (!$attendance) {
            return $this->response->setJSON([
                'status' => 'error',
                'message' => 'Attendance record not found'
            ]);
        }
    
        // Try to update attendance
        if ($this->AddAttendancem->updateAttendanceData($id, $data)) {
            return $this->response->setJSON([
                'status' => 'success',
                'message' => 'Attendance updated successfully'
            ]);
        } else {
            return $this->response->setJSON([
                'status' => 'error',
                'message' => 'Failed to update attendance'
            ]);
        }
    }
    

    // Get Attendance Data for DataTable
    // public function getAttendanceData()
    // {
    //     $attendance = $this->AddAttendancem->findAll();
    //     return $this->response->setJSON([
    //         'data' => $attendance
    //     ]);
    // }

    public function getAttendanceData()
    {
        $model = new AddAttendancem();
        $totalRecords = $model->countAll();
        $offset = $this->request->getVar('start') ?? 0;
        $at = $model->findAll( $offset);

        return $this->response->setJSON([
            'draw' => $this->request->getVar('draw'),
            'recordsTotal' => $totalRecords,
            'recordsFiltered' => $totalRecords,
            'data' => $at
        ]);
    }

    

    // Get Attendance by ID (for Edit)
    public function view($id)
    {
        $attendance = $this->AddAttendancem->getAttendanceById($id);
        if ($attendance) {
            return $this->response->setJSON($attendance);
        } else {
            return $this->response->setStatusCode(404, 'Record not found');
        }
    }

    // Delete Attendance
    public function delete($id)
    {
        // CSRF check or any other necessary validation can go here
    
        // Attempt to delete the attendance record with the given ID
        if ($this->AddAttendancem->deleteAttendance($id)) {
            return $this->response->setJSON([
                'status' => 'success',
                'message' => 'Attendance record deleted successfully!'
            ]);
        } else {
            return $this->response->setJSON([
                'status' => 'error',
                'message' => 'Failed to delete the attendance record.'
            ]);
        }
    }
    
}
