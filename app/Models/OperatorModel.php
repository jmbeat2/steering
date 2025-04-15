<?php
namespace App\Models;
use CodeIgniter\Model;

class OperatorModel extends Model
{
    protected $table = 'operators';
    protected $primaryKey = 'id';
    protected $allowedFields = ['employee_id', 'fullname', 'fname', 'mname', 'lname', 'shift_id', 'authorized'];

    public function deleteOperator($id)
    {
        return $this->delete($id);  // This deletes the record based on the primary key
    }
    
}
