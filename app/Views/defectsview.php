<?= view('navbar/navbar') ?>

<script>
    $(document).ready(function() {
        <?php if (session()->getFlashdata('success')) : ?>
        let today = new Date();
        let formattedDate = today.toLocaleDateString('en-US', {
            month: 'long', day: 'numeric', year: 'numeric'
        });

        iziToast.success({
            title: '',
            message: "<?= session()->getFlashdata('success'); ?> (Date: " + formattedDate + ")",
            position: 'topRight'
        });
    <?php endif; ?>

        <?php if (session()->getFlashdata('error')) : ?>
            iziToast.error({
                title: '01A Error',
                message: "<?= session()->getFlashdata('error'); ?>",
                position: 'topRight'
            });
        <?php endif; ?>
    });
</script>

<div class="container mt-3">
    <time id="current-time"></time>
    <br><br>

    <h2>Defect Tracking System</h2>
    <!-- Defect Submission Form -->
    <form action="<?= site_url('defects/store') ?>" method="post">
    <?= csrf_field() ?>
    <div class="row g-3">
        <div class="col-12 col-sm-6 col-md-3">
            <label for="defect_type" class="form-label"><i class="fas fa-times"></i> Select Defect Type</label>
            <select name="defect_type" id="defect_type" class="form-select" required>
                <!-- Populate defect types here -->
            </select>
        </div>
        <div class="col-12 col-sm-3 col-md-3">
            <label for="shift" class="form-label"><i class="fad fa-exchange-alt"></i> Shift</label>
            <select name="shift" id="shift" class="form-select" required>
                <!-- Populate op_name here -->
            </select>
        </div>
        <div class="col-12 col-sm-6 col-md-3">
            <label for="op_name" class="form-label"><i class="fad fa-user"></i> Name</label>
            <select name="op_name" id="op_name" class="form-select" required>
                <!-- Populate op_name here -->
            </select>
        </div>
        <div class="col-12 col-sm-6 col-md-3">
            <label for="count" class="form-label"><i class="fad fa-tally"></i> Defect Count</label>
            <input type="number" name="count" class="form-control" min="1" required>
        </div>

        <!-- <input type="hidden" class="form-control" id="empid" name="empid" value="<?= session()->get('employee_id') ?>" required readonly> -->
        <!-- <input type="hidden" class="form-control" id="encodeby" name="encodeby" value="<?= session()->get('fullname') ?>" required readonly> -->


        <!-- Add Submit Button -->
        <div class="col-12">
        <button type="submit" class="btn btn-primary" style="display: none;">Submit</button>
        </div>
    </div>
</form>
    <br>
    <div class="table-responsive">
        <table id="defectsTable" class="table table-striped table-hover table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Shift</th>
                    <th>Operator name</th>
                    <th>Defect Type</th>
                    <th>Count</th>
                    <th>Date</th>
                    <th>Encode by</th>
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
            { data: "id" },
            {
                data: "id_shift",
                render: function(data, type, row) {
                    switch (data) {
                        case '0':
                        case 0:
                            return '<span class="badge bg-secondary"><i class="fas fa-bed me-1"></i> Off Duty</span>';
                        case '1':
                        case 1:
                            return '<span class="badge bg-dark"><i class="fas fa-moon me-1"></i> Night Shift</span>';
                        case '2':
                        case 2:
                            return '<span class="badge bg-success"><i class="fas fa-sun me-1"></i> Day Shift</span>';
                        default:
                            return '<span class="badge bg-danger"><i class="fas fa-question-circle me-1"></i> Unknown</span>';
                    }
                }
            },
            { data: "name" },
            { data: "defect_type" },
            { data: "total", className: "text-center" },
            { data: "defect_date" },
            { data: "encodeby", className: "text-center" }
        ],
        paging: true,
        language: {
            search: '<i class="fas fa-search"></i> Search defects:', // ✅ fixed quotes
            paginate: {
                previous: "Prev",
                next: "Next"
            },
            emptyTable: "No defects available."
        },
        searching: true,
        ordering: false,
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
});

// Fetch Shift types initially
$.ajax({
    url: "<?= base_url('Defectstype/getShift') ?>",
    type: "GET",
    dataType: "json",
    success: function(response) {
        $('#shift').append('<option value="">Select shift</option>');
        $.each(response, function(index, shift) {
            $('#shift').append('<option value="' + shift.id + '">' + shift.shift_name + '</option>');
        });
    },
    error: function() {
        alert("Failed to fetch shift types.");
    }
});

// On shift change, fetch corresponding operator names
$('#shift').on('change', function() {
    var shiftId = $(this).val();
    $('#op_name').html('<option value="">Loading...</option>');

    if (shiftId) {
        $.ajax({
            url: "<?= base_url('Defectstype/getOperatorsByShift') ?>/" + shiftId,
            type: "GET",
            dataType: "json",
            success: function(response) {
                $('#op_name').html('<option value="">Select Operator Name</option>');
                $.each(response, function(index, opname) {
                    $('#op_name').append('<option value="' + opname.fullname + '">' + opname.fullname + '</option>');
                });
            },
            error: function() {
                alert("Failed to fetch operators.");
                $('#op_name').html('<option value="">Select Operator Name</option>');
            }
        });
    } else {
        $('#op_name').html('<option value="">Select Operator Name</option>');
    }
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
<?= view('navbar/footer') ?>