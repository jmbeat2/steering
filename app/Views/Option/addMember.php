<?= view('navbar/navbar') ?>

    <div class="container mt-3">
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
            <a class="link-body-emphasis fw-semibold text-decoration-none" href="<?= site_url('addMemberc/index') ?>">Option</a>
        </li>
        <li class="breadcrumb-item active" aria-current="page">

            <a class="link-body-emphasis fw-semibold text-decoration-none" href="<?= site_url('addMemberc/index') ?>">Add member</a>

        <li class="breadcrumb-item active" aria-current="page">
            
        </li>
        </ol>
    </nav>
    </div>


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
$(document).ready(function () {
    // Initialize DataTable
    var table = $("#usersTable").DataTable({
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
                render: function (data) {
                    return `
                        <button class="btn btn-warning btn-sm edit-btn" data-id="${data}">Edit</button>
                        <button class="btn btn-danger btn-sm delete-btn" data-id="${data}">Delete</button>
                    `;
                }
            }
        ]
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
                    alert("User added successfully!");
                    $("#addUserModal").modal("hide");
                    $("#addUserForm")[0].reset();
                    table.ajax.reload();
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
            $button.prop("disabled", false).html("Edit");
        }
    });
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
                    alert("User updated successfully!");
                    $("#updateUserModal").modal("hide");
                    table.ajax.reload();
                } else {
                    alert("Error: " + response.message);
                }
            },
            error: function (xhr) {
                console.error(xhr.responseText);
                alert("AJAX Error: " + xhr.responseText);
            }
        });
    });

    // 🔹 Handle Delete User Button Click
    $(document).on("click", ".delete-btn", function () {
        var userId = $(this).data("id");
        var $button = $(this); // Store the button reference

         // Disable button & show spinner inside button
    $button.prop("disabled", true).html(`
        <span class="spinner-border spinner-border-sm" aria-hidden="true"></span>
      
    `);

        if (confirm("Are you sure you want to delete this user?")) {
            $.ajax({
                url: "<?= site_url('addMemberc/deleteUser/') ?>" + userId,
                type: "POST",
                data: {
                    "<?= csrf_token() ?>": "<?= csrf_hash() ?>"
                },
                dataType: "json",
                success: function (response) {
                    if (response.status === "success") {
                        alert("User deleted successfully!");
                        table.ajax.reload();
                    } else {
                        alert("Error: " + response.message);
                        $button.hide
                    }
                },
                error: function (xhr) {
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
