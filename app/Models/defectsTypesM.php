<?php
namespace App\Models;
use CodeIgniter\Model;

class defectsTypesM extends Model
{
    protected $table = 'defects_type';
    protected $primaryKey = 'id';
    protected $allowedFields = ['type'];

    public function getDefectTypes()
    {
        return $this->select('id, type')->findAll(); // Fetch id and defect_type columns
    }
    
}

