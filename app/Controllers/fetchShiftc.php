<?php

namespace App\Controllers;

use App\Models\fetchShiftm;

class fetchShiftc extends BaseController
{
    public function __construct()
    {
        $this->model = new fetchShiftm();  // Initialize the Shift model
    }

    // This method fetches all shift types (shift_code, shift_name)
    public function fetchShiftTypes()
    {
        $shiftTypes = $this->model->getAllShiftTypes(); // Fetch shift types from the model
        return $this->response->setJSON($shiftTypes); // Return them as JSON
    }
}
