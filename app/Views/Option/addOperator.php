<?= view('navbar/navbar') ?>

<script>
    $(document).ready(function() {
        <?php if (session()->getFlashdata('success')) : ?>
            iziToast.success({
                title: '',
                message: " <?= session()->getFlashdata('success'); ?>",
                position: 'topRight'
            });
        <?php endif; ?>

        <?php if (session()->getFlashdata('error')) : ?>
            iziToast.error({
                title: 'Error',
                message: "<?= session()->getFlashdata('error'); ?>",
                position: 'topRight'
            });
        <?php endif; ?>
    });
</script>

<script>
    $(document).ready(function() {
        <?php if (session()->getFlashdata('message')) : ?>
            iziToast.success({
                title: '',
                message: "<?= session()->getFlashdata('message'); ?>",
                position: 'topRight'
            });
        <?php endif; ?>
    });
</script>

<!-- Add User Modal -->
<div class="modal fade" id="addUserModal" tabindex="-1" aria-labelledby="addUserModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-lg">
        <div class="modal-content shadow-lg rounded-4">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title" id="addUserModalLabel"><i class="fas fa-user-plus me-2"></i>Add New Operator</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body px-4 py-3">
                <form id="addUserForm">
                    <div class="row g-3">
                        <!-- <div class="col-md-6">
                            <label for="employeeId" class="form-label"><i class="fas fa-id-card"></i> Employee ID</label>
                            <input type="text" name="employee_id" id="employeeId" class="form-control" placeholder="1234-123" maxlength="8" required>
                        </div> -->
                        <!-- <div class="col-md-6">
                            <label for="password" class="form-label"><i class="fas fa-key"></i> Password</label>
                            <input type="password" name="password" id="password" class="form-control" placeholder="Enter at least 8 characters" required>
                        </div> -->
                        <div class="col-md-4">
                            <label for="firstname" class="form-label"><i class="fas fa-user-circle"></i> First Name</label>
                            <input type="text" name="fname" id="fname" class="form-control" placeholder="David" required>
                        </div>
                        <div class="col-md-4">
                            <label for="middlename" class="form-label"><i class="fas fa-user-tag"></i> Middle Name</label>
                            <input type="text" name="mname" id="mname" class="form-control" placeholder="S. (or complete middle name)">
                        </div>
                        <div class="col-md-4">
                            <label for="lastname" class="form-label"><i class="fas fa-user-shield"></i> Last Name</label>
                            <input type="text" name="lname" id="lname" class="form-control" required />
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

<!-- Edit User Modal -->
<div class="modal fade" id="editUserModal" tabindex="-1" aria-labelledby="editUserModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-lg">
        <div class="modal-content shadow-lg rounded-4">
            <div class="modal-header bg-warning text-dark">
                <h5 class="modal-title" id="editUserModalLabel"><i class="fas fa-user-edit me-2"></i>Edit User</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body px-4 py-3">
                <form id="editUserForm">
                    <input type="hidden" name="id" id="editUserId">
                    <div class="row g-3">
                        <!-- <div class="col-md-6">
                            <label for="editEmployeeId" class="form-label"><i class="fas fa-id-card"></i> Employee ID</label>
                            <input type="text" name="employee_id" id="editEmployeeId" class="form-control" placeholder="1234-123" required>
                        </div> -->
                        <div class="col-md-4">
                            <label for="editFirstname" class="form-label"><i class="fas fa-user-circle"></i> First Name</label>
                            <input type="text" name="fname" id="editFirstname" class="form-control" placeholder="David" required>
                        </div>
                        <div class="col-md-4">
                            <label for="editMiddlename" class="form-label"><i class="fas fa-user-tag"></i> Middle Name</label>
                            <input type="text" name="mname" id="editMiddlename" class="form-control" placeholder="S. (or complete middle name)">
                        </div>
                        <div class="col-md-4">
                            <label for="editLastname" class="form-label"><i class="fas fa-user-shield"></i> Last Name</label>
                            <input type="text" name="lname" id="editLastname" class="form-control" placeholder="Harrell" required>
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
<!-- DUTY MODAL -->
<div id="dutyModal" class="modal fade" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Update Duty</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <!-- Hidden input for user ID -->
                <input type="hidden" id="userId">
                
                <!-- Display last name (read-only) -->
                <div class="mb-3">
               
                </div>

                <!-- Duty Selection -->
                <div class="mb-3">
                    <label for="dutySelect" class="form-label"><strong>Select Duty:</strong></label>
                    <select id="dutySelect" class="form-select">
                        <option value="0">Off Duty</option>
                        <option value="1">Night Shift</option>
                        <option value="2">Day Shift</option>
                    </select>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="saveDutyBtn" class="btn btn-primary">Save</button>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<div class="container mt-3">
    <h2>OPERATORS</h2>
    <button type="button" class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#addUserModal"><i class="far fa-user-plus"></i>
        ADD NEW OPERATORS
    </button>
    <!-- Users Table -->
    <div class="table-responsive mt-5">
    <table id="operatorsTable" class="table table-striped table-hover table-bordered align-middle">
        <thead class="table-dark text-nowrap">
            <tr>
            <th style="min-width: 5;">Shift</th> <!-- Adjusted width -->
            <th>Fullname</th>
            <th>First Name</th>
            <th>Middle Name</th>
            <th>Last Name</th>
            <th>Actions</th>

            </tr>
        </thead>
        <tbody id="user-table-body"></tbody>
    </table>
