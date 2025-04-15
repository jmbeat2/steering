<?php
namespace App\Models;
use CodeIgniter\Model;

class defectsModel extends Model
{
    protected $table = 'defects';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'id','encodeby','defect_type', 'defect_date', 'count', 'id_shift', 'name', 'empid'
    ];
}