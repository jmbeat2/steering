<?php

namespace App\Models;

use CodeIgniter\Model;

class Inprocessm extends Model
{
    protected $table = 'user'; // Ensure this is your actual table name
    protected $primaryKey = 'id';
    protected $allowedFields = ['firstname', 'middlename', 'lastname', 'shift_type', 'date'];

    public function getDefectAssignments($shiftType)
    {
        $query = $this->where('shift_type', $shiftType)
                      ->select('lastname, duty')
                      ->findAll();
    
        // Log results to check if we are getting data
        log_message('debug', 'SQL Query Result: ' . print_r($query, true));
    
        return $query;
    }
    
    
}
