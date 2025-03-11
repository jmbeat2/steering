<?php

namespace App\Models;

use CodeIgniter\Model;

class CrosstrainM extends Model
{
    protected $table      = 'cs';          // Table name
    protected $primaryKey = 'id';          // Primary key column
    protected $allowedFields = ['crosstrain', 'skilled']; // Allowed fields

    public function getAllData()
    {
        $data = $this->findAll();
        log_message('debug', 'Crosstrain and Skilled data: ' . print_r($data, true)); // Logs the data to the log
        return $data;
    }
}
