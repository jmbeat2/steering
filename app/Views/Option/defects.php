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
    <br><br>

    <h2>DEFECTS</h2>
    <!-- Defect Submission Form -->
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
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody id="defect-table-body">
                <!-- Data will be loaded via AJAX -->
            </tbody>
        </table>
    </div>
</div>

<!-- Edit Modal -->
<div class="modal fade" id="editDefectModal" tabindex="-1" aria-labelledby="editDefectModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form id="editDefectForm">
      <div class="modal-content">
      <div class="modal-header bg-warning text-dark">
          <h5 class="modal-title"><i class="fal fa-edit"></i> Edit Defect</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
        </div>
        <div class="modal-body">
          <input type="hidden" name="id" id="edit-id">
          <div class="mb-3">
            <label for="edit-name" class="form-label"><i class="far fa-user"></i> Operator Name</label>
            <input type="text" class="form-control" id="edit-name" name="name" required>
          </div>
          <div class="mb-3">
            <label for="edit-defect-type" class="form-label"><i class="fal fa-exclamation-triangle"></i> Defect Type</label>
            <input type="text" class="form-control" id="edit-defect-type" name="defect_type" required>
          </div>
          <div class="mb-3">
            <label for="edit-count" class="form-label"><i class="fal fa-tally"></i> Count</label>
            <input type="number" class="form-control" id="edit-count" name="count" required>
        </div>
          <div class="mb-3">
            <label for="edit-defect-date" class="form-label"><i class="fal fa-calendar"></i> Date</label>
            <input type="date" class="form-control" id="edit-defect-date" name="defect_date" required>
          </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-primary">Save changes</button>
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        </div>
      </div>
      <!-- <input type="hidden" name="id" id="defect_id"> -->
    </form>
  </div>
</div>


<script>

const csrfName = "<?= csrf_token() ?>"; // CSRF token name (usually 'csrf_test_name')
const csrfHash = "<?= csrf_hash() ?>"; // Actual CSRF token value


$(document).ready(function() {
    let table = $('#defectsTable').DataTable({
        processing: true,
        serverSide: false,
        ajax: {
            url: "<?= site_url('defects/fetchDefects1') ?>",
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
                            return '<span class="badge bg-success"><i class="fas fa-sun me-1"></i> Day Shift</span>';
                        case '2':
                        case 2:
                            return '<span class="badge bg-dark"><i class="fas fa-moon me-1"></i> Night Shift</span>';
                        default:
                            return '<span class="badge bg-danger"><i class="fas fa-question-circle me-1"></i> Unknown</span>';
                    }
                }
            },
            { data: "name" },
            { data: "defect_type" },
            { data: "total", className: "text-center" },
            { data: "defect_date" },
            { data: "encodeby", className: "text-center" },
            {
            data: null,
            orderable: false,
            className: "text-center",
            render: function(data, type, row) {
    return `
        <button class="btn btn-sm btn-warning edit-btn"
            data-id="${row.id}"
            data-name="${row.name}"
            data-defect_type="${row.defect_type}"
            data-count="${row.count}"
            data-defect_date="${row.defect_date ?? ''}">
            Edit
        </button>
        <button class="btn btn-sm btn-danger delete-btn"
            data-id="${row.id}">
            Delete
        </button>
    `;
}


        }
            
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

    $(document).on('click', '.edit-btn', function() {
    $('#edit-id').val($(this).data('id'));
    $('#edit-name').val($(this).data('name'));
    $('#edit-defect-type').val($(this).data('defect_type'));
    $('#edit-count').val($(this).data('count'));

    // Convert "April 6, 2025" → "2025-04-06"
    const rawDate = $(this).data('defect_date');
    const parsedDate = new Date(rawDate);
    const formattedDate = parsedDate.toISOString().split('T')[0]; // "YYYY-MM-DD"

    $('#edit-defect-date').val(formattedDate); // this sets the date input properly

    $('#editDefectModal').modal('show');
});




$('#editDefectForm').submit(function(e) {
    e.preventDefault();

    $.ajax({
    url: "<?= site_url('Defects/updateDefect') ?>",
    type: "POST",
    data: $(this).serialize() + "&" + csrfName + "=" + csrfHash, // ✅ Append CSRF token
    dataType: "json",
    success: function(response) {
        if (response.status === 'success') {
            iziToast.success({ title: '', message: response.message, position: 'topRight' });
            $('#editDefectModal').modal('hide');
            // $('#defectsTable').DataTable().ajax.reload(null, false);
            window.location.reload();
            } else {
                iziToast.error({ title: 'Error', message: response.message, position: 'topRight' });
              }
            }
        });
    });
});
</script>

<script>
// Handle Delete Click with iziToast Confirmation
$(document).on('click', '.delete-btn', function() {
    const id = $(this).data('id');

    iziToast.question({
        timeout: false,
        close: false,
        overlay: true,
        displayMode: 'once',
        title: 'Are you sure?',
        message: 'Do you really want to delete this defect?',
        position: 'center',
        buttons: [
            ['<button><b>Yes, Delete</b></button>', function (instance, toast) {
                instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');

                // Proceed with deletion
                $.ajax({
                    url: "<?= site_url('Defects/deleteDefect') ?>",
                    type: "POST",
                    data: {
                        id: id,
                        <?= csrf_token() ?>: "<?= csrf_hash() ?>"
                    },
                    dataType: "json",
                    success: function(response) {
                        if (response.status === 'success') {
                            iziToast.success({ title: '', message: response.message, position: 'topRight' });
                            // $('#defectsTable').DataTable().ajax.reload(null, false);
                            window.location.reload();
                        } else {
                            iziToast.error({ title: 'Error', message: response.message, position: 'topRight' });
                        }
                    }
                });
            }, true],
            ['<button>Cancel</button>', function (instance, toast) {
                instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');
            }]
        ]
    });
});

</script>

</body>
</html>
<?= view('navbar/footer') ?>