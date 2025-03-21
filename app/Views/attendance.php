<?= view('navbar/navbar') ?>

<div class="container my-5">
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb breadcrumb-chevron p-3 bg-body-tertiary rounded-3">
      <li class="breadcrumb-item">
        <a class="link-body-emphasis" href="<?= site_url('/') ?>">
        <i class="fa-solid fa-house"></i>
          <span class="visually-hidden">Home</span>
        </a>
      </li>
      <li class="breadcrumb-item">
        <a class="link-body-emphasis fw-semibold text-decoration-none" href="<?= site_url('addAttendance') ?>">Manage</a>
      </li>
      <li class="breadcrumb-item">
        <a class="link-body-emphasis fw-semibold text-decoration-none" href="<?= site_url('addAttendance') ?>">Add attendance</a>
      </li>
      <li class="breadcrumb-item active" aria-current="page">
        
      </li>
    </ol>
  </nav>
</div>
    
<div class="container mt-3">
<h2 style="text-align: left;">ATTENDANCE LIST</h2>

        <button type="button" class="btn btn-primary" id="addAttendanceBtn"><i class="far fa-user-plus"></i>
        Add Attendance
        </button>
        <br>        <br>
        <!-- Table for displaying data -->
        <table id="attendanceTable" class="table table-striped table-hover table-bordered">
            
        <thead class="table-dark">
                <tr>
                    <!-- <th>ID</th> -->
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


<script>
    function getCsrfToken() {
        return {
            '<?= csrf_token() ?>': '<?= csrf_hash() ?>'
        };
    }
</script>


    <!-- AJAX Script for DataTable and Form Submit -->
    <script>
    $(document).ready(function() {
        var table = $('#attendanceTable').DataTable({
            ajax: "<?= site_url('addAttendance/getAttendanceData') ?>",
            "columns": [
                { "data": "date" },
                { "data": "ds_count" },
                { "data": "ns_count" },
                { "data": "total_mp" },
                { "data": "rate" },
                {
                    "data": null,
                    render: function(data) {
                        return `  
                            <button class='btn btn-warning btn-sm edit-btn' data-id='${data.id}'><i class="fal fa-edit"></i> Edit</button>
                            <button class='btn btn-danger btn-sm delete-btn' data-id='${data.id}'><i class="fal fa-trash-alt"></i> Delete</button>
                        `;
                    }
                }
            ]
        });

        let message = "<?= session()->getFlashdata('message') ?>";
        let messageType = "<?= session()->getFlashdata('message_type') ?>";

        if (message) {
            iziToast[messageType]({
                title: messageType.charAt(0).toUpperCase() + messageType.slice(1),
                message: message,
                position: 'topRight'
            });
        }
    });
</script>


<script>
    $(document).ready(function() {
        // ✅ Show Add Modal
        $('#addAttendanceBtn').click(function() {
            $('#attendanceFormAdd')[0].reset();
            var addModal = new bootstrap.Modal(document.getElementById('attendanceAddModal'));
            addModal.show();
        });

        // ✅ Add Attendance
        $('#attendanceFormAdd').submit(function(e) {
            e.preventDefault();

            $.post("<?= site_url('addAttendance/add') ?>", $(this).serialize() + '&' + $.param(getCsrfToken()), function(response) {
                if (response.status === 'success') {
                    iziToast.success({ title: 'Success', message: 'Attendance added successfully!', position: 'topRight' });
                    window.location.reload();
                    bootstrap.Modal.getInstance(document.getElementById('attendanceAddModal')).hide();
                } else {
                    iziToast.error({ title: 'Error', message: response.message, position: 'topRight' });
                }
            }, 'json').fail(function(xhr) {
                iziToast.error({
                    title: 'Error',
                    message: 'Failed to save the record. ' + xhr.responseText,
                    position: 'topRight'
                });
            });
        });
    });
</script>


