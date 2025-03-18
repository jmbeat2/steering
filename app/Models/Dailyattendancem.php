<?php

namespace App\Models;

use CodeIgniter\Model;

class Dailyattendancem extends Model
{
    protected $table = 'daily_attendance';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'date', 'ds_count', 'ns_count', 'total_mp', 'rate', 'sl', 'vl', 'nu'
    ];
    protected $useTimestamps = true;

    // Get all daily attendance data
    public function getAllAttendance()
    {
        return $this->orderBy('updated_at', 'DESC')->findAll();
    }
    

    // Get a specific attendance record by date
    public function getAttendanceByDate($date)
    {
        return $this->where('date', $date)->first();
    }

    // Insert or update attendance data
    public function saveAttendanceData($data)
    {
        return $this->save($data); // Will insert if data doesn't exist, or update if it does
    }
}