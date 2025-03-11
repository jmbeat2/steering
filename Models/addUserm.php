<?php
namespace App\Models;

use CodeIgniter\Model;

class addUserm extends Model
{
    protected $table = 'user'; // Your users table name
    protected $primaryKey = 'id';
    protected $allowedFields = ['name', 'firstname', 'middlename', 'lastname', 'shift_type', 'date'];
}
