<?= view('navbar/navbar') ?>

<!DOCTYPE html>
<html>
<head>
    <title>Add User</title>
    <style>
        time {
            font-size: 1.2rem;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="container mt-3">
    <time id="current-time"></time>
    <br><br>
    <h2>Add New User</h2>
    <button type="button" class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#addUserModal">
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
                                <label for="username" class="form-label">Username</label>
                                <input type="text" name="username" id="username" class="form-control" required>
                            </div>
                            <div class="col-12 col-md-6 mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" name="password" id="password" class="form-control" required>
                            </div>
                            <div class="col-12 col-md-6 mb-3">
                                <label for="userType" class="form-label">User Type</label>
                                <select name="user_type" id="userType" class="form-select" required>
                                    <option value="admin">Admin</option>
                                    <option value="employee">Employee</option>
                                </select>
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
                            <div class="col-12 col-md-6 mb-3">
                                <label for="shift" class="form-label">Shift Type</label>
                                <select name="id_shift" id="shift" class="form-select" required></select>
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
                    <input type="text" id="updateUserId">
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
                        <div class="col-12 col-md-6 mb-3">
                            <label for="updateShift" class="form-label">Shift Type</label>
                            <select id="updateShift" class="form-select" required></select>
                        </div>
                        <div class="col-12 col-md-6 mb-3">
                            <label for="updateUsername" class="form-label">Username</label>
                            <input type="text" id="updateUsername" class="form-control" required>
                        </div>
                        <div class="col-12 col-md-6 mb-3">
                            <label for="updatePassword" class="form-label">Password</label>
                            <input type="password" id="updatePassword" class="form-control">
                        </div>
                        <div class="col-12 col-md-6 mb-3">
                            <label for="updateUserType" class="form-label">User Type</label>
                            <select id="updateUserType" class="form-select" required>
                                <option value="admin">Admin</option>
                                <option value="employee">Employee</option>
                            </select>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-warning w-100">Update User</button>
                </form>
            </div>
        </div>
    </div>
</div>


    <!-- Users Table -->
    <div class="table-responsive mt-4">
        <table id="usersTable" class="table table-striped table-hover table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>Employee ID</th>
                    <th>User Type</th>
                    <th>Full Name</th>
                    <th>First Name</th>
                    <th>Middle Name</th>
                    <th>Last Name</th>
                    <th>Shift Type</th>
                    <th>Username</th>
                    <th>Date Added</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody id="user-table-body"></tbody>
        </table>
    </div>
<script>
$(document).ready(function() {
    // Initialize DataTable
    var table = $('#usersTable').DataTable({
        ajax: "<?= site_url('addMemberc/fetchUsers') ?>",
        columns: [
            { data: "employee_id" },
            { data: "user_type" },
            { data: "fullname" },
            { data: "fname" },
            { data: "mname" },
            { data: "lname" },
            { data: "id_shift" },
            { data: "username" },
            { data: "created_at" },
            {
                data: "id",
                render: function(data) {
                    return `
                        <button class="btn btn-warning btn-sm edit-btn" data-id="${data}">Edit</button>
                        <button class="btn btn-danger btn-sm delete-btn" data-id="${data}">Delete</button>
                    `;
                }
            }
        ]
    });

    // Handle Add User form submission via AJAX
    $("#addUserForm").submit(function (e) {
        e.preventDefault();
        var formData = $(this).serialize();
        formData += "&<?= csrf_token() ?>=<?= csrf_hash() ?>";

        $.ajax({
            url: "<?= site_url('addMemberc/addUser') ?>",
            type: "POST",
            data: formData,
            dataType: "json",
            success: function (response) {
                if (response.status === "success") {
                    alert("User added successfully!");
                    $("#addUserModal").modal("hide");
                    $("#addUserForm")[0].reset();
                    $('#usersTable').DataTable().ajax.reload();
                } else {
                    alert("Error: " + JSON.stringify(response.message));
                }
            },
            error: function (xhr) {
                alert("AJAX Error: " + xhr.responseText);
            }
        });
    });

    // Handle Edit User Button
// Handle Edit User Button
// Handle Edit User Button
$(document).on('click', '.edit-btn', function() {
    var userId = $(this).data('id');

    // Fetch user data and populate the form
    $.ajax({
        url: "<?= site_url('addMemberc/getUser/') ?>" + userId,
        type: "GET",
        dataType: "json",
        success: function(response) {
            if (response.status === "success" && response.data) {
                var user = response.data;
                $("#updateUserId").val(user.id);  // Ensure ID is passed
                $("#updateEmployeeId").val(user.employee_id);  // Populate employee ID
                $("#updateFirstname").val(user.fname);  // Populate first name
                $("#updateMiddlename").val(user.mname);  // Populate middle name
                $("#updateLastname").val(user.lname);  // Populate last name
                $("#updateShift").val(user.id_shift);  // Populate shift
                $("#updateUsername").val(user.username);  // Populate username
                $("#updateUserType").val(user.user_type);  // Populate user type
                $("#updateFullName").val(user.fullname);  // Ensure full name is populated if necessary
                $("#updateUserForm").data('id', user.id); // Set the user ID on the form
                $("#updateUserModal").modal("show");
            } else {
                alert("Error fetching user data.");
            }
        },
        error: function() {
            alert("Failed to fetch user data.");
        }
    });
});


// Handle Update User form submission via AJAX
$("#updateUserForm").submit(function(e) {
    e.preventDefault();

    var userId = $("#updateUserId").val();

    // Manually capture form data
    var formData = {
        employee_id: $("#updateEmployeeId").val(),
        fname: $("#updateFirstname").val(),
        mname: $("#updateMiddlename").val(),
        lname: $("#updateLastname").val(),
        id_shift: $("#updateShift").val(),
        username: $("#updateUsername").val(),
        user_type: $("#updateUserType").val()
    };

    // Append CSRF Token
    formData["<?= csrf_token() ?>"] = "<?= csrf_hash() ?>"; 

    $.ajax({
        url: "<?= site_url('addMemberc/updateUser/') ?>" + userId,
        type: "POST",
        data: formData,
        dataType: "json",
        success: function(response) {
            if (response.status === "success") {
                alert("User updated successfully!");
                $("#updateUserModal").modal("hide");
                $('#usersTable').DataTable().ajax.reload();
                window.location.reload();
            } else {
                alert("Error: " + JSON.stringify(response.message));
            }
        },
        error: function(xhr) {
            console.error(xhr.responseText);
            alert("AJAX Error: " + xhr.responseText);
        }
    });
});

    // Handle Delete User Button
    $(document).on('click', '.delete-btn', function() {
    var userId = $(this).data('id');

    if (confirm('Are you sure you want to delete this user?')) {
        $.ajax({
            url: "<?= site_url('addMemberc/deleteUser/') ?>" + userId,
            type: "POST",
            data: {
                "<?= csrf_token() ?>": "<?= csrf_hash() ?>" // Include CSRF token
            },
            dataType: "json",
            success: function(response) {
                if (response.status === "success") {
                    alert("User deleted successfully!");
                    $('#usersTable').DataTable().ajax.reload(); // Refresh DataTable
                    window.location.reload();
                } else {
                    alert("Error: " + JSON.stringify(response.message));
                }
            },
            error: function(xhr) {
                alert("AJAX Error: " + xhr.responseText);
            }
        });
    }
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

</body>
</html>
