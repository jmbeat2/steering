<?php

namespace App\Controllers;

use App\Models\Inprocessm;

class Inprocessc extends BaseController
{
    public function __construct()
    {
        $this->model = new Inprocessm();
    }

    public function getDefectAssignments()
    {
        $model = new Inprocessm();
        $wrongInsert = $model->getDefectAssignments('WRONG INSERT');
        $notFullyInserted = $model->getDefectAssignments('NOT FULLY INSERTED');
    
        // Debugging: Log the response
        return $this->response->setJSON([
            'wrong_insert' => $wrongInsert,
            'not_fully_inserted' => $notFullyInserted
        ]);
    }
    
}
