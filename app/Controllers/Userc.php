<?php

namespace App\Controllers;

use App\Models\Userm;

class Userc extends BaseController
{
    public function __construct()
    {
        if (!session()->get('logged_in')) {
            return redirect()->to('/login')->with('error', 'You need to login first.');
        }
        
        $this->model = new Userm();
    }

    // Method to fetch defect types via AJAX
    public function FetchName()
    {
        
        $user = $this->model->getUser();
        return $this->response->setJSON($user);
    }
}
