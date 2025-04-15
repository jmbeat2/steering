<?php

namespace App\Controllers;

use App\Models\defectsTypesM;

class Defectstype extends BaseController
{
    public function __construct()
    {
        if (!session()->get('logged_in')) {
            return redirect()->to('/login')->with('error', 'You need to login first.');
        }
        
        $this->model = new defectsTypesM();
        
    }

    // Method to fetch defect types via AJAX
    public function getDefectTypes()
    {
        $defectTypes = $this->model->getDefectTypes();
        return $this->response->setJSON($defectTypes);
    }

    public function getName()
    {
        $opname = $this->model->getOperatorName();
        return $this->response->setJSON($opname);
    }

    public function getShift()
    {
        $shifts = $this->model->fetchShifts();
        return $this->response->setJSON($shifts);
    }
}