<script>
    $(document).ready(function() {
        // ✅ Fetch Data for Editing
        $('#attendanceTable').on('click', '.edit-btn', function() {
            let $button = $(this); // Get the clicked button
            let attendanceId = $button.data('id');

            // Disable button & show spinner
            $button.prop("disabled", true).html(`
                <span class="spinner-border spinner-border-sm" aria-hidden="true"></span> Loading...
            `);

            $.get("<?= site_url('addAttendance/view') ?>/" + attendanceId, function(data) {
                if (!data || (Array.isArray(data) && data.length === 0)) {
                    iziToast.error({ title: 'Error', message: 'Attendance record not found.', position: 'topRight' });
                    return;
                }

                // ✅ Populate the modal fields
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
                editModal.show();

            }, 'json').fail(function(xhr) {
                iziToast.error({ title: 'Error', message: 'Error fetching attendance data. ' + xhr.responseText, position: 'topRight' });
            }).always(function() {
                // ✅ Restore button text
                $button.prop("disabled", false).html(`<i class="far fa-edit"></i> Edit`);
            });
        });

        // ✅ Edit Attendance Submission
        $('#attendanceFormEdit').submit(function(e) {
            e.preventDefault();

            let attendanceId = $('#attendanceIdEdit').val();
            let $submitButton = $('#attendanceFormEdit button[type="submit"]');

            // Disable button & show spinner
            $submitButton.prop("disabled", true).html(`
                <span class="spinner-border spinner-border-sm" aria-hidden="true"></span> Saving...
            `);

            $.post("<?= site_url('addAttendance/update') ?>/" + attendanceId, $(this).serialize() + '&' + $.param(getCsrfToken()), function(response) {
                if (response.status === 'success') {
                    iziToast.success({ title: 'Success', message: 'Attendance updated successfully!', position: 'topRight' });
                    bootstrap.Modal.getInstance(document.getElementById('attendanceEditModal')).hide();
                    window.location.reload();
                } else {
                    iziToast.error({ title: 'Error', message: response.message, position: 'topRight' });
                }
            }, 'json').fail(function(xhr) {
                iziToast.error({ title: 'Error', message: 'Failed to update attendance. ' + xhr.responseText, position: 'topRight' });
            }).always(function() {
                // ✅ Restore button text
                $submitButton.prop("disabled", false).html(`Save Changes`);
            });
        });
    });
</script>



<script>
    // 🔹 Handle Delete User Button Click
    $(document).on("click", ".delete-btn", function () {
        var userId = $(this).data("id");
        var $button = $(this); // Store the button reference

        // Disable button & show spinner inside button
        $button.prop("disabled", true).html(`
            <span class="spinner-border spinner-border-sm" aria-hidden="true"></span>
        
        `);
        iziToast.question({
            timeout: 20000,
            close: false,
            overlay: true,
            displayMode: 'once',
            title: 'Confirm Deletion',
            message: 'Are you sure you want to delete this attendance??',
            position: 'center',
            buttons: [
                ['<button><b>Yes</b></button>', function (instance, toast) {
                    instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');

                    // Disable button & show spinner inside button
                    $button.prop("disabled", true).html(`
                        <span class="spinner-border spinner-border-sm" aria-hidden="true"></span> Deleting...
                    `);

                    $.ajax({
                        url: "<?= site_url('addAttendance/delete/') ?>" + userId,
                        type: "POST",
                        data: {
                            "<?= csrf_token() ?>": "<?= csrf_hash() ?>"
                        },
                        dataType: "json",
                        success: function (response) {
                            if (response.status === "success") {
                                iziToast.success({
                                    title: 'Deleted!',
                                    message: 'User has been removed successfully.',
                                    position: 'topRight'
                                });
                                setTimeout(() => window.location.reload(), 1000);
                            } else {
                                iziToast.error({
                                    title: 'Error',
                                    message: response.message,
                                    position: 'topRight'
                                    
                                });
                                $button.prop("disabled", false).html('<i class="fal fa-trash-alt"></i> Edit');
                            }
                        },
                        error: function (xhr) {
                            iziToast.error({
                                title: 'AJAX Error',
                                message: xhr.responseText,
                                position: 'topRight'
                            });
                            $button.prop("disabled", false).html('<i class="fal fa-trash-alt"></i> Edit');
                        }
                    });
                }, true],

                ['<button>No</button>', function (instance, toast) {
                    instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');
                    $button.prop("disabled", false).html('<i class="fal fa-trash-alt"></i> Delete');
                }]
            ]
        });
    });
</script>




</body>

</html>
