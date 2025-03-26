<?= view('navbar/navbar') ?>

<script>
    $(document).ready(function() {
        <?php if (session()->getFlashdata('success')) : ?>
            iziToast.success({
                title: '',
                message:  " <?= session()->getFlashdata('success'); ?>",
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
            <a class="link-body-emphasis fw-semibold text-decoration-none" href="<?= site_url('addMemberc/index') ?>">Manage</a>
        </li>
        <li class="breadcrumb-item active" aria-current="page">

            <a class="link-body-emphasis fw-semibold text-decoration-none" href="<?= site_url('addMemberc/index') ?>">Add leader</a>

        <li class="breadcrumb-item active" aria-current="page">
            
        </li>
        </ol>
    </nav>
    </div>

    <div class="container mt-3">
    <h2>ADD NEW LEADER </h2>
    <button type="button" class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#addUserModal"><i class="far fa-user-plus"></i>
        Add User
    </button>

    <!-- Add User Modal -->
    <div class="modal fade" id="addUserModal" tabindex="-1" aria-labelledby="addUserModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addUserModalLabel">Add New User</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="addUserForm">
                        <div class="row">
                            <div class="col-12 col-md-6 mb-3">
                                <label for="employeeId" class="form-label">Employee ID</label>
                                <input type="text" name="employee_id" id="employeeId" class="form-control" required>
                            </div>
                           
                            <div class="col-12 col-md-6 mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" name="password" id="password" class="form-control" required>
                            </div>
                            
                            <div class="col-12 col-md-6 mb-3">
                                <label for="firstname" class="form-label">First Name</label>
                                <input type="text" name="fname" id="firstname" class="form-control" required>
                            </div>
                            <div class="col-12 col-md-6 mb-3">
                                <label for="middlename" class="form-label">Middle Name</label>
                                <input type="text" name="mname" id="middlename" class="form-control">
                            </div>
                            <div class="col-12 col-md-6 mb-3">
                                <label for="lastname" class="form-label">Last Name</label>
                                <input type="text" name="lname" id="lastname" class="form-control" required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Add User</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

<!-- Edit User Modal -->
<div class="modal fade" id="updateUserModal" tabindex="-1" aria-labelledby="updateUserModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="updateUserModalLabel">Update User</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="updateUserForm">
                    <input type="hidden" id="updateUserId">
                    <div class="row">
                        <div class="col-12 col-md-6 mb-3">
                            <label for="updateEmployeeId" class="form-label">Employee ID</label>
                            <input type="text" id="updateEmployeeId" class="form-control" required>
                        </div>
                        <div class="col-12 col-md-6 mb-3">
                            <label for="updateFirstname" class="form-label">First Name</label>
                            <input type="text" id="updateFirstname" class="form-control" required>
                        </div>
                        <div class="col-12 col-md-6 mb-3">
                            <label for="updateMiddlename" class="form-label">Middle Name</label>
                            <input type="text" id="updateMiddlename" class="form-control">
                        </div>
                        <div class="col-12 col-md-6 mb-3">
                            <label for="updateLastname" class="form-label">Last Name</label>
                            <input type="text" id="updateLastname" class="form-control" required>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-warning w-100">Update User</button>
                </form>
            </div>
        </div>
    </div>
</div>

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

<!-- Reset Password Modal -->
<div class="modal fade" id="resetPasswordModal" tabindex="-1" aria-labelledby="resetPasswordModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="resetPasswordModalLabel">Reset User Password</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <p>Are you sure you want to reset the password for <strong id="userName"></strong>?</p>
                <form id="resetPasswordForm">
                    <input type="hidden" id="resetUserId" name="user_id">
                    <div class="mb-3">
                        <label for="newPassword" class="form-label">New Password</label>
                        <input type="password" id="newPassword" name="new_password" class="form-control" required>
                    </div>
                    <button type="submit" class="btn btn-danger">Reset Password</button>
                </form>
            </div>
        </div>
    </div>
</div>


    <!-- Users Table -->
    <div class="table-responsive mt-5">
    <table id="usersTable" class="table table-striped table-hover table-bordered align-middle">
        <thead class="table-dark text-nowrap">
            <tr>
                <th style="min-width: 40;">Employee ID</th> <!-- Adjusted width -->
               
                <th>Full Name</th>
                <th>First Name</th>
                <th>Middle Name</th>
                <th>Last Name</th>
                <th style="min-width: 110px;">Shift</th> <!-- Adjusted width -->
                <th>Date Added</th>
                <th style="min-width: 300px;">Actions</th> <!-- Adjusted width -->

            </tr>
        </thead>
        <tbody id="user-table-body"></tbody>
    </table>
</div>

<script>
$(document).ready(function () {
    var table = $("#usersTable").DataTable({
        ajax: "<?= site_url('addMemberc/fetchUsers') ?>",
        columns: [
            { data: "employee_id" },
            { data: "fullname" },
            { data: "fname" },
            { data: "mname" },
            { data: "lname" },
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
            { data: "created_at" },
            {
                data: "id",
                render: function (data, type, row) {
                    return `
                        <button class="btn btn-warning btn-sm edit-btn" data-id="${data}">
                            <i class="far fa-user-edit"></i> Edit
                        </button>
                        <button class="btn btn-danger btn-sm reset-btn" data-id="${data}" data-fullname="${row.fullname}">
                            <i class="fas fa-sync-alt"></i> Reset password
                        </button>
                        <button class="btn btn-danger btn-sm delete-btn" data-id="${data}">
                            <i class="fal fa-user-times"></i> Delete
                        </button>
                    `;
                }
            }
        ]
    });

    // ✅ FIX: Use Event Delegation for Reset Button
    $("#usersTable tbody").on("click", ".reset-btn", function () {
    let userId = $(this).data("id");
    let userName = $(this).data("fullname");
    let userType = "<?= session()->get('user_type'); ?>"; // Get user type from session

    if (userType === "1") {
        $("#resetUserId").val(userId);
        $("#userName").text(userName);
        $("#resetPasswordModal").modal("show");
    } else {
        iziToast.error({
            title: "Access Denied",
            message: "Please contact the IT department to reset your account.",
            position: "topRight"
        });
    }
});

    // ✅ Handle Reset Password Form Submission
    $("#resetPasswordForm").submit(function (e) {
    e.preventDefault();

    let csrfName = '<?= csrf_token() ?>'; // Get CSRF token name
    let csrfHash = '<?= csrf_hash() ?>';  // Get CSRF token value

    let formData = $(this).serializeArray();
    formData.push({ name: csrfName, value: csrfHash }); // Append CSRF token

    $.ajax({
        url: "<?= site_url('addMemberc/resetPassword') ?>",
        type: "POST",
        data: $.param(formData),  // Send CSRF token along with form data
        dataType: "json",
        success: function (response) {
            if (response.status === "success") {
                iziToast.success({ message: response.message, position: "topRight" });
                window.location.reload();
            } else {
                iziToast.error({ message: response.message, position: "topRight" });
            }
        }
    });
});




$(document).ready(function () {
    let csrfName = '<?= csrf_token() ?>'; // CSRF Token Name
    let csrfHash = '<?= csrf_hash() ?>';  // CSRF Hash Value

    // Open modal on duty button click
    $("#usersTable").on("click", ".duty-btn", function () {
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

        if (userType === "0") {
            // Allow only non-admins to update duty
            $("#dutyModal .modal-title").text("Update Duty for " + lastname);
            $("#userId").val(userId); // Set user ID
            $("#lastnameDisplay").text(lastname);
            $("#dutySelect").val(currentDuty); // Set duty selection
            $("#dutyModal").modal("show");
        } else if (userType === "0") {
            // Block admins from making changes
            iziToast.warning({
                title: "Restricted",
                message: "Admins cannot change duty assignments.",
                position: "topRight"
            });
        } else {
            // If neither condition is met, deny access
            iziToast.error({
                title: "Access Denied",
                message: "Please contact the IT department to reset your account.",
                position: "topRight"
            });
        }
    });

    // Save duty change
    $("#saveDutyBtn").on("click", function () {
        let userId = $("#userId").val();
        let newDuty = $("#dutySelect").val();

        $.ajax({
            url: "<?= site_url('addMemberc/updateDuty') ?>",
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





    

    // 🔹 Handle Add User Form Submission
    $("#addUserForm").submit(function (e) {
        e.preventDefault();
        var formData = $(this).serialize() + "&<?= csrf_token() ?>=<?= csrf_hash() ?>";

        $.ajax({
            url: "<?= site_url('addMemberc/addUser') ?>",
            type: "POST",
            data: formData,
            dataType: "json",
            success: function (response) {
                if (response.status === "success") {
                    // alert("User added successfully!");
                    $("#addUserModal").modal("hide");
                    $("#addUserForm")[0].reset();
                    window.location.reload();
                } else {
                    alert("Error: " + response.message);
                }
            },
            error: function (xhr) {
                alert("AJAX Error: " + xhr.responseText);
            }
        });
    });

    // 🔹 Handle Edit User Button Click
    $(document).on("click", ".edit-btn", function () {
    var userId = $(this).data("id");
    var $button = $(this); // Store the button reference

    // Disable button & show spinner inside button
    $button.prop("disabled", true).html(`
        <span class="spinner-border spinner-border-sm" aria-hidden="true"></span>
    `);

    // Get user session info
    let userType = "<?= session()->get('user_type'); ?>"; // Get user type from session
    let empid = "<?= session()->get('employee_id'); ?>"; // Get employee ID from session

    console.log("User ID:", userId);
    console.log("User Type:", userType);
    console.log("Employee ID:", empid);

    // Check user role before making an AJAX request
    if (userType === "0") {
        // Fetch user data
        $.ajax({
            url: "<?= site_url('addMemberc/getUser/') ?>" + userId,
            type: "GET",
            dataType: "json",
            success: function (response) {
                if (response.status === "success" && response.data) {
                    var user = response.data;

                    $("#updateUserId").val(user.id);
                    $("#updateEmployeeId").val(user.employee_id);
                    $("#updateFirstname").val(user.fname);
                    $("#updateMiddlename").val(user.mname);
                    $("#updateLastname").val(user.lname);
                    $("#updateShift").val(user.id_shift).trigger("change");
                    $("#updateUsername").val(user.username);
                    $("#updateUserType").val(user.user_type).trigger("change");
                    $("#updateFullName").val(user.fullname);
                    $("#updateUserForm").data("id", user.id);

                    // Show modal after data is fetched
                    $("#updateUserModal").modal("show");
                } else {
                    alert("Error: Unable to fetch user data.");
                }
            },
            error: function () {
                alert("Failed to fetch user data. Please try again.");
            },
            complete: function () {
                // Re-enable button & restore original text
                $button.prop("disabled", false).html('<i class="far fa-user-edit"></i> Edit');
            }
        });
    } else if (userType === "0") {
        // Block admins from editing user info
        iziToast.warning({
            title: "Restricted",
            message: "Admins cannot edit user information.",
            position: "topRight"
        });
        $button.prop("disabled", false).html('<i class="far fa-user-edit"></i> Edit');
    } else {
               // Fetch user data
               $.ajax({
            url: "<?= site_url('addMemberc/getUser/') ?>" + userId,
            type: "GET",
            dataType: "json",
            success: function (response) {
                if (response.status === "success" && response.data) {
                    var user = response.data;

                    $("#updateUserId").val(user.id);
                    $("#updateEmployeeId").val(user.employee_id);
                    $("#updateFirstname").val(user.fname);
                    $("#updateMiddlename").val(user.mname);
                    $("#updateLastname").val(user.lname);
                    $("#updateShift").val(user.id_shift).trigger("change");
                    $("#updateUsername").val(user.username);
                    $("#updateUserType").val(user.user_type).trigger("change");
                    $("#updateFullName").val(user.fullname);
                    $("#updateUserForm").data("id", user.id);

                    // Show modal after data is fetched
                    $("#updateUserModal").modal("show");
                } else {
                    alert("Error: Unable to fetch user data.");
                }
            },
            error: function () {
                alert("Failed to fetch user data. Please try again.");
            },
            complete: function () {
                // Re-enable button & restore original text
                $button.prop("disabled", false).html('<i class="far fa-user-edit"></i> Edit');
            }
        });
        
        $button.prop("disabled", false).html('<i class="far fa-user-edit"></i> Edit');
    }
});



    // 🔹 Handle Update User Form Submission
    $("#updateUserForm").submit(function (e) {
        e.preventDefault();
        var userId = $("#updateUserId").val();

        var formData = {
            employee_id: $("#updateEmployeeId").val(),
            fname: $("#updateFirstname").val(),
            mname: $("#updateMiddlename").val(),
            lname: $("#updateLastname").val(),
            id_shift: $("#updateShift").val(),
            username: $("#updateUsername").val(),
            user_type: $("#updateUserType").val(),
            "<?= csrf_token() ?>": "<?= csrf_hash() ?>"
        };

        $.ajax({
            url: "<?= site_url('addMemberc/updateUser/') ?>" + userId,
            type: "POST",
            data: formData,
            dataType: "json",
            success: function (response) {
                if (response.status === "success") {
                    window.location.reload();
                    $("#updateUserModal").modal("hide");
                   
                } else {
                    window.location.reload();
                }
            },
            error: function (xhr) {
                console.error(xhr.responseText);
                alert("AJAX Error: " + xhr.responseText);
            }
        });
    });

    // Fetch shift types for the Add/Edit user forms
    $.ajax({
        url: "<?= site_url('fetchShiftc/fetchShiftTypes') ?>",
        type: "GET",
        dataType: "json",
        success: function(response) {
            var shiftDropdown = $("#shift, #updateShift");
            shiftDropdown.empty().append('<option value="">Select Shift Type</option>');
            response.forEach(function(shift) {
                shiftDropdown.append(`<option value="${shift.id}">${shift.shift_name}</option>`);
            });
        },
        error: function() {
            alert("Failed to fetch shift types.");
        }
    });
});

</script>


<script>
    // 🔹 Handle Delete Attendance Button Click
    $(document).on("click", ".delete-btn", function () {
        var attendanceId = $(this).data("id");
        var $button = $(this); // Store button reference

        // ✅ Disable button & show spinner inside button
        $button.prop("disabled", true).html(`
            <span class="spinner-border spinner-border-sm" aria-hidden="true"></span>
        `);

        iziToast.question({
            timeout: 20000,
            close: false,
            overlay: true,
            displayMode: 'once',
            title: 'Confirm Deletion',
            message: 'Are you sure you want to delete this attendance?',
            position: 'center',
            buttons: [
                ['<button><b>Yes</b></button>', function (instance, toast) {
                    instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');

                    // ✅ Show "Deleting..." text
                    $button.prop("disabled", true).html(`
                        <span class="spinner-border spinner-border-sm" aria-hidden="true"></span> Deleting...
                    `);

                    $.ajax({
                        url: "<?= site_url('addMemberc/deleteUser/') ?>" + attendanceId,
                        type: "POST",
                        data: {
                            "<?= csrf_token() ?>": "<?= csrf_hash() ?>"
                        },
                        dataType: "json",
                        success: function (response) {
                            if (response.status === "success") {
                                iziToast.success({
                                    title: 'Deleted!',
                                    message: 'Users has been removed successfully.',
                                    position: 'topRight'
                                });
                                setTimeout(() => window.location.reload(), 1000);
                            } else {
                                iziToast.error({
                                    title: 'Error',
                                    message: response.message,
                                    position: 'topRight'
                                });
                                // ✅ Restore button if error occurs
                                $button.prop("disabled", false).html('<i class="fal fa-trash-alt"></i> Delete');
                            }
                        },
                        error: function (xhr) {
                            iziToast.error({
                                title: 'AJAX Error',
                                message: xhr.responseText,
                                position: 'topRight'
                            });
                            // ✅ Restore button if AJAX fails
                            $button.prop("disabled", false).html('<i class="fal fa-trash-alt"></i> Delete');
                        }
                    });
                }, true],

                ['<button>No</button>', function (instance, toast) {
                    instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');
                    // ✅ Restore button if user cancels
                    $button.prop("disabled", false).html('<i class="fal fa-trash-alt"></i> Delete');
                }]
            ]
        });
    });
</script>



</body>
</html>
