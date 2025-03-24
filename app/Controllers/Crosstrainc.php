<?php

namespace App\Controllers;

use App\Models\CrosstrainM;
use App\Models\EmployeeSkillsModel;
use CodeIgniter\RESTful\ResourceController;

class Crosstrainc extends ResourceController
{
    public function index()
    {
        $model = new CrosstrainM();
        $data = $model->getAllData();
        log_message('debug', 'Returned Crosstrain and Skilled data: ' . print_r($data, true));
        return $this->response->setJSON($data);
    }

    public function inedexes()
    {
        $data = ['title' => 'as'];
        return view('option/cs', $data);
    }

    public function fetch()
    {
        $model = new CrosstrainM();
        $data = ["data" => $model->findAll()];
        return $this->response->setJSON($data);
    }

    public function save()
    {
        $model = new CrosstrainM();
    
        $data = [
            'crosstrain' => $this->request->getPost('crosstrain'),
            'skilled'    => $this->request->getPost('skilled'),
        ];
    
        if ($this->request->getPost('id')) {
            $model->update($this->request->getPost('id'), $data);
            session()->setFlashdata('message', 'Record updated successfully!');
            session()->setFlashdata('message_type', 'success');
        } else {
            $model->insert($data);
            session()->setFlashdata('message', 'Record added successfully!');
            session()->setFlashdata('message_type', 'success');
        }
    
        // ✅ Debugging: Check if session flashdata is really being set

        exit(); // Stop script to check output
    
        return redirect()->to(base_url('Crosstrainc'));
    }
    
    

    public function get($id = null)
    {
        $model = new CrosstrainM();
        $data = $model->find($id);

        if ($data) {
            return $this->response->setJSON($data);
        } else {
            return $this->failNotFound("Record not found");
        }
    }

    public function delete($id = null)
    {
        $model = new CrosstrainM();
        if ($model->delete($id)) {
            session()->setFlashdata('message', 'Record deleted successfully!');
            session()->setFlashdata('message_type', 'success');
        } else {
            session()->setFlashdata('message', 'Record not found!');
            session()->setFlashdata('message_type', 'error');
        }

        exit(); // Stop script to check output
    
        return redirect()->to(base_url('Crosstrainc')); // Redirect to trigger flashdata on reload
    }

    // public function updateTitle()
    // {
    //     $db = \Config\Database::connect();
    //     $title = $this->request->getPost('title');
    
    //     if (empty($title)) {
    //         session()->setFlashdata('message', 'Title cannot be empty!');
    //         session()->setFlashdata('message_type', 'error');
    //         return redirect()->to(base_url('Crosstrainc'));
    //     }
    
    //     try {
    //         $db->table('title')->where('id', 1)->update(['title' => $title]);
    
    //         session()->setFlashdata('message', 'Title updated successfully!');
    //         session()->setFlashdata('message_type', 'success');
    //     } catch (\Exception $e) {
    //         session()->setFlashdata('message', 'Database error: ' . $e->getMessage());
    //         session()->setFlashdata('message_type', 'error');
    //     }
    
    //     return redirect()->to(base_url('Crosstrainc'));
    // }
    
    public function updateTitle()
    {
        $db = \Config\Database::connect();
        $title = $this->request->getPost('title');
    
        if (empty($title)) {
            return $this->response->setJSON(['status' => 'error', 'message' => 'Title cannot be empty'])->setStatusCode(400);
        }
    
        try {
            // Update the title where id = 1
            $db->table('title')->where('id', 2)->update(['title' => $title]);
    
            session()->setFlashdata('success', 'Title updated successfully!');
            return $this->response->setJSON(['status' => 'success', 'message' => 'Title updated successfully!']);
        } catch (\Exception $e) {
            return $this->response->setJSON(['status' => 'error', 'message' => 'Database error: ' . $e->getMessage()])->setStatusCode(500);
        }
    }
    

    public function getTitle()
    {
        $model = new EmployeeSkillsModel();
        $titleData = $model->select('title')->first();


        return $this->response->setJSON($titleData ?: ['title' => 'Employee Skills Breakdown']);
    }
      
}
