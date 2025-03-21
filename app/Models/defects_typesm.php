<?php

namespace App\Models;

use CodeIgniter\Model;

class defects_typesm extends Model
{
    protected $table = 'defects_type'; // Table name
    protected $primaryKey = 'id';
    protected $allowedFields = ['type'];

    // Fetch all defect types and their logged count (including defects with 0 count)
    public function getDefectSummary()
    {
        $db = \Config\Database::connect();
        $query = $db->query("
            SELECT d.id, d.type, 
                   COALESCE(COUNT(ld.id), 0) AS defect_count
            FROM defects_type d
            LEFT JOIN logged_defects ld ON d.id = ld.defect_type_id
            GROUP BY d.id, d.type
            ORDER BY d.id ASC
        ");
        return $query->getResultArray();
    }
}
