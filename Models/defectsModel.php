<?php
namespace App\Models;
use CodeIgniter\Model;

class defectsModel extends Model
{
    protected $table = 'defects';
    protected $primaryKey = 'id';
    protected $allowedFields = ['name' ,'defect_type', 'defect_date', 'count', 'created_at'];
}