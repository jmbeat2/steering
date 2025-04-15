<?php
namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\AnnouncementModel;
use App\Models\EmployeeModel;
use App\Models\AttendanceModel;
use App\Models\OrderSummaryModel;
use App\Models\PerformanceModel;
use App\Models\ManpowerModel;
use App\Models\defectsModel;

class Dashboard extends Controller
{

    public function __construct()
    {
        $this->db = \Config\Database::connect();
    }
    
    public function index()
    {

        if (!session()->get('logged_in')) {
            return redirect()->to('/login')->with('error', 'You need to login first.');
        }
        

        $employeeModel = new EmployeeModel();
        $attendanceModel = new AttendanceModel();
        $orderModel = new OrderSummaryModel();
        $performanceModel = new PerformanceModel();
        $manpowerModel = new ManpowerModel();

        $setting = $this->db->table('global_settings')->where('id', 1)->get()->getRow();

        // Define the $data array correctly
        $data = [
            'employees' => $employeeModel->findAll(),
            'attendance' => $attendanceModel->findAll(),
            'category_toggle' => $setting->category_toggle ?? 0,  // Correctly assign category_toggle
            'title' => 'Dashboard',
        ];

        return view('dashboard', $data);

    }
}
?>
