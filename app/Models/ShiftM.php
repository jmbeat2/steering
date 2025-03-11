<?php
namespace App\Models;

use CodeIgniter\Model;

class ShiftM extends Model
{
    protected $table = 'user';
    protected $primaryKey = 'id';
    protected $allowedFields = ['id', 'name', 'shift_type']; // Adjust as per your user table structure

    public function getShift($shiftCode)
    {
        $builder = $this->db->table('user');
    
        // Select user details along with their shift
        $builder->select('user.id, user.name, shift.shift_name');
        $builder->join('shift', 'user.shift_type = shift.id', 'left');
    
        // Ensure filtering by selected shift
        $builder->where('user.shift_type', $shiftCode);
    
        $query = $builder->get();
        return $query->getResult();
    }

    
    
    
    
    
    

}



?>
