<?php

namespace App\Controllers;

use App\Models\CrosstrainM;
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
      
}
