<?= view('navbar/navbar') ?>

<!DOCTYPE html>
<html>

<style>
    time {
        font-size: 1.2rem;
        margin-top: 10px;
    }
</style>

<head>
    <title>Add User</title>

</head>

<body>
<div class="container mt-3">
    <time id="current-time"></time>
    <br><br>
    <h2>Add New User</h2>

    <!-- Button to open the Modal -->
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
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Add User</button>
                </form>
            </div>
        </div>
    </div>
</div>

    <!-- Display Success or Error Message -->
    <?php if(session()->getFlashdata('message')): ?>
        <div class="alert alert-success mt-3">
            <?= session()->getFlashdata('message') ?>
        </div>
    <?php endif; ?>

    <?php if(session()->getFlashdata('error')): ?>
        <div class="alert alert-danger mt-3">
            <?= session()->getFlashdata('error') ?>
        </div>
    <?php endif; ?>

    <!-- DataTable to Display Users -->
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
                </tr>
            </thead>
            <tbody id="user-table-body">
                <!-- Data will be loaded dynamically via AJAX -->
            </tbody>
        </table>
    </div>
</div>

<script>
    // Function to show the current time
    function updateTime() {
        const now = new Date();
        const timeElement = document.getElementById('current-time');
        const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
        timeElement.dateTime = now.toISOString();
        timeElement.innerHTML = `Today is: ${now.toLocaleDateString(undefined, options)}, 
                                 Time: ${now.toLocaleTimeString()}`;
    }

    setInterval(updateTime, 1000);
    updateTime();

    $(document).ready(function() {
    $('#usersTable').DataTable({
        processing: true,
        serverSide: true, // Keep this for server-side processing (if you're fetching large data from the server)
        ajax: {
            url: "<?= site_url('addMemberc/fetchUsers') ?>", // Make sure this route is correct for fetching users
            type: "GET",
            dataType: "json",
            dataSrc: function(response) {
                // Ensure that the server returns the correct structure, including 'data' for rows, 
                // 'recordsTotal' for total records, and 'recordsFiltered' for filtered records
                return response.data;
            }
        },
        columns: [
            { data: "name" },
            { data: "firstname" },
            { data: "middlename" },
            { data: "lastname" },
            { data: "shift_type" },
            { data: "date" }
        ],
        paging: true, // Enable pagination
        searching: true, // Enable searching
        ordering: true, // Enable ordering
        lengthMenu: [5, 10, 25, 50], // Number of rows per page
        language: {
            search: "Search Users:",
            lengthMenu: "Show _MENU_ users per page",
            info: "Showing _START_ to _END_ of _TOTAL_ users"
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


<!-- JavaScript to Automatically Populate 'Name' -->
<script>
    $(document).ready(function() {
        // Function to automatically update 'name' when any of the fields change
        function updateName() {
            var firstName = $('#firstname').val();
            var middleName = $('#middlename').val();
            var lastName = $('#lastname').val();

            // Combine the values into the 'name' field
            var fullName = firstName + (middleName ? ' ' + middleName : '') + ' ' + lastName;
            
            // Set the value of the 'name' field
            $('#name').val(fullName);
        }

        // Attach the 'updateName' function to the fields
        $('#firstname, #middlename, #lastname').on('input', updateName);
    });
</script>

<!-- JavaScript for Fetching and Populating Shift Names -->
<script>
$(document).ready(function() {
    // Function to fetch shift types and populate the dropdown
    function fetchShiftTypes() {
        $.ajax({
            url: "<?= site_url('fetchShiftc/fetchShiftTypes') ?>", // URL to fetch shift types from the backend
            type: "GET",
            dataType: "json",
            success: function(response) {
                var shiftDropdown = $("#shift");  // The shift dropdown element
                shiftDropdown.empty();  // Clear any existing options
                shiftDropdown.append('<option value="">Select Shift Type</option>');  // Add the default option
                
                // Loop through the response to populate the dropdown
                response.forEach(function(shift) {
                    shiftDropdown.append('<option value="' + shift.id + '">' + shift.shift_name + '</option>');
                });
            },
            error: function() {
                alert("Failed to fetch shift types.");
            }
        });
    }

    // Trigger the function to populate shift types on page load
    fetchShiftTypes();
});

</script>


</body>
</html>
