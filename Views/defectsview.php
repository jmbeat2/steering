<?= view('navbar/navbar') ?>

<!DOCTYPE html>
<html>

<style>
    time {
        font-size: 1.2rem;
        margin-top: 10px;
        /* margin: 600px */
    }
</style>

<?php 
?>
<head>
    <title>Defect Tracking</title>
</head>
<body>
<div class="container mt-3">
<time id="current-time"></time>
<br>
   <br>
    <h2>Defect Tracking System</h2>
<!-- Defect Submission Modal -->
<form action="<?= site_url('defects/store') ?>" method="post">
    <div class="row g-3">
        <div class="col-12 col-sm-6 col-md-3">
            <label for="defect_type" class="form-label">Select Defect Type</label>
            <select name="defect_type" id="defect_type" class="form-select" required>
                <div id="loading" style="display: none;">Loading...</div>
            </select>
        </div>
        <div class="col-12 col-sm-6 col-md-3">
            <label for="shift" class="form-label">Select Shift</label>
            <select name="shift" id="shift" class="form-select" required></select>
        </div>
        <div class="col-12 col-sm-6 col-md-3">
            <label for="name" class="form-label">Select Name</label>
            <select name="name" id="name" class="form-select" required></select>
        </div>
        <div class="col-12 col-sm-6 col-md-3">
            <label for="count" class="form-label">Defect Count</label>
            <input type="number" name="count" class="form-control" min="1" required>
        </div>
    </div>
</form>


<!-- Bootstrap JS (Ensure you have Bootstrap loaded for modal functionality) -->



<br>
<div class="table-responsive">
    <table id="defectsTable" class="table table-striped table-hover table-bordered">
        <thead class="table-dark">
            <tr>
                <th>Name</th>
                <th>Date</th>
                <th>Defect Type</th>
                <th>Count</th>
            </tr>
        </thead>
        <tbody id="defect-table-body">
            <!-- Data will be loaded via AJAX -->
        </tbody>
    </table>
</div>



<!-- FETCH ALL DEFECTS DATA -->
<script>
$(document).ready(function() {
    let table = $('#defectsTable').DataTable({
        processing: true,
        serverSide: false, 
        ajax: {
            url: "<?= site_url('defects/fetchDefects') ?>",
            type: "GET",
            dataType: "json",
            dataSrc: ""
        },
        columns: [
            { data: "name" },
            { data: "defect_date" }, // Now the date is already formatted from PHP
            { data: "defect_type" },
            { data: "total", className: "text-center" }
        ],
        paging: true,
        searching: true,
        ordering: true,
        lengthMenu: [5, 10, 25, 50], 
        language: {
            search: "Search Defects:",
            lengthMenu: "Show _MENU_ records per page",
            info: "Showing _START_ to _END_ of _TOTAL_ defects"
        }
    });
});
</script>

<!-- FETCH ALL DEFECTS TYPE -->
<script>
$(document).ready(function() {
    // Fetch defect types via AJAX
    $.ajax({
        url: "<?= base_url('Defectstype/getDefectTypes') ?>", // Adjust URL if necessary
        type: "GET",
        dataType: "json",
        success: function(response) {
            // Clear the select dropdown first
            $('#defect_type').empty();
            $('#defect_type').append('<option value="">Select Defect Type</option>'); // Add default option

            // Loop through the response and append options
            $.each(response, function(index, defect) {
                $('#defect_type').append('<option value="' + defect.type + '">' + defect.type + '</option>');
            });
        },
        error: function() {
            alert("Failed to fetch defect types.");
        }
    });
});
</script>

<!-- FETCH ALL SHIFTS -->
<script>
    $(document).ready(function() {
        // Fetch available shifts on page load
        $.ajax({
            url: "<?= base_url('Userc/FetchName') ?>", // Adjust URL if necessary
            type: "GET",
            dataType: "json",
            success: function(response) {
                // Clear the shift dropdown first
                $('#shift').empty();
                $('#shift').append('<option value="">Select Shift</option>'); // Add default option

                // Loop through the response and append options
                $.each(response, function(index, shift) {
                    $('#shift').append('<option value="' + shift.shift_type + '">' + shift.shift_name + '</option>');
                });           
            },
            error: function() {
                alert("Failed to fetch shifts");
            }
        });

        // Event listener for when a shift is selected
        $('#shift').change(function() {
            var selectedShift = $(this).val();

            if (selectedShift) {
                // Fetch names based on selected shift
                $.ajax({
                    url: "<?= base_url('Shiftc/FetchNamesByShift') ?>", // Adjust URL for fetching names by shift
                    type: "GET",
                    dataType: "json",
                    data: { shift: selectedShift }, // Send selected shift to the server
                    success: function(response) {
                        // Clear the name dropdown
                        $('#name').empty();
                        $('#name').append('<option value="">Select Name</option>'); // Add default option

                        // Loop through the response and append options
                        $.each(response, function(index, user) {
                            $('#name').append('<option value="' + user.name + '">' + user.name + '</option>');
                        });
                    },
                    error: function() {
                        alert("Failed to fetch names based on the selected shift");
                    }
                });
            } else {
                // If no shift is selected, clear the name dropdown
                $('#name').empty();
                $('#name').append('<option value="">Select Name</option>');
            }
        });
    });
</script>




<script>
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
    </script>