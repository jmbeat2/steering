<?php

namespace App\Models;

use CodeIgniter\Model;

class EmployeeSkillsModel extends Model
{
    protected $table = 'title';
    protected $primaryKey = 'id';
    protected $allowedFields = ['title'];

    public function getAllTitles()
    {
        return $this->findAll();
    }

    public function getTitleFromTitle2()
    {
        return $this->db->table('title2')->limit(1)->get()->getRow(); // Fetching the first row
    }
    

    public function updateTitle($id, $data)
    {
        return $this->update($id, $data);
    }

    public function getCurrentTitle()
    {
        // Replace 'employee_skills' with the actual table where the title is stored
        $builder = $this->db->table('title2');
        
        // Assuming you're using the ID 1 to fetch the current title (adjust as necessary)
        $query = $builder->select('title')->where('id', 1)->get(); // Adjust condition as per your logic
        $result = $query->getRow();

        // Return the title, or null if not found
        return $result ? $result->title : null;
    }


    public function createTitle($data)
    {
        return $this->insert($data);
    }

    public function deleteTitle($id)
    {
        return $this->delete($id);
    }

    public function updateTitle1($title)
    {
        // Assuming you have a table `settings` with key-value format
        return $this->db->table('title2')
                        ->where('id', '1')
                        ->update(['title' => $title]);
    }

    

}
