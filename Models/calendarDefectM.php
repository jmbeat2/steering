<?php

namespace App\Models;

use CodeIgniter\Model;

class calendarDefectM extends Model
{
    protected $table = 'defects';
    protected $primaryKey = 'id';
    protected $allowedFields = ['defect_type', 'name', 'defect_date', 'count', 'created_at'];

    
}
