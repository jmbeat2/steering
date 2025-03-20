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

    public function index()
    {
        if (!session()->get('logged_in')) {
            return redirect()->to('/login')->with('error', 'You need to login first.');
        }

        $data = [
            'title' => 'Option | Add Attendance',
            'message' => session()->getFlashdata('message'),
            'message_type' => session()->getFlashdata('message_type')
        ];
        
        return view('attendance', $data);
    }

    public function add()
    {
        // Prepare data for insertion or update
        $data = [
            'date'      => $this->request->getPost('date'),
            'ds_count'  => $this->request->getPost('ds_count'),
            'ns_count'  => $this->request->getPost('ns_count'),
            'total_mp'  => $this->request->getPost('total_mp'),
            'rate'      => $this->request->getPost('rate'),
            'sl'        => $this->request->getPost('sl'),
            'vl'        => $this->request->getPost('vl'),
            'nu'        => $this->request->getPost('nu')
        ];
    
        // Check if an ID exists for updating, else insert a new record
        if ($this->request->getPost('id')) {
            $this->AddAttendancem->update($this->request->getPost('id'), $data);
            session()->setFlashdata('message', 'Record updated successfully!');
        } else {
            $this->AddAttendancem->insert($data);
            session()->setFlashdata('message', 'Record added successfully!');
        }
    
        // Set flash message type as success
        session()->setFlashdata('message_type', 'success');
        
        // Redirect to the addAttendance page
        return $this->response->setJSON(['status' => 'success', 'message' => 'Attendance added successfully']);
    }
    

    public function update($id)
    {
        // Check if the record exists
        if (!$this->AddAttendancem->find($id)) {
            return $this->response->setJSON(['status' => 'error', 'message' => 'Record not found']);
        }
    
        // Prepare data for update
        $data = [
            'date'      => $this->request->getPost('date'),
            'ds_count'  => $this->request->getPost('ds_count'),
            'ns_count'  => $this->request->getPost('ns_count'),
            'total_mp'  => $this->request->getPost('total_mp'),
            'rate'      => $this->request->getPost('rate'),
            'sl'        => $this->request->getPost('sl'),
            'vl'        => $this->request->getPost('vl'),
            'nu'        => $this->request->getPost('nu')
        ];
    
        // Update the record
        $this->AddAttendancem->update($id, $data);
    
        // Set flash data for success message
        session()->setFlashdata('message', 'Record updated successfully!');
        session()->setFlashdata('message_type', 'success');
    
        // Return success response as JSON
        return $this->response->setJSON(['status' => 'success', 'message' => 'Attendance updated successfully']);
    }
    

    public function getAttendanceData()
    {
        $model = new AddAttendancem();
        $attendance = $model->findAll();
    
        return $this->response->setJSON([
            'draw' => $this->request->getVar('draw'),
            'recordsTotal' => count($attendance),
            'recordsFiltered' => count($attendance),
            'data' => $attendance
        ]);
    }

    public function view($id)
    {
        $attendance = $this->AddAttendancem->find($id);
        if ($attendance) {
            return $this->response->setJSON($attendance);
        }
        return $this->response->setStatusCode(404, 'Record not found');
    }

    public function delete($id)
    {
        if ($this->AddAttendancem->delete($id)) {
            session()->setFlashdata('message', 'Record deleted successfully!');
            session()->setFlashdata('message_type', 'success');
        } else {
            session()->setFlashdata('message', 'Failed to delete record.');
            session()->setFlashdata('message_type', 'error');
        }
        return $this->response->setJSON(['status' => 'success', 'message' => 'Attendance deleted! successfully']);
    }
}