<?php

namespace App\Controllers;

use App\Models\AddAttendancem;

class AddAttendance extends BaseController
{
    protected $AddAttendancem;

    public function __construct()
    {
        $this->session = \Config\Services::session();  // Initialize the session service
        $this->AddAttendancem = new AddAttendancem();
    }

    public function index()
    {
        if (!session()->get('logged_in')) {
            return redirect()->to('/login')->with('error', 'You need to login first.');
        }

        $db = \Config\Database::connect();
        $setting = $db->table('global_settings')->where('id', 1)->get()->getRow();

        $data = [
            'title' => 'Manage / Attendance',
            'message' => session()->getFlashdata('message'),
            'message_type' => session()->getFlashdata('message_type'),
            'category_toggle' => $setting->category_toggle ?? 0,

        ];
        
        return view('attendance', $data);
    }

    public function add()
    {
        $data = [
            'date'      => $this->request->getPost('date'),
            'ds_count'  => $this->request->getPost('ds_count'),
            'ns_count'  => $this->request->getPost('ns_count'),
            'total_mp'  => $this->request->getPost('total_mp'),
            'rate'      => $this->request->getPost('rate'),
            'sl'        => $this->request->getPost('sl'),
            'vl'        => $this->request->getPost('vl'),
            'nu'        => $this->request->getPost('nu')
        ];
    
        $id = $this->request->getPost('id');
    
        if ($id) {
            // Get old data before update
            $oldData = $this->AddAttendancem->find($id);
    
            $this->AddAttendancem->update($id, $data);
            session()->setFlashdata('message', 'Record updated successfully!');
            session()->setFlashdata('message_type', 'success');
    
            // Build change log
            $changes = [];
            foreach ($data as $key => $newVal) {
                $oldVal = $oldData[$key] ?? '';
                if ($oldVal != $newVal) {
                    $changes[] = "<div class='mb-1'><strong>" . ucfirst($key) . ":</strong> <span class='text-danger'>\"$oldVal\"</span> → <span class='text-success'>\"$newVal\"</span></div>";
                }
            }
    
            $description = "
                <div class='text-start'>
                    <div class='mb-2'>
                        <strong>Updated by:</strong> <em class='text-muted'>" . session()->get('fullname') . "</em>
                    </div>
                    <div class='mt-2'>" . implode('', $changes) . "</div>
                </div>
            ";
    
            log_activity(
                session()->get('employee_id'),
                'Updated attendance record',
                $description
            );
    
        } else {
            // Insert new record
            $this->AddAttendancem->insert($data);
            session()->setFlashdata('message', 'Record added successfully!');
            session()->setFlashdata('message_type', 'success');
    
            // For add, treat all values as new
            $changeList = '';
            foreach ($data as $key => $val) {
                $changeList .= "<div class='mb-1'><strong>" . ucfirst($key) . ":</strong> <span class='text-success'>\"$val\"</span></div>";
            }
    
            $description = "
                <div class='text-start'>
                    <div class='mb-2'>
                        <strong>Added by:</strong> <em class='text-muted'>" . session()->get('fullname') . "</em>
                    </div>
                    <div class='mt-2'>$changeList</div>
                </div>
            ";
    
            log_activity(
                session()->get('employee_id'),
                'Added attendance record',
                $description
            );
        }
    
        return $this->response->setJSON(['status' => 'success', 'message' => 'Attendance saved successfully']);
    }
    
    

    public function update($id)
    {
        $oldData = $this->AddAttendancem->find($id);
        if (!$oldData) {
            return $this->response->setJSON(['status' => 'error', 'message' => 'Record not found']);
        }
    
        $newData = [
            'date'      => $this->request->getPost('date'),
            'ds_count'  => $this->request->getPost('ds_count'),
            'ns_count'  => $this->request->getPost('ns_count'),
            'total_mp'  => $this->request->getPost('total_mp'),
            'rate'      => $this->request->getPost('rate'),
            'sl'        => $this->request->getPost('sl'),
            'vl'        => $this->request->getPost('vl'),
            'nu'        => $this->request->getPost('nu')
        ];
    
        $this->AddAttendancem->update($id, $newData);
    
        // Build change log
        $changes = [];
        foreach ($newData as $key => $val) {
            $oldVal = $oldData[$key] ?? '';
            if ($oldVal != $val) {
                $changes[] = "<div class='mb-1'><strong>" . ucfirst($key) . ":</strong> <span class='text-danger'>\"$oldVal\"</span> → <span class='text-success'>\"$val\"</span></div>";
            }
        }
    
        $description = "
            <div class='text-start'>
                <div class='mb-2'>
                    <strong>Updated by:</strong> <em class='text-muted'>" . session()->get('fullname') . "</em>
                </div>
                <div class='mt-2'>" . implode('', $changes) . "</div>
            </div>
        ";
    
        log_activity(
            session()->get('employee_id'),
            'Updated attendance record',
            $description
        );
    
        session()->setFlashdata('message', 'Record updated successfully!');
        session()->setFlashdata('message_type', 'success');
    
        return $this->response->setJSON(['status' => 'success', 'message' => 'Attendance updated successfully']);
    }
    
    

