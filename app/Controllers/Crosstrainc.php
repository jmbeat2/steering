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
        if (!session()->get('logged_in')) {
            return redirect()->to('/login')->with('error', 'You need to login first.');
        }

        $db = \Config\Database::connect();
        $setting = $db->table('global_settings')->where('id', 1)->get()->getRow();
        
        $data = [
            'title' => 'Manage / Crosstrain and Skilled',
            'category_toggle' => $setting->category_toggle ?? 0,

        ];
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
    
        // If we are updating an existing record
        if ($this->request->getPost('id')) {
            $id = $this->request->getPost('id');
            $model->update($id, $data);
            
            // Log the update action
            $description = "
                <div class='text-start'>
                    <div class='mb-2'>
                        <strong>Updated by:</strong> <em class='text-muted'>" . session()->get('fullname') . "</em>
                    </div>
                    <div class='mt-2'>
                        <div class='mb-1'><strong>Crosstrain:</strong> <span class='text-danger'>" . $data['crosstrain'] . "</span></div>
                        <div class='mb-1'><strong>Skilled:</strong> <span class='text-danger'>" . $data['skilled'] . "</span></div>
                    </div>
                </div>
            ";
    
            log_activity(
                session()->get('employee_id'),
                'Updated Crosstrain record',
                $description
            );
    
            session()->setFlashdata('message', 'Record updated successfully!');
            session()->setFlashdata('message_type', 'success');
        } else {
            $model->insert($data);
    
            // Log the add action
            $description = "
                <div class='text-start'>
                    <div class='mb-2'>
                        <strong>Added by:</strong> <em class='text-muted'>" . session()->get('fullname') . "</em>
                    </div>
                    <div class='mt-2'>
                        <div class='mb-1'><strong>Crosstrain:</strong> <span class='text-danger'>" . $data['crosstrain'] . "</span></div>
                        <div class='mb-1'><strong>Skilled:</strong> <span class='text-danger'>" . $data['skilled'] . "</span></div>
                    </div>
                </div>
            ";
    
            log_activity(
                session()->get('employee_id'),
                'Added Crosstrain record',
                $description
            );
    
            session()->setFlashdata('message', 'Record added successfully!');
            session()->setFlashdata('message_type', 'success');
        }

        exit();
    
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
    
        $record = $model->find($id);
    
        if ($record) {
            if ($model->delete($id)) {
                $description = "
                    <div class='text-start'>
                        <div class='mb-2'>
                            <strong>Deleted by:</strong> <em class='text-muted'>" . session()->get('fullname') . "</em>
                        </div>
                        <div class='mt-2'>
                            <div class='mb-1'><strong>Crosstrain:</strong> <span class='text-danger'>" . $record['crosstrain'] . "</span></div>
                            <div class='mb-1'><strong>Skilled:</strong> <span class='text-danger'>" . $record['skilled'] . "</span></div>
                        </div>
                    </div>
                ";
    
                log_activity(session()->get('employee_id'), 'Deleted Crosstrain record', $description);
    
                session()->setFlashdata('message', 'Record deleted successfully!');
                session()->setFlashdata('message_type', 'success');
            } else {
                session()->setFlashdata('message', 'Failed to delete record!');
                session()->setFlashdata('message_type', 'error');
            }
        } else {
            session()->setFlashdata('message', 'Record not found!');
            session()->setFlashdata('message_type', 'error');
        }
    
        exit();
        
        return redirect()->to(base_url('Crosstrainc'));
    }
    

    
    
    
    public function updateTitle()
    {
        $db = \Config\Database::connect();
        $title = $this->request->getPost('title');
        
        // Check if the title is empty
        if (empty($title)) {
            return $this->response->setJSON(['status' => 'error', 'message' => 'Title cannot be empty'])->setStatusCode(400);
        }
    
        // Fetch the current title before updating
        $currentTitle = $db->table('title')->where('id', 2)->get()->getRowArray();
        
        if (!$currentTitle) {
            return $this->response->setJSON(['status' => 'error', 'message' => 'Title record not found'])->setStatusCode(404);
        }
    
        try {
            // Update the title where id = 2
            $db->table('title')->where('id', 2)->update(['title' => $title]);
    
            // Prepare description for the activity log
            $description = "
                <div class='text-start'>
                    <div class='mb-2'>
                        <strong>Updated by:</strong> <em class='text-muted'>" . session()->get('fullname') . "</em>
                    </div>
                    <div class='mt-2'>
                        <div class='mb-1'><strong>Old Title:</strong> <span class='text-danger'>" . $currentTitle['title'] . "</span></div>
                        <div class='mb-1'><strong>New Title:</strong> <span class='text-success'>" . $title . "</span></div>
                    </div>
                </div>
            ";
    
            // Log the update activity
            log_activity(
                session()->get('employee_id'),
                'Updated title record',
                $description
            );
    
            // Set success message and return response
            session()->setFlashdata('success', 'Title updated successfully!');
            return $this->response->setJSON(['status' => 'success', 'message' => 'Title updated successfully!']);
        } catch (\Exception $e) {
            // Handle database errors
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
