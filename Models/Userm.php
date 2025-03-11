<?php
namespace App\Models;

use CodeIgniter\Model;

class Userm extends Model
{
    protected $table = 'user';
    protected $primaryKey = 'id';
    protected $allowedFields = ['name', 'firstname', 'lastname', 'usertype', 'shift_type'];
    
    public function getUser()
    {
        $builder = $this->db->table('user');  
    
        // Select user details along with shift names
        $builder->select('user.id, user.name, user.shift_type, shift.shift_name');  
        $builder->join('shift', 'user.shift_type = shift.id', 'left'); // Proper JOIN condition
        $builder->whereIn('shift.id', [1, 2]); // Fetch only "Day Shift" and "Night Shift"
        $builder->limit(2); // ✅ Correctly applied `limit()` on `$builder`
    
        $query = $builder->get();
        return $query->getResult(); // Return array of objects
    }
    
}


?>
