<?= view('navbar/navbar') ?>
    
<div class="container mt-3">
<h2 style="text-align: left;">ATTENDANCE LIST</h2>

        <button type="button" class="btn btn-primary" id="addAttendanceBtn"><i class="far fa-user-plus"></i>
        Add Attendance
        </button>
        <br>        <br> <br> <br>
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
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content shadow-lg rounded-4">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title" id="attendanceAddModalLabel"><i class="fas fa-user-plus me-2"></i>Add Attendance</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body px-4 py-3">
                <form id="attendanceFormAdd">
                    <div class="row g-3">
                        <div class="col-md-4">
                            <label for="dateAdd" class="form-label">Date</label>
                            <input type="date" class="form-control" id="dateAdd" name="date" required>
                        </div>
                        <div class="col-md-4">
                            <label for="ds_countAdd" class="form-label">DS Count</label>
                            <input type="number" class="form-control" id="ds_countAdd" name="ds_count" placeholder="Input Day shift count" required>
                        </div>
                        <div class="col-md-4">
                            <label for="ns_countAdd" class="form-label">NS Count</label>
                            <input type="number" class="form-control" id="ns_countAdd" name="ns_count" placeholder="Input night shift count" required>
                        </div>

                        <div class="col-md-4">
                            <label for="total_mpAdd" class="form-label">Total Man Power</label>
                            <input type="number" class="form-control" id="total_mpAdd" name="total_mp" placeholder="Input MP"  required>
                        </div>
                        <div class="col-md-4">
                            <label for="rateAdd" class="form-label">Rate</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="rateAdd" name="rate" placeholder="Input rate percent"  required>
                                <span class="input-group-text">%</span>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label for="slAdd" class="form-label">Sick Leave</label>
                            <input type="number" class="form-control" id="slAdd" name="sl" placeholder="Input sick leave" required>
                        </div>

                        <div class="col-md-6">
                            <label for="vlAdd" class="form-label">Vacation Leave</label>
                            <input type="number" class="form-control" id="vlAdd" name="vl" placeholder="Input vacation leave" required>
                        </div>
                        <div class="col-md-6">
                            <label for="nuAdd" class="form-label">NI</label>
                            <input type="number" class="form-control" id="nuAdd" name="nu"  required>
                        </div>
                    </div>
                    <div class="text-end mt-4">
                        <button type="submit" class="btn btn-success px-4"><i class="fas fa-save me-1"></i> Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- Edit Attendance Modal -->
<div class="modal fade" id="attendanceEditModal" tabindex="-1" aria-labelledby="attendanceEditModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content shadow-lg rounded-4">
            <div class="modal-header bg-warning text-dark">
                <h5 class="modal-title" id="attendanceEditModalLabel"><i class="fas fa-edit me-2"></i>Edit Attendance</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body px-4 py-3">
                <form id="attendanceFormEdit">
                    <input type="hidden" name="id" id="attendanceIdEdit">
                    <div class="row g-3">
                        <div class="col-md-4">
                            <label for="dateEdit" class="form-label">Date</label>
                            <input type="date" class="form-control" id="dateEdit" name="date" required>
                        </div>
                        <div class="col-md-4">
                            <label for="ds_countEdit" class="form-label">DS Count</label>
                            <input type="number" class="form-control" id="ds_countEdit" name="ds_count" placeholder="Input Day shift count" required>
                        </div>
                        <div class="col-md-4">
                            <label for="ns_countEdit" class="form-label">NS Count</label>
                            <input type="number" class="form-control" id="ns_countEdit" name="ns_count" placeholder="Input night shift count" required>
                        </div>

                        <div class="col-md-4">
                            <label for="total_mpEdit" class="form-label">Total Man Power</label>
                            <input type="number" class="form-control" id="total_mpEdit" name="total_mp" placeholder="Input MP" required>
                        </div>
                        <div class="col-md-4">
                            <label for="rateEdit" class="form-label">Rate</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="rateEdit" name="rate" placeholder="Input rate percent" required>
                                <span class="input-group-text">%</span>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label for="slEdit" class="form-label">Sick Leave</label>
                            <input type="number" class="form-control" id="slEdit" name="sl" placeholder="Input sick leave" required>
                        </div>

                        <div class="col-md-6">
                            <label for="vlEdit" class="form-label">Vacation Leave</label>
                            <input type="number" class="form-control" id="vlEdit" name="vl" placeholder="Input vacation leave" required>
                        </div>
                        <div class="col-md-6">
                            <label for="nuEdit" class="form-label">NI</label>
                            <input type="number" class="form-control" id="nuEdit" name="nu" placeholder="Input no information" required>
                        </div>
                    </div>
                    <div class="text-end mt-4">
                        <button type="submit" class="btn btn-primary px-4"><i class="fas fa-sync-alt me-1"></i> Update</button>
                    </div>
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
            ], 
            language: {
            search: '<i class="fas fa-search"></i> Search attendance:', // ✅ fixed quotes
            paginate: {
                previous: "Prev",
                next: "Next"
            },
            emptyTable: "No defects available."
        },
        pageLength: 5,
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


<script>
    document.addEventListener('DOMContentLoaded', function () {
        const rateInput = document.getElementById('rateAdd');

        rateInput.addEventListener('input', function () {
            let value = this.value.replace(/[^0-9]/g, ''); // Remove non-digits
            if (value) {
                this.value = value + '%';
            } else {
                this.value = '';
            }
        });

        rateInput.addEventListener('focus', function () {
            this.value = this.value.replace('%', '');
        });

        rateInput.addEventListener('blur', function () {
            let value = this.value.replace(/[^0-9]/g, '');
            if (value) {
                this.value = value + '%';
            }
        });
    });
</script>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const rateInput = document.getElementById('rateEdit');

        rateInput.addEventListener('input', function () {
            let value = this.value.replace(/[^0-9]/g, ''); // Remove non-digits
            if (value) {
                this.value = value + '%';
            } else {
                this.value = '';
            }
        });

        rateInput.addEventListener('focus', function () {
            this.value = this.value.replace('%', '');
        });

        rateInput.addEventListener('blur', function () {
            let value = this.value.replace(/[^0-9]/g, '');
            if (value) {
                this.value = value + '%';
            }
        });
    });
</script>
</body>

</html>

<?= view('navbar/footer') ?>