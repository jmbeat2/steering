<?php

namespace App\Controllers;

use App\Models\defectsTypesM;

class Defectstype extends BaseController
{
    public function __construct()
    {
        $this->model = new defectsTypesM();
    }

    // Method to fetch defect types via AJAX
    public function getDefectTypes()
    {
        $defectTypes = $this->model->getDefectTypes();
        return $this->response->setJSON($defectTypes);
    }

    public function getDefectAssignments()
    {
        $model = new defectsTypesM();
        $wrongInsertAssignments = $model->getDefectAssignments('WRONG INSERT');

        return $this->response->setJSON($wrongInsertAssignments);
    }
}
