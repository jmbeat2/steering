<?php

namespace App\Models;

use CodeIgniter\Model;

class addAttendancem extends Model
{
    protected $table = 'daily_attendance';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'date', 'ds_count', 'ns_count', 'total_mp',
        'rate', 'sl', 'vl', 'nu', 'created_at', 'updated_at'
    ];
    protected $useTimestamps = true;
    protected $createdField = 'created_at';
    protected $updatedField = 'updated_at';

    // Validation rules (Optional)
    protected $validationRules = [
        'date'     => 'required|valid_date',
        'ds_count' => 'required|is_natural',
        'ns_count' => 'required|is_natural',
        'total_mp' => 'required|is_natural',
        'rate'     => 'required|decimal',
        'sl'       => 'required|is_natural',
        'vl'       => 'required|is_natural',
        'nu'       => 'required|is_natural'
    ];

    // Save or update attendance data
    public function saveAttendanceData($data)
    {
        return $this->db->table('daily_attendance')  // Replace 'attendance' with your actual table name
                        ->insert($data);
    }
    

    // Update attendance data by ID
    public function updateAttendanceData($id, $data)
    {
        return $this->update($id, $data);
    }

    // Get attendance data by ID
    public function getAttendanceById($id)
    {
        return $this->find($id);
    }

    // Delete attendance record by ID
    public function deleteAttendance($id)
    {
        return $this->delete($id);
    }
}
