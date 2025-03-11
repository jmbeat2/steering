<?php

namespace App\Models;

use CodeIgniter\Model;

class Empusersm extends Model
{
    protected $table = 'users';
    protected $primaryKey = 'id';
    protected $allowedFields = ['employee_id', 'username', 'password'];

    public function verifyUser($employee_id, $password)
    {
        $hashed_password = md5($password); // Hash the input password before checking
    
        return $this->where('employee_id', $employee_id)
                    ->where('password', $hashed_password)
                    ->first();
    }
    
}
