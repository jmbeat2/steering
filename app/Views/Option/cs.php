<?= view('navbar/navbar') ?>


<script>
    $(document).ready(function() {
        <?php if (session()->getFlashdata('success')) : ?>
            iziToast.success({
                title: '',
                message:  'Hello '+ "<?= isset($_SESSION['lname']) ? $_SESSION['lname'] : '' ?> <?= session()->getFlashdata('success'); ?>",
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
                <a class="link-body-emphasis fw-semibold text-decoration-none" href="<?= site_url('Crosstrainc') ?>">Manage</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">
                <a class="link-body-emphasis fw-semibold text-decoration-none" href="<?= site_url('Crosstrainc') ?>">Crosstrain</a>
            </li>
        </ol>
    </nav>
</div>

<div class="container mt-4">
    <h2 class="text-left">Crosstrain & Skilled</h2>
    <button class="btn btn-primary mb-3" id="addNewBtn" data-bs-toggle="modal" data-bs-target="#addModal">
        <i class="fal fa-plus-square"></i> Add New
    </button>
    <table id="csTable" class="table table-bordered table-hover">
        <thead class="table-dark">
            <tr>
                <th style="min-width: 120px;">Crosstrain</th>
                <th style="min-width: 120px;">Skilled</th>
                <th style="min-width: 120px;">Actions</th>
            </tr>
        </thead>
        <tbody></tbody>
    </table>
</div>

<!-- Add/Edit Modal -->
<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add / Edit Crosstrain</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <form id="csForm">
                    <?= csrf_field() ?>
                    <input type="hidden" id="id" name="id">
                    <div class="mb-3">
                        <label for="crosstrain" class="form-label">Crosstrain</label>
                        <input type="text" class="form-control" id="crosstrain" name="crosstrain" required>
                    </div>
                    <div class="mb-3">
                        <label for="skilled" class="form-label">Skilled</label>
                        <input type="text" class="form-control" id="skilled" name="skilled" required>
                    </div>
                    <button type="submit" class="btn btn-primary" id="saveBtn">Save</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
$(document).ready(function () {
    let table = $('#csTable').DataTable({
        "ajax": "<?= base_url('Crosstrainc/fetch') ?>",
        "columns": [
            { "data": "crosstrain" },
            { "data": "skilled" },
            {
                "data": null,
                "render": function (data, type, row) {
                    return `
                        <button class='btn btn-warning btn-sm editBtn' data-id='${row.id}'>
                            <i class="fal fa-edit"></i> Edit
                        </button>
                        <button class='btn btn-danger btn-sm deleteBtn' data-id='${row.id}'>
                            <i class="fal fa-trash-alt"></i> Delete
                        </button>`;
                }
            }
        ],
        responsive: true
    });

    // Display Flash Messages
    let flashSuccess = "<?= session()->getFlashdata('success') ?>";
    let flashError = "<?= session()->getFlashdata('error') ?>";

    if (flashSuccess) {
        iziToast.success({
            title: 'Success!',
            message: flashSuccess,
            position: 'topRight'
        });
    }
    if (flashError) {
        iziToast.error({
            title: 'Error!',
            message: flashError,
            position: 'topRight'
        });
    }

    // Open Add Modal
    $('#addNewBtn').on('click', function () {
        $('#csForm')[0].reset();
        $('#id').val('');
        $('#addModal').modal('show');
    });

    // Handle Add/Edit Form Submission
    $('#csForm').on('submit', function (e) {
        e.preventDefault();
        let formData = $(this).serialize();
        let $submitButton = $('#saveBtn');

        $submitButton.prop("disabled", true).html(`
            <span class="spinner-border spinner-border-sm" aria-hidden="true"></span> Saving...
        `);

        $.ajax({
            url: "<?= base_url('Crosstrainc/save') ?>",
            type: "POST",
            data: formData,
            success: function () {
                window.location.reload();
            },
            error: function () {
                $submitButton.prop("disabled", false).html('Save');
            }
        });
    });

    // Handle Edit Button Click
    $(document).on('click', '.editBtn', function () {
        let id = $(this).data('id');

        $.ajax({
            url: "<?= base_url('Crosstrainc/get/') ?>" + id,
            type: "GET",
            dataType: "json",
            success: function (data) {
                if (data && data.id) {
                    $('#id').val(data.id);
                    $('#crosstrain').val(data.crosstrain);
                    $('#skilled').val(data.skilled);
                    $('#addModal').modal('show');
                }
            }
        });
    });

    // Handle Delete Request
    $(document).on('click', '.deleteBtn', function () {
        let id = $(this).data('id');

        iziToast.show({
            title: 'Confirm Delete',
            message: 'Are you sure you want to delete this record?',
            position: 'center',
            timeout: false,
            close: false,
            overlay: true,
            buttons: [
                ['<button><b>Yes</b></button>', function (instance, toast) {
                    instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');

                    $.ajax({
                        url: "<?= base_url('Crosstrainc/delete/') ?>" + id,
                        type: "POST",
                        data: {
                            "<?= csrf_token() ?>": $('input[name="<?= csrf_token() ?>"]').val(),
                            "_method": "DELETE"
                        },
                        success: function () {
                            window.location.reload();
                        }
                    });
                }, true],
                ['<button>No</button>', function (instance, toast) {
                    instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');
                }]
            ]
        });
    });
});

</script>
