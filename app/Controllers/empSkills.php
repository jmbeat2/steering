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
}
