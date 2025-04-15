<?php

namespace App\Controllers;

use App\Models\EmployeeSkillsModel;
use CodeIgniter\RESTful\ResourceController;

class empSkills extends ResourceController
{
    protected $modelName = 'App\Models\EmployeeSkillsBreakdownModel';
    protected $format    = 'json';

    // Fetch all records
    public function index()
    {
        if (!session()->get('logged_in')) {
            return redirect()->to('/login')->with('error', 'You need to login first.');
        }
        
        return $this->respond($this->model->getAllTitles());
    }

    // Create new title
    public function create()
    {
        $data = $this->request->getJSON();
        if ($this->model->createTitle($data)) {
            return $this->respondCreated(['status' => 'success', 'message' => 'Title added successfully']);
        }
        return $this->fail('Failed to create title', 400);
    }

    // Update title by ID
    public function updateTitle($id)
    {
        $data = $this->request->getJSON();
        if ($this->model->updateTitle($id, $data)) {
            return $this->respond(['status' => 'success', 'message' => 'Title updated successfully']);
        }
        return $this->fail('Failed to update title', 400);
    }

    // Delete title by ID
    public function deleteTitle($id)
    {
        if ($this->model->deleteTitle($id)) {
            return $this->respondDeleted(['status' => 'success', 'message' => 'Title deleted successfully']);
        }
        return $this->fail('Failed to delete title', 400);
    }

    public function getTitle()
    {
        $model = new EmployeeSkillsModel();
        $titleData = $model->select('title')->first();

        return $this->response->setJSON($titleData ?: ['title' => 'Employee Skills Breakdown']);
    }

    public function updateTitle1()
    {
        $json = $this->request->getJSON();
        $title = $json->title ?? null;
        
        if ($title) {
            $model = new \App\Models\EmployeeSkillsModel();
    
            // Fetch the current title before updating
            $currentTitle = $model->getCurrentTitle();
    
            // Update the title using the model method
            $model->updateTitle1($title);
    
            // Prepare description for the activity log
            $description = "
                <div class='text-start'>
                    <div class='mb-2'>
                        <strong>Updated by:</strong> <em class='text-muted'>" . session()->get('fullname') . "</em>
                    </div>
                    <div class='mt-2'>
                        <div class='mb-1'><strong>Old Title:</strong> <span class='text-danger'>" . $currentTitle . "</span></div>
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
            session()->setFlashdata('message', 'Title successfully updated!');
            session()->setFlashdata('message_type', 'success');
    
            return $this->response->setJSON(['status' => 'success']);
        }
        
        // Fallback error response
        return $this->response->setJSON(['status' => 'error', 'message' => 'Invalid title']);

        exit();
    }
    
    

    public function getTitle1()
    {
        $model = new EmployeeSkillsModel();
        $titleData = $model->getTitleFromTitle2(); // Change this method call
    
        // Return the title or a default message if not found
        return $this->response->setJSON($titleData ?: ['title' => 'Employee Skills Breakdown']);
    }
    


}
