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

    public function getOperatorName()
    {
        $db = \Config\Database::connect();
        $builder = $db->table('operators');

        return $builder->select('id, fullname')->get()->getResultArray();
    }

    public function fetchShifts()
    {
        $db = \Config\Database::connect();
        $builder = $db->table('shift');

        return $builder->select('id, shift_name')->get()->getResultArray();
    }

    public function getOperatorsByShift($shiftId)
    {
        return $this->db->table('operators')
                        ->where('duty', $shiftId)
                        ->get()
                        ->getResult();
    }
    

    
}