</div>
</div>

<script>
$(document).ready(function () {
    let csrfTokenName = "<?= csrf_token() ?>"; 
    let csrfHash = "<?= csrf_hash() ?>";

    /** ✅ Initialize DataTable */
    let table = $('#operatorsTable').DataTable({
    ajax: {
        url: "<?= base_url('operators/fetch') ?>",
        dataSrc: 'data' // VERY IMPORTANT
    },
    columns: [
        {
                data: "duty",
                render: function (data, type, row) {
                    let dutyLabel = "";
                    let dutyClass = "";
                    let dutyIcon = "";

                    switch (data) {
                        case "0": 
                            dutyLabel = "Off Duty"; 
                            dutyClass = "btn-outline-secondary"; 
                            dutyIcon = "fas fa-moon"; 
                            break;
                        case "1": 
                            dutyLabel = "Night Shift"; 
                            dutyClass = "btn-outline-danger"; 
                            dutyIcon = "fas fa-cloud-moon"; 
                            break;
                        case "2": 
                            dutyLabel = "Day Shift"; 
                            dutyClass = "btn-outline-success"; 
                            dutyIcon = "fas fa-sun"; 
                            break;
                        case "99": 
                            dutyLabel = "Admin"; 
                            dutyClass = "btn-outline-secondary disabled"; 
                            dutyIcon = "fas fa-user-shield"; 
                            break;
                        default: 
                            dutyLabel = "Unknown"; 
                            dutyClass = "btn-outline-dark"; 
                            dutyIcon = "fas fa-question"; 
                    }

                    return `
                        <button class="btn btn-sm ${dutyClass} duty-btn d-flex align-items-center" 
                            data-lastname="${row.lname}" 
                            data-id="${row.id}" 
                            data-duty="${data}">
                            <i class="${dutyIcon} me-2"></i> ${dutyLabel}
                        </button>
                    `;
                }
            },
        { data: 'fullname' },
        { data: 'fname' },
        { data: 'mname' },
        { data: 'lname' },
        {
            data: null,
            orderable: false,
            searchable: false,
            render: function(data) {
                return `
                    <button class="btn btn-warning btn-sm editBtn" data-id="${data.id}">
                        <i class="fas fa-edit"></i> Edit
                    </button>
                    <button class="btn btn-danger btn-sm deleteBtn" data-id="${data.id}">
                        <i class="fas fa-trash-alt"></i> Delete
                    </button>
                `;
            }
        }
    ],
    responsive: true,
    language: {
        search: '<i class="fas fa-search"></i> Search:',
        paginate: {
            previous: "Prev",
            next: "Next"
        },
        emptyTable: "No operators available."
    },
    pageLength: 5
});


    /** ✅ Add Operator */
    $('#addUserForm').on('submit', function (e) {
        e.preventDefault();
        $.ajax({
        url: "<?= base_url('operators/add') ?>",
        type: "POST",
        data: {
            "employee_id": $('#employeeId').val(),
            "fname": $('#fname').val(),
            "mname": $('#mname').val(),
            "lname": $('#lname').val(),
            "<?= csrf_token() ?>": "<?= csrf_hash() ?>"  // Add CSRF token here
        },
        success: function(response) {
            $('#addUserModal').modal('hide');
            $('#addUserForm')[0].reset();
            window.location.reload();
        },
        error: function(response) {
            // Error code
        }
    });
});

    /** ✅ Edit Operator */
    $(document).on('click', '.editBtn', function () {
        let id = $(this).data('id');
        $.getJSON("<?= base_url('operators/edit/') ?>" + id, function (data) {
            $('#editUserId').val(data.id);
            $('#editEmployeeId').val(data.employee_id);
            $('#editFirstname').val(data.fname);
            $('#editMiddlename').val(data.mname);
            $('#editLastname').val(data.lname);
            $('#editUserModal').modal('show');
        });
    });

    /** ✅ Update Operator */
    $('#editUserForm').on('submit', function (e) {
        e.preventDefault();
        $.ajax({
            url: "<?= base_url('operators/update') ?>",
            type: "POST",
            data: $(this).serialize() + '&' + csrfTokenName + '=' + csrfHash,
            success: function () {
                $('#editUserModal').modal('hide');
                window.location.reload();
                iziToast.success({ message: "Operator updated!", position: "topRight" });
            },
            error: function () {
                iziToast.error({ message: "Failed to update operator.", position: "topRight" });
            }
        });
    });

/** ✅ Delete Operator */
$(document).on('click', '.deleteBtn', function () {
    let id = $(this).data('id');
    iziToast.question({
        title: 'Confirm Delete',
        message: 'Are you sure you want to delete this operator?',
        timeout: false,
        close: false,
        overlay: true,
        buttons: [
            ['<button><b>Yes</b></button>', function (instance, toast) {
                $.ajax({
                    url: "<?= base_url('operators/delete/') ?>" + id,
                    type: "POST",
                    dataType: "json", // Expect JSON response
                    data: {
                        [csrfTokenName]: csrfHash
                    },
                    success: function (response) {
                        if (response.status === 'success') {
                           window.location.reload();
                        } else {
                            iziToast.error({ message: response.message, position: "topRight" });
                        }
                    },
                    error: function () {
                        iziToast.error({ message: "Failed to delete operator. Please try again.", position: "topRight" });
                    }
                });
                instance.hide({}, toast);
            }],
            ['<button>No</button>', function (instance, toast) {
                instance.hide({}, toast);
            }]
        ]
    });
});

$(document).ready(function () {
    let csrfName = '<?= csrf_token() ?>'; // CSRF Token Name
    let csrfHash = '<?= csrf_hash() ?>';  // CSRF Hash Value

    // Open modal on duty button click
    $("#operatorsTable").on("click", ".duty-btn", function () {
        let userId = $(this).data("id");
        let lastname = $(this).data("lastname"); // Fetch last name
        let currentDuty = $(this).data("duty");
        let userType = "<?= session()->get('user_type'); ?>"; // Get user type from session
        let empid = "<?= session()->get('employee_id'); ?>"; // Get employee ID from session

        console.log("User ID:", userId);
        console.log("Last Name:", lastname);
        console.log("Current Duty:", currentDuty);
        console.log("User Type:", userType);
        console.log("Employee ID:", empid);

            $("#dutyModal .modal-title").text("Update Duty for " + lastname);
            $("#userId").val(userId); // Set user ID
            $("#lastnameDisplay").text(lastname);
            $("#dutySelect").val(currentDuty); // Set duty selection
            $("#dutyModal").modal("show");
    });

    // Save duty change
    $("#saveDutyBtn").on("click", function () {
        let userId = $("#userId").val();
        let newDuty = $("#dutySelect").val();

        $.ajax({
            url: "<?= site_url('Operators/updateDuty') ?>",
            type: "POST",
            data: { 
                id: userId, 
                duty: newDuty, 
                [csrfName]: csrfHash  // Include CSRF Token
            },
            success: function (response) {
                if (response.status === "success") {
                    window.location.reload();
                    $("#dutyModal").modal("hide");
                    // location.reload(); // Refresh page to reflect changes
                } else {
                    window.location.reload();
                    // alert("Error: " + response.message);
                }
            },
            error: function (xhr) {
                console.error("Error:", xhr.responseText);
                alert("Something went wrong!");
            }
        });
    });
});

});
</script>