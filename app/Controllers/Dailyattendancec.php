<?php

namespace App\Controllers;

use App\Models\Dailyattendancem;

class Dailyattendancec extends BaseController
{
    protected $Dailyattendancem;

    // Constructor to load the model
    public function __construct()
    {
        $this->Dailyattendancem = new Dailyattendancem();
    }

    // Show all attendance data (index page)
    public function getAttendanceData()
    {
        $attendanceData = $this->Dailyattendancem->getAllAttendance();
        return $this->response->setJSON($attendanceData);
    }
    
}