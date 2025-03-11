<?php

namespace App\Models;

use CodeIgniter\Model;

class fetchShiftm extends Model
{
    protected $table = 'shift';  // Table where shift types are stored
    protected $primaryKey = 'id';  // Primary key of the shift table
    protected $allowedFields = ['id', 'shift_code', 'shift_name'];  // Fields of the shift table

    // Method to fetch all shift types (shift_code and shift_name)
    public function getAllShiftTypes()
    {
        // Fetch all shift types from the shift table
        return $this->findAll(); // You can customize this if you want specific fields or conditions
    }
}
