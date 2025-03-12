<?= view('navbar/navbar') ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily Attendance</title>
</head>

<body>
    
<div class="container mt-3">
    <br><br>
    <h2>Attendance List</h2>
        <button type="button" class="btn btn-primary" id="addAttendanceBtn">
        Add Attendance
        </button>
        <br>
        <br>

        <!-- Table for displaying data -->
        <table id="attendanceTable" class="table table-striped table-hover table-bordered">
        <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Date</th>
                    <th>DS Count</th>
                    <th>NS Count</th>
                    <th>Total MP</th>
                    <th>Rate</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Table rows will be populated here by AJAX -->
            </tbody>
        </table>
    </div>

<!-- Add Attendance Modal -->
<!-- Add Attendance Modal -->
<div class="modal fade" id="attendanceAddModal" tabindex="-1" aria-labelledby="attendanceAddModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="attendanceAddModalLabel">Add Attendance</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="attendanceFormAdd">
                    <div class="mb-3">
                        <label for="dateAdd" class="form-label">Date</label>
                        <input type="date" class="form-control" id="dateAdd" name="date" required>
                    </div>
                    <div class="mb-3">
                        <label for="ds_countAdd" class="form-label">DS Count</label>
                        <input type="number" class="form-control" id="ds_countAdd" name="ds_count" required>
                    </div>
                    <div class="mb-3">
                        <label for="ns_countAdd" class="form-label">NS Count</label>
                        <input type="number" class="form-control" id="ns_countAdd" name="ns_count" required>
                    </div>
                    <div class="mb-3">
                        <label for="total_mpAdd" class="form-label">Total MP</label>
                        <input type="number" class="form-control" id="total_mpAdd" name="total_mp" required>
                    </div>
                    <div class="mb-3">
                        <label for="rateAdd" class="form-label">Rate</label>
                        <input type="number" class="form-control" id="rateAdd" name="rate" required>
                    </div>
                    <div class="mb-3">
                        <label for="slAdd" class="form-label">SL</label>
                        <input type="number" class="form-control" id="slAdd" name="sl" required>
                    </div>
                    <div class="mb-3">
                        <label for="vlAdd" class="form-label">VL</label>
                        <input type="number" class="form-control" id="vlAdd" name="vl" required>
                    </div>
                    <div class="mb-3">
                        <label for="nuAdd" class="form-label">NU</label>
                        <input type="number" class="form-control" id="nuAdd" name="nu" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Save</button>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- Edit Attendance Modal -->
<!-- Edit Attendance Modal -->
<div class="modal fade" id="attendanceEditModal" tabindex="-1" aria-labelledby="attendanceEditModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="attendanceEditModalLabel">Edit Attendance</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="attendanceFormEdit">
                    <input type="hidden" name="id" id="attendanceIdEdit">
                    <div class="mb-3">
                        <label for="dateEdit" class="form-label">Date</label>
                        <input type="date" class="form-control" id="dateEdit" name="date" required>
                    </div>
                    <div class="mb-3">
                        <label for="ds_countEdit" class="form-label">DS Count</label>
                        <input type="number" class="form-control" id="ds_countEdit" name="ds_count" required>
                    </div>
                    <div class="mb-3">
                        <label for="ns_countEdit" class="form-label">NS Count</label>
                        <input type="number" class="form-control" id="ns_countEdit" name="ns_count" required>
                    </div>
                    <div class="mb-3">
                        <label for="total_mpEdit" class="form-label">Total MP</label>
                        <input type="number" class="form-control" id="total_mpEdit" name="total_mp" required>
                    </div>
                    <div class="mb-3">
                        <label for="rateEdit" class="form-label">Rate</label>
                        <input type="number" class="form-control" id="rateEdit" name="rate" required>
                    </div>
                    <div class="mb-3">
                        <label for="slEdit" class="form-label">SL</label>
                        <input type="number" class="form-control" id="slEdit" name="sl" required>
                    </div>
                    <div class="mb-3">
                        <label for="vlEdit" class="form-label">VL</label>
                        <input type="number" class="form-control" id="vlEdit" name="vl" required>
                    </div>
                    <div class="mb-3">
                        <label for="nuEdit" class="form-label">NU</label>
                        <input type="number" class="form-control" id="nuEdit" name="nu" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>
    </div>
</div>


    <!-- AJAX Script for DataTable and Form Submit -->
    <script>
