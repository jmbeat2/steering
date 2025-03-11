<?= view('navbar/navbar') ?>

<!DOCTYPE html>
<html>
<head>
    <title>Defect Tracking</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
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
    <h2>Defect Tracking System</h2>
    
    <!-- Defect Submission Form -->
    <form action="<?= site_url('defects/store') ?>" method="post">
        <?= csrf_field() ?> <!-- CSRF token added here -->
        <div class="row g-3">
            <div class="col-12 col-sm-6 col-md-3">
                <label for="defect_type" class="form-label">Select Defect Type</label>
                <select name="defect_type" id="defect_type" class="form-select" required></select>
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
</div>


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
            { data: "defect_date" },
            { data: "defect_type" },
            { data: "total", className: "text-center" }
        ],
        paging: true,
        searching: true,
        ordering: true,
        lengthMenu: [5, 10, 25, 50]
    });

    // Fetch defect types
    $.ajax({
        url: "<?= base_url('Defectstype/getDefectTypes') ?>",
        type: "GET",
        dataType: "json",
        success: function(response) {
            $('#defect_type').append('<option value="">Select Defect Type</option>');
            $.each(response, function(index, defect) {
                $('#defect_type').append('<option value="' + defect.type + '">' + defect.type + '</option>');
            });
        },
        error: function() {
            alert("Failed to fetch defect types.");
        }
    });

    // Fetch shifts
    $.ajax({
        url: "<?= base_url('Userc/FetchName') ?>",
        type: "GET",
        dataType: "json",
        success: function(response) {
            $('#shift').append('<option value="">Select Shift</option>');
            $.each(response, function(index, shift) {
                $('#shift').append('<option value="' + shift.shift_type + '">' + shift.shift_name + '</option>');
            });
        },
        error: function() {
            alert("Failed to fetch shifts");
        }
    });

    // Fetch names based on selected shift
    $('#shift').change(function() {
        var selectedShift = $(this).val();
        if (selectedShift) {
            $.ajax({
                url: "<?= base_url('Shiftc/FetchNamesByShift') ?>",
                type: "GET",
                dataType: "json",
                data: { shift: selectedShift },
                success: function(response) {
                    $('#name').empty().append('<option value="">Select Name</option>');
                    $.each(response, function(index, user) {
                        $('#name').append('<option value="' + user.name + '">' + user.name + '</option>');
                    });
                },
                error: function() {
                    alert("Failed to fetch names based on shift");
                }
            });
        } else {
            $('#name').empty().append('<option value="">Select Name</option>');
        }
    });
});

// Function to update time
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
