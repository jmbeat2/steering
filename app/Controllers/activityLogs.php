<?php

namespace App\Controllers;

use App\Models\ActivityLogModel;

class ActivityLogs extends BaseController
{
    protected $activityLogModel;

    public function __construct()
    {
        // Load the model
        $this->activityLogModel = new ActivityLogModel();
        
    }

    public function index()
    {
        // Return the main page view
        $db = \Config\Database::connect();
        $setting = $db->table('global_settings')->where('id', 1)->get()->getRow();


        $data = [
            'title' => 'Admin logs',
            'category_toggle' => $setting->category_toggle ?? 0,

        ];
        return view('option/logs', $data);
    }

    public function fetchLogs()
    {
        // Load the ActivityLogModel
        $activityLogModel = new ActivityLogModel();
        
        // Fetch the latest 100 logs using the model's custom method
        $logs = $activityLogModel->getLatestLogs(100);

        // Debug log for checking what’s returned
        log_message('debug', 'Returned Activity Logs: ' . print_r($logs, true));

        // Return the logs as a JSON response
        return $this->response->setJSON(['logs' => $logs]);
    }
    
    public function restoreLog($id)
    {
        $model = new ActivityLogModel();

        // Attempt to restore the log entry
        if ($model->restoreLog($id)) {
            return redirect()->to('/activityLogs')->with('success', 'Log restored successfully.');
        } else {
            return redirect()->to('/activityLogs')->with('error', 'Failed to restore log.');
        }
    }

    public function indexdb ()
    {
        $db = \Config\Database::connect();
        $setting = $db->table('global_settings')->where('id', 1)->get()->getRow();
        
        $data = [
            'title' => 'Database',
            'category_toggle' => $setting->category_toggle ?? 0,

        ];
        
        return view('option/logs', $data);
    }
}




