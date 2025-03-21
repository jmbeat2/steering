<?php
namespace App\Models;

use CodeIgniter\Model;

class addUserm extends Model
{
    protected $table = 'users'; // Table name
    protected $primaryKey = 'id'; // Primary key column

    protected $allowedFields = [
        'employee_id', 'fname', 'mname', 'lname', 'fullname', 'user_type', 'id_shift', 'password'
    ]; 

    protected $useTimestamps = true; // If using timestamps
    protected $createdField  = 'created_at'; // Created field
    protected $updatedField  = 'updated_at'; // Updated field

    public function updateUser($id, $data)
    {
        // Ensure 'fullname' is updated with the correct concatenation of name fields
        $data['fullname'] = $data['fname'] . ' ' . $data['mname'] . ' ' . $data['lname'];
    
        // Now use the built-in update() method to update the record
        return $this->update($id, $data); // $id is the user ID, $data is the data array with updated values
    }
    
}



