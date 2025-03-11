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
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addUserModalLabel">Add New User</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="addUserForm" action="<?= site_url('addMemberc/addUser') ?>" method="post">
                        <?= csrf_field() ?>
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" id="name" name="name" class="form-control" readonly required>
                        </div>
                        <div class="mb-3">
                            <label for="firstname" class="form-label">First Name</label>
                            <input type="text" name="firstname" id="firstname" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label for="middlename" class="form-label">Middle Name</label>
                            <input type="text" name="middlename" id="middlename" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="lastname" class="form-label">Last Name</label>
                            <input type="text" name="lastname" id="lastname" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label for="shift_type" class="form-label">Shift Type</label>
                            <select name="shift" id="shift" class="form-select" required></select>
                        </div>
                        <button type="submit" class="btn btn-primary">Add User</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Edit User Modal -->
    <div class="modal fade" id="updateUserModal" tabindex="-1" aria-labelledby="updateUserModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="updateUserModalLabel">Update User</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="updateUserForm">
                        <input type="hidden" id="updateUserId">
                        <div class="mb-3">
                            <label for="updateFirstname" class="form-label">First Name</label>
                            <input type="text" id="updateFirstname" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label for="middlename" class="form-label">Middle Name</label>
                            <input type="text" name="Updatemiddlename" id="Updatemiddlename" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="updateLastname" class="form-label">Last Name</label>
                            <input type="text" id="updateLastname" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label for="updateShift" class="form-label">Shift Type</label>
                            <select id="updateShift" name="updateShift" class="form-select" required></select>
                        </div>
                        <button type="submit" class="btn btn-warning">Update User</button>
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
                    <th>Name</th>
                    <th>First Name</th>
                    <th>Middle Name</th>
                    <th>Last Name</th>
                    <th>Shift Type</th>
                    <th>Date Added</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody id="user-table-body"></tbody>
        </table>
    </div>
</div>


<script>
    $(document).ready(function() {
        var table = $('#usersTable').DataTable({
            ajax: "<?= site_url('addMemberc/fetchUsers') ?>",
            columns: [
                { data: "name" },
                { data: "firstname" },
                { data: "middlename" },
                { data: "lastname" },
                { data: "shift_type" },
                { data: "date" },
                {
                    data: "id",
                    render: function(data) {
                        return `
                            <button class='btn btn-warning btn-sm edit-btn' data-id='${data}'>Edit</button>
                            <button class='btn btn-danger btn-sm delete-btn' data-id='${data}'>Delete</button>
                        `;
                    }
                }
            ]
        });

        // CSRF Token
        var csrfName = '<?= csrf_token() ?>';
        var csrfHash = '<?= csrf_hash() ?>';

        // Edit button click
        $('#usersTable').on('click', '.edit-btn', function() {
            let userId = $(this).data('id');

            $.ajax({
                url: "<?= site_url('addMemberc/getUser') ?>/" + userId,
                type: "GET",
                dataType: "json",
                success: function(data) {
                    if (!data || (Array.isArray(data) && data.length === 0)) {
                        alert("User not found.");
                        return;
                    }

                    $('#updateUserId').val(data.id);
                    $('#updateFirstname').val(data.firstname);
                    $('#Updatemiddlename').val(data.middlename);
                    $('#updateLastname').val(data.lastname);
                    $('#updateShift').val(data.shift_name);

                    // Fetch shift types and set the selected value
                    $.ajax({
                        url: "<?= site_url('fetchShiftc/fetchShiftTypes') ?>",
                        type: "GET",
                        dataType: "json",
                        success: function(response) {
                            var shiftDropdown = $("#updateShift");
                            shiftDropdown.empty().append('<option value="">Select Shift Type</option>');

                            response.forEach(function(shift) {
                                let selected = shift.id == data.shift ? 'selected' : ''; 
                                shiftDropdown.append(`<option value="${shift.id}" ${selected}>${shift.shift_name}</option>`);
                            });
                        }
                    });

                    $('#updateUserModal').modal('show');
                },
                error: function(xhr) {
                    alert("Error fetching user data: " + xhr.responseJSON.error);
                }
            });
        });

        $('#updateUserForm').submit(function(e) {
            e.preventDefault();
            let userId = $('#updateUserId').val();

            $.post("<?= site_url('addMemberc/updateUser') ?>" + '/' + userId, {
                firstname: $('#updateFirstname').val(),
                middlename: $('#Updatemiddlename').val(),
                lastname: $('#updateLastname').val(),
                shift: $('#updateShift').val(), // Include shift data
                [csrfName]: csrfHash
            }, function() {
                $('#updateUserModal').modal('hide');
                $('#usersTable').DataTable().ajax.reload();
                alert('User updated successfully!');
            });
        });

        // Delete button click with CSRF
        $('#usersTable').on('click', '.delete-btn', function() {
            if (confirm('Are you sure you want to delete this user?')) {
                let userId = $(this).data('id');
                $.post("<?= site_url('addMemberc/deleteUser') ?>" + '/' + userId, {
                    [csrfName]: csrfHash
                }, function() {
                    table.ajax.reload();
                    alert('User deleted successfully!');
                    location.reload();
                });
            }
        });

        // Fetch Shift Types
        $.ajax({
            url: "<?= site_url('fetchShiftc/fetchShiftTypes') ?>",
            type: "GET",
            dataType: "json",
            success: function(response) {
                var shiftDropdown = $("#shift");
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

    // Handle form submission for adding a user
    $('#addUserForm').submit(function(event) {
        event.preventDefault();

        $.ajax({
            url: $(this).attr('action'),
            type: $(this).attr('method'),
            data: $(this).serialize(),
            success: function(response) {
                // Close modal
                $('#addUserModal').modal('hide');

                // Reload DataTable to show new user
                $('#usersTable').DataTable().ajax.reload();

                // Show success message
                alert('User added successfully!');
            },
            error: function() {
                alert('Failed to add user.');
            }
        });
    });
</script>

<script>
$(document).ready(function() {
    function updateName() {
        let firstname = $('#firstname').val().trim();
        let middlename = $('#middlename').val().trim();
        let lastname = $('#lastname').val().trim();

        // Combine into full name (ignoring empty fields)
        let fullName = [firstname, middlename, lastname].filter(Boolean).join(' ');

        $('#name').val(fullName); // Set value in "name" input
    }

    // Trigger update when typing in any of these fields
    $('#firstname, #middlename, #lastname').on('input', updateName);
});
</script>

</body>
</html>
