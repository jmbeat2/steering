<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\Empusersm; // Load user model

class Empusersc extends Controller
{
    public function __construct()
    {
        helper(['url', 'form']);
        session(); // Start session
    }

    public function index()
    {
        return view('login/login'); // Ensure 'app/Views/login/login.php' exists
    }

    public function authenticate()
    {
        try {
            $employee_id = $this->request->getPost('employee_id');
            $password = $this->request->getPost('password');
    
            if (!$employee_id || !$password) {
                return $this->response->setJSON(['success' => false, 'error' => 'Employee ID and password are required']);
            }
    
            $model = new Empusersm();
            $user = $model->verifyUser($employee_id, $password);
    
            if (!$user) {
                return $this->response->setJSON(['success' => false, 'error' => 'Invalid credentials']);
            }
    
            // Set session
            session()->set([
                'employee_id' => $user['employee_id'],
                'username' => $user['username'],
                'user_type' => $user['user_type'],
                'fullname' => $user['fullname'],
                'fname' => $user['fname'],
                'mname' => $user['mname'],
                'lname' => $user['lname'],
                'id_shift' => $user['id_shift'],
                'logged_in' => true
            ]);
    
            // Regenerate CSRF token after login
            $newCsrfToken = csrf_hash();
    
            return $this->response->setJSON([
                'success' => true,
                'csrf_token' => $newCsrfToken
            ]);
    
        } catch (\Exception $e) {
            log_message('critical', 'Login Error: ' . $e->getMessage());
            return $this->response->setJSON(['success' => false, 'error' => 'Server error']);
        }
    }
    

    public function logout()
    {
        session()->destroy(); // Destroy session
        return redirect()->to('/login')->with('message', 'Logged out successfully');
    }
}
