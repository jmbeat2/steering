<?php

namespace App\Models;

use CodeIgniter\Model;

class ActivityLogModel extends Model
{
    protected $table = 'activity_logs';
    protected $primaryKey = 'id';
    protected $useSoftDeletes = true;
    protected $deletedField  = 'deleted_at';
    protected $allowedFields = ['user_id', 'action_type', 'action_description', 'ip_address', 'user_agent', 'created_at'];

    /**
     * Get the latest activity logs
     * 
     * @param int $limit The number of logs to fetch
     * @return array The latest activity logs
     */
    public function getLatestLogs()
    {
        // Fetch latest logs sorted by created_at descending
        return $this->orderBy('created_at', 'DESC')->findAll();
    }

    public function restoreLog($id)
    {
        // You can directly update the `deleted_at` field to NULL to restore it
        return $this->update($id, ['deleted_at' => null]);
    }

}
