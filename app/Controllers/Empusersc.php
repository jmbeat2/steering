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
                return $this->response->setJSON([
                    'success' => false,
                    'error' => 'Employee ID and password are required'
                ]);
            }
    
            $model = new Empusersm();
            $user = $model->verifyUser($employee_id, $password);
    
            if (!$user) {
                session()->setFlashdata('error', 'Invalid credentials');
                return $this->response->setJSON([
                    'success' => false,
                    'error' => 'Invalid Employee ID or Password'
                ]);
            }
    
            // Set session
            session()->set([
                'employee_id' => $user['employee_id'],
                'username'    => $user['username'],
                'user_type'   => $user['user_type'],
                'fullname'    => $user['fullname'],
                'fname'       => $user['fname'],
                'mname'       => $user['mname'],
                'lname'       => $user['lname'],
                'id_shift'    => $user['id_shift'],
                'duty'        => $user['duty'],
                'logged_in'   => true
            ]);
            // Regenerate CSRF token after login
            $newCsrfToken = csrf_hash();
    
            return $this->response->setJSON([
                'success'    => true,
                'csrf_token' => $newCsrfToken
            ]);
    
        } catch (\Exception $e) {
            log_message('critical', 'Login Error: ' . $e->getMessage());
            session()->setFlashdata('error', 'An unexpected error occurred. Please try again.');
    
            return $this->response->setJSON([
                'success' => false,
                'error'   => 'Server error'
            ]);
        }
    }
    
    

    public function logout()
    {
        // Get the employee_id from the session
        $employee_id = session()->get('employee_id'); 
    
        // Destroy the session
        session()->destroy(); 
    
        // Redirect to the login page with a success message
        return redirect()->to('/login')->with('message', 'Logged out successfully');
    }
    
}
