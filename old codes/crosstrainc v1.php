<?php

namespace App\Controllers;

use App\Models\CrosstrainM;

class Crosstrainc extends BaseController
{
    public function index()
    {
        $model = new CrosstrainM();
        
        // Fetch all Crosstrain and Skilled data
        $data = $model->getAllData();
        
        // Log the data for debugging
        log_message('debug', 'Returned Crosstrain and Skilled data: ' . print_r($data, true));
        
        // Return data in JSON format
        return $this->response->setJSON($data);
    }
}
