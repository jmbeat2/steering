<?php

namespace App\Controllers;

use App\Models\ShiftM;

class Shiftc extends BaseController
{
    public function __construct()
    {
        if (!session()->get('logged_in')) {
            return redirect()->to('/login')->with('error', 'You need to login first.');
        }
        
        $this->model = new ShiftM();
    }

    public function FetchNamesByShift()
    {
        $shiftCode = $this->request->getGet('shift'); // Get selected shift from frontend
    
        if ($shiftCode) {
            $names = $this->model->getShift($shiftCode); // Fetch only users with this shift type
            return $this->response->setJSON($names);
        } else {
            return $this->response->setJSON([]); // Return empty array if no shift selected
        }
    }
    
}
?>
