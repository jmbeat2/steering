<?php

namespace App\Controllers;

use App\Models\CrosstrainModel;

class CrosstrainController extends BaseController
{
    public function index()
    {
        $model = new CrosstrainModel();
        
        // Fetch all Crosstrain and Skilled data
        $data = $model->getAllData();

        // Return data in JSON format
        return $this->response->setJSON($data);
    }
}
