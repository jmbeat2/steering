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

    public function updateTitle($id, $data)
    {
        return $this->update($id, $data);
    }

    public function createTitle($data)
    {
        return $this->insert($data);
    }

    public function deleteTitle($id)
    {
        return $this->delete($id);
    }
}
