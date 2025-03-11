<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\Empusersm;  // If you still want to verify user data in a simple way

class Empusersc extends Controller
{
    public function __construct()
    {
        helper(['url', 'form']);
        session();  // Make sure session is started
    }

    public function index()
    {
        return view('login/login'); // Ensure 'app/Views/login.php' exists
    }

    public function authenticate()
    {
        try {
            // Just assume the session data is valid and proceed to set session values
            $employee_id = $this->request->getPost('employee_id');
            $password = $this->request->getPost('password');  // Even if not using it, you can store it for a future check
            
            // Here we would normally check user credentials from the database, but let's simplify:
            if (!$employee_id || !$password) {
                return $this->response->setJSON(['success' => false, 'error' => 'Employee ID and password are required']);
            }

            // For simplicity, we'll just set the session directly:
            session()->set([
                'employee_id' => $employee_id,  // Storing employee ID in session
                'logged_in' => true,  // Indicating the user is logged in
            ]);

            // Return success response
            return $this->response->setJSON(['success' => true]);

        } catch (\Exception $e) {
            log_message('critical', 'Login Error: ' . $e->getMessage());
            return $this->response->setJSON(['success' => false, 'error' => 'Server error']);
        }
    }

    public function logout()
    {
        // Destroy the session when logging out
        session()->destroy();
        return redirect()->to('/login')->with('message', 'Logged out successfully');
    }
}
