<?php

namespace App\Models;

use CodeIgniter\Model;

class Inprocessm extends Model
{
    protected $table = 'operators'; // Ensure this is your actual table name
    protected $primaryKey = 'id';
    protected $allowedFields = ['firstname', 'middlename', 'lastname', 'id_shift', 'fullname', 'duty','authorized'];

    public function getDefectAssignments($duty)
    {
        $query = $this->where('duty', $duty)
                      ->select('lname, duty, id_shift')
                      ->findAll();

        // Log results to check if we are getting data
        log_message('debug', 'SQL Query Result for duty ' . $duty . ': ' . print_r($query, true));

        return $query;
    }
}
