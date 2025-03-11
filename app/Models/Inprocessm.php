<?php

namespace App\Models;

use CodeIgniter\Model;

class Inprocessm extends Model
{
    protected $table = 'user'; // Ensure this is your actual table name
    protected $primaryKey = 'id';
    protected $allowedFields = ['firstname', 'middlename', 'lastname', 'shift_type', 'date', 'duty'];

    public function getDefectAssignments($duty)
    {
        $query = $this->where('duty', $duty)
                      ->select('lastname, duty')
                      ->findAll();

        // Log results to check if we are getting data
        log_message('debug', 'SQL Query Result for duty ' . $duty . ': ' . print_r($query, true));

        return $query;
    }
}
