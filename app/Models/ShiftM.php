<?php
namespace App\Models;

use CodeIgniter\Model;

class ShiftM extends Model
{
    protected $table = 'user';
    protected $primaryKey = 'id';
    protected $allowedFields = ['id', 'name', 'shift_type']; // Adjust as per your user table structure

    public function getShift()
    {
        $builder = $this->db->table('shift');  
    
        // Select specific columns
        $builder->select('id, shift_code, shift_name');  
    
        // Filter only "Day Shift" and "Night Shift" (assuming IDs are 1 and 2)
        $builder->whereIn('id', [1, 2]); 
    
        $query = $builder->get();
        return $query->getResult(); // Return as an array of objects
    }

    
    
    
    
    
    

}



?>
