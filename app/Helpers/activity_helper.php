<?php
use App\Models\ActivityLogModel;

if (!function_exists('log_activity')) {
    function log_activity($employee_id, $action_type, $description)
    {
        $model = new ActivityLogModel();

        $employee_id = session()->get('employee_id');

        // Default to REMOTE_ADDR if no headers are found
        $ip_address = $_SERVER['REMOTE_ADDR'] ?? 'CLI';

        // Check for X-Forwarded-For and X-Real-IP headers for real client IP
        if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ip_address = explode(',', $_SERVER['HTTP_X_FORWARDED_FOR'])[0];
        } elseif (isset($_SERVER['HTTP_X_REAL_IP'])) {
            $ip_address = $_SERVER['HTTP_X_REAL_IP'];
        }

        // Use gethostbyaddr() to resolve the IP address to a hostname
        $hostname = gethostbyaddr($ip_address);

        // If hostname resolution fails, fall back to IP address
        $resolved_ip = ($hostname == $ip_address) ? $ip_address : $hostname;

        
        // Insert log entry into the database
        $model->insert([
            'user_id'            => $employee_id,
            'action_type'        => $action_type,
            'action_description' => $description,
            'ip_address'         => $resolved_ip,
            'user_agent'         => $_SERVER['HTTP_USER_AGENT'] ?? 'Unknown',
        ]);
    }
}





