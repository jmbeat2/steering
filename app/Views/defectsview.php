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
        <a class="link-body-emphasis fw-semibold text-decoration-none" href="<?= site_url('defects') ?>">Defect tracking system</a>
      </li>
      <li class="breadcrumb-item active" aria-current="page">
        
      </li>
    </ol>
  </nav>
</div>


<div class="container mt-3">
    <time id="current-time"></time>
    <br><br>

    <h2>Defect Tracking System</h2>
    <!-- Defect Submission Form -->
    <form action="<?= site_url('defects/store') ?>" method="post">
    <?= csrf_field() ?>
    <div class="row g-3">
        <div class="col-12 col-sm-6 col-md-3">
            <label for="defect_type" class="form-label">Select Defect Type</label>
            <select name="defect_type" id="defect_type" class="form-select" required>
                <!-- Populate defect types here -->
            </select>
        </div>
        <div class="col-12 col-sm-6 col-md-3">
            <label for="shift" class="form-label">Shift</label>
            <?php
                $shift = session()->get('duty');
                $shiftText = '';

                switch ($shift) {
                    case '2':
                        $shiftText = 'Day Shift';
                        break;
                    case '1':
                        $shiftText = 'Night Shift';
                        break;
                    default:
                        $shiftText = 'N/A'; // Default to Night Shift if duty is not set
                }
                ?>

                <input type="text" class="form-control" id="shift" name="shift" value="<?= $shiftText ?>" required disabled>
                <input type="hidden" name="shift" value="<?= $shiftText ?>">
        </div>
        <div class="col-12 col-sm-6 col-md-3">
            <label for="name" class="form-label"> Name</label>
            <input type="text" class="form-control" id="name" name="name" value="<?= session()->get('fullname') ?>" required disabled >
        </div>
        <div class="col-12 col-sm-6 col-md-3">
            <label for="count" class="form-label">Defect Count</label>
            <input type="number" name="count" class="form-control" min="1" required>
        </div>

        <input type="hidden" class="form-control" id="empid" name="empid" value="<?= session()->get('employee_id') ?>" required readonly>

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
