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
        $wrongInsert = $model->getDefectAssignments(1);  // Duty = 1
        $notFullyInserted = $model->getDefectAssignments(2);  // Duty = 2

        // Debugging: Log the response
        log_message('debug', 'Returning JSON Response: ' . print_r([
            'wrong_insert' => $wrongInsert,
            'not_fully_inserted' => $notFullyInserted
        ], true));

        return $this->response->setJSON([
            'wrong_insert' => $wrongInsert ?? [],
            'not_fully_inserted' => $notFullyInserted ?? []
        ]);
    }
}
