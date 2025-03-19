<?php

namespace App\Controllers;

class system extends BaseController
{
    public function index()
    {
        $data = [
            'server' => $this->getServerInfo(),
            'client' => $this->getClientInfo()
        ];

        return view('system_info', $data);
    }

    private function getServerInfo()
    {
        return [
            'Operating System' => PHP_OS,
            'PHP Version' => PHP_VERSION,
            'Server Software' => $_SERVER['SERVER_SOFTWARE'] ?? 'Unknown',
            'Hostname' => gethostname(),
            'Server IP' => gethostbyname(gethostname()),
            'Total Disk Space' => round(disk_total_space("/") / (1024 * 1024 * 1024), 2) . ' GB',
            'Free Disk Space' => round(disk_free_space("/") / (1024 * 1024 * 1024), 2) . ' GB',
            'Memory Limit' => ini_get('memory_limit'),
            'CPU Load' => sys_getloadavg()[0] . '%',
            'Uptime' => shell_exec('uptime') ?: 'Not Available'
        ];
    }

    private function getClientInfo()
    {
        return [
            'Client IP' => $_SERVER['REMOTE_ADDR'] ?? 'Unknown',
            'User Agent' => $_SERVER['HTTP_USER_AGENT'] ?? 'Unknown',
        ];
    }
}
