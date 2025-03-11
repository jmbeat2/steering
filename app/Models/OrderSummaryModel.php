<?php
namespace App\Models;

use CodeIgniter\Model;

class OrderSummaryModel extends Model
{
    protected $table = 'order_summary';
    protected $primaryKey = 'id';
    protected $allowedFields = ['date', 'total_orders'];
}
?>