$(document).ready(function() {
    var table = $('#attendanceTable').DataTable({
        ajax: "<?= site_url('addAttendance/getAttendanceData') ?>",
        "columns": [
            { "data": "id" },
            { "data": "date" },
            { "data": "ds_count" },
            { "data": "ns_count" },
            { "data": "total_mp" },
            { "data": "rate" },
            {
                "data": null,
                render: function(data) {
                    return `  
                        <button class='btn btn-warning btn-sm edit-btn' data-id='${data.id}'>Edit</button>
                        <button class='btn btn-danger btn-sm delete-btn' data-id='${data.id}'>Delete</button>
                    `;
                }
            }
        ]
    });

    // CSRF Token
    var csrfName = '<?= csrf_token() ?>';
    var csrfHash = '<?= csrf_hash() ?>';

    // Show Add Modal
    $('#addAttendanceBtn').click(function() {
        $('#attendanceFormAdd')[0].reset();  // Reset the form
        var addModal = new bootstrap.Modal(document.getElementById('attendanceAddModal'));
        addModal.show();  // Show modal
    });

    // Edit button click
    $('#attendanceTable').on('click', '.edit-btn', function() {
        let attendanceId = $(this).data('id');

        $.ajax({
            url: "<?= site_url('addAttendance/view') ?>/" + attendanceId,
            type: "GET",
            dataType: "json",
            success: function(data) {
                if (!data || (Array.isArray(data) && data.length === 0)) {
                    alert("Attendance record not found.");
                    return;
                }

                // Populate the Edit Form with the fetched data
                $('#attendanceIdEdit').val(data.id);
                $('#dateEdit').val(data.date);
                $('#ds_countEdit').val(data.ds_count);
                $('#ns_countEdit').val(data.ns_count);
                $('#total_mpEdit').val(data.total_mp);
                $('#rateEdit').val(data.rate);
                $('#slEdit').val(data.sl);
                $('#vlEdit').val(data.vl);
                $('#nuEdit').val(data.nu);

                var editModal = new bootstrap.Modal(document.getElementById('attendanceEditModal'));
                editModal.show();  // Show modal
            },
            error: function(xhr) {
                alert("Error fetching attendance data: " + xhr.responseJSON.error);
            }
        });
    });

    // Add Attendance - Submit Form
    $('#attendanceFormAdd').submit(function(e) {
        e.preventDefault();  // Prevent default form submission

        $.ajax({
            url: "<?= site_url('addAttendance/add') ?>",
            type: "POST",
            data: $(this).serialize() + '&' + $.param({ [csrfName]: csrfHash }),
            dataType: "json",
            success: function(response) {
                if (response.status === 'success') {
                    alert(response.message);
                    table.ajax.reload();
                    var addModal = bootstrap.Modal.getInstance(document.getElementById('attendanceAddModal'));
                    addModal.hide();  // Close modal
                    window.location.reload();
                } else {
                    alert('Error: ' + response.message);
                }
            },
            error: function(xhr, status, error) {
                console.log(xhr.responseText);
                alert('Failed to add attendance: ' + error);
            }
        });
    });

    // Edit Attendance - Submit Form
    $('#attendanceFormEdit').submit(function(e) {
        e.preventDefault();

        let attendanceId = $('#attendanceIdEdit').val(); // Get the attendance ID

        $.ajax({
            url: "<?= site_url('addAttendance/update') ?>/" + attendanceId, // Append ID to the URL
            type: "POST",
            data: $(this).serialize() + '&' + $.param({ [csrfName]: csrfHash }),
            dataType: "json",
            success: function(response) {
                if (response.status === 'success') {
                    alert(response.message);
                    table.ajax.reload();
                    var editModal = bootstrap.Modal.getInstance(document.getElementById('attendanceEditModal'));
                    editModal.hide();  // Close modal
                    window.location.reload();
                } else {
                    alert('Error: ' + response.message);
                }
            },
            error: function(xhr, status, error) {
                console.log(xhr.responseText);
                alert('Failed to update attendance: ' + error);
            }
        });
    });

    // Delete Function
    $('#attendanceTable').on('click', '.delete-btn', function() {
        let attendanceId = $(this).data('id');

        if (confirm('Are you sure you want to delete this record?')) {
            $.ajax({
                url: "<?= site_url('addAttendance/delete') ?>/" + attendanceId,
                type: "POST",
                data: {
                    [csrfName]: csrfHash // Send CSRF token for security
                },
                success: function(response) {
                    if (response.status === 'success') {
                        alert(response.message);
                        $('#attendanceTable').DataTable().ajax.reload(); // Reload the table after deletion
                        window.location.reload();
                    } else {
                        alert('Error: ' + response.message);
                    }
                },
                error: function(xhr, status, error) {
                    alert('Failed to delete attendance: ' + error);
                }
            });
        }
    });
});

function updateTime() {
    const now = new Date();
    const timeElement = document.getElementById('current-time');
    const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
    timeElement.dateTime = now.toISOString();
    timeElement.innerHTML = `Today is: ${now.toLocaleDateString(undefined, options)}, Time: ${now.toLocaleTimeString()}`;
}
setInterval(updateTime, 1000);
updateTime();


    </script>
</body>

</html>
