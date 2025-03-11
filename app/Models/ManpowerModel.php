<?php
namespace App\Models;

use CodeIgniter\Model;

class ManpowerModel extends Model
{
    protected $table = 'manpower';
    protected $primaryKey = 'id';
    protected $allowedFields = ['name', 'department', 'role'];
}
?>
