<?php

namespace App\Controllers;

use App\Models\DefectModel;
use CodeIgniter\RESTful\ResourceController;

class defects_types extends ResourceController
{
    public function index()
    {
        if (!session()->get('logged_in')) {
            return redirect()->to('/login')->with('error', 'You need to login first.');
        }
        
        return view('dashboard');
    }

    public function fetchDefectSummary()
    {
        $defectModel = new DefectModel();
        $data = $defectModel->getDefectSummary();

        return $this->response->setJSON($data);
    }
}
