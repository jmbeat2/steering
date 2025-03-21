<?php

namespace App\Controllers;

use App\Models\DefectModel;
use CodeIgniter\RESTful\ResourceController;

class defects_types extends ResourceController
{
    public function index()
    {
        return view('dashboard');
    }

    public function fetchDefectSummary()
    {
        $defectModel = new DefectModel();
        $data = $defectModel->getDefectSummary();

        return $this->response->setJSON($data);
    }
}