    public function getAttendanceData()
    {
        $model = new AddAttendancem();
        $attendance = $model
            ->orderBy('date', 'DESC')
            ->findAll();
    
        foreach ($attendance as &$row) {
            // Format date fields
            $row['date'] = date('F j, Y', strtotime($row['date']));
            $row['desc_created_at'] = date('F j, Y g:i A', strtotime($row['created_at']));
        }
    
        return $this->response->setJSON([
            'draw' => $this->request->getVar('draw'),
            'recordsTotal' => count($attendance),
            'recordsFiltered' => count($attendance),
            'data' => $attendance
        ]);
    }
    

    public function view($id)
    {
        $attendance = $this->AddAttendancem->find($id);
        if ($attendance) {
            return $this->response->setJSON($attendance);
        }
        return $this->response->setStatusCode(404, 'Record not found');
    }

    public function delete($id)
    {
        // Fetch the record that is about to be deleted
        $record = $this->AddAttendancem->find($id);
    
        if ($record) {
            // Create the description for the log
            $description = "
                <div class='text-start'>
                    <div class='mb-2'>
                        <strong>Deleted by:</strong> <em class='text-muted'>" . session()->get('fullname') . "</em>
                    </div>
                    <div class='mt-2'>
                        <div class='mb-1'><strong>Record ID:</strong> <span class='text-danger'>" . $record['id'] . "</span></div>
                        <div class='mb-1'><strong>Ds_count:</strong> <span class='text-danger'>" . $record['ds_count'] . "</span></div>
                        <div class='mb-1'><strong>Ns_count:</strong> <span class='text-danger'>" . $record['ns_count'] . "</span></div>
                        <div class='mb-1'><strong>Total_mp:</strong> <span class='text-danger'>" . $record['total_mp'] . "</span></div>
                        <div class='mb-1'><strong>Rate:</strong> <span class='text-danger'>" . $record['rate'] . "</span></div>
                        <div class='mb-1'><strong>Sl:</strong> <span class='text-danger'>" . $record['sl'] . "</span></div>
                        <div class='mb-1'><strong>Vl:</strong> <span class='text-danger'>" . $record['vl'] . "</span></div>
                        <div class='mb-1'><strong>Nu:</strong> <span class='text-danger'>" . $record['nu'] . "</span></div>
                    </div>
                </div>
            ";
    
            // Log the deletion activity
            log_activity(
                session()->get('employee_id'),
                'Deleted attendance record',
                $description
            );
        } else {
            // Record not found
            session()->setFlashdata('message', 'Record not found.');
            session()->setFlashdata('message_type', 'error');
            return $this->response->setJSON(['status' => 'error', 'message' => 'Record not found.']);
        }
    
        // Try deleting the record
        try {
            $deleted = $this->AddAttendancem->delete($id);
    
            if ($deleted) {
                // Successfully deleted
                session()->setFlashdata('message', 'Record deleted successfully!');
                session()->setFlashdata('message_type', 'success');
                return $this->response->setJSON(['status' => 'success', 'message' => 'Attendance deleted successfully!']);
            } else {
                // Deletion failed
                session()->setFlashdata('message', 'Failed to delete record.');
                session()->setFlashdata('message_type', 'error');
                return $this->response->setJSON(['status' => 'error', 'message' => 'Failed to delete record.']);
            }
        } catch (\Exception $e) {
            // Catch any exceptions
            session()->setFlashdata('message', 'Error occurred while deleting record: ' . $e->getMessage());
            session()->setFlashdata('message_type', 'error');
            return $this->response->setJSON(['status' => 'error', 'message' => 'Error occurred while deleting record.']);
        }
    }
    

}