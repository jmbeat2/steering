<?php
namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\AnnouncementModel;
use App\Models\EmployeeModel;
use App\Models\AttendanceModel;
use App\Models\OrderSummaryModel;
use App\Models\PerformanceModel;
use App\Models\ManpowerModel;

class Dashboard extends Controller
{
    public function index()
    {

        if (!session()->get('logged_in')) {
            return redirect()->to('/login')->with('error', 'You need to login first.');
        }
        
        $announcementModel = new AnnouncementModel();
        $employeeModel = new EmployeeModel();
        $attendanceModel = new AttendanceModel();
        $orderModel = new OrderSummaryModel();
        $performanceModel = new PerformanceModel();
        $manpowerModel = new ManpowerModel();

        $data = [
            'announcements' => $announcementModel->findAll(),
            'employees' => $employeeModel->findAll(),
            'attendance' => $attendanceModel->findAll(),
            'orders' => $orderModel->findAll(),
            'performance' => $performanceModel->findAll(),
            'manpower' => $manpowerModel->findAll(),
            'title' => 'Dashboard',
        ];

        return view('dashboard', $data);
    }
}
?>
