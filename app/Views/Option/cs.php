<?= view('navbar/navbar') ?>

<script>
    $(document).ready(function() {
        <?php if (session()->getFlashdata('success')) : ?>
            iziToast.success({
                title: '',
                message: 'Hello ' + "<?= isset($_SESSION['lname']) ? $_SESSION['lname'] : '' ?> <?= session()->getFlashdata('success'); ?>",
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

    $(document).ready(function() {
    <?php if (session()->getFlashdata('message')) : ?>
        iziToast.success({
            title: '',
            message: "<?= session()->getFlashdata('message'); ?>",
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
    <h2 class="text-left" id="pageTitle">Loading title...</h2>
    <button class="btn btn-secondary mb-3" id="editTitleBtn">Edit Title</button>
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

<!-- Edit Title Modal -->
<div class="modal fade" id="editTitleModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit Title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <div class="modal-body">
                <input type="text" id="newTitleInput" class="form-control" placeholder="Enter new title">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary" id="saveTitleBtn">Save</button>
            </div>
        </div>
    </div>
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
    let csrfTokenName = "<?= csrf_token() ?>"; 
    let csrfHash = "<?= csrf_hash() ?>";

    /** ✅ Load title from database */
    function fetchTitle() {
        $.getJSON("<?= base_url('Crosstrainc/getTitle') ?>", function (data) {
            $("#pageTitle").text(data.title);
        });
    }
    fetchTitle();

    /** ✅ Edit Title */
    $("#editTitleBtn").click(function () {
        $("#newTitleInput").val($("#pageTitle").text());
        $("#editTitleModal").modal("show");
    });

    $("#saveTitleBtn").click(function () {
        let newTitle = $("#newTitleInput").val().trim();
        if (newTitle) {
            $.post("<?= base_url('Crosstrainc/updateTitle') ?>", { 
                title: newTitle,
                [csrfTokenName]: csrfHash
            })
            .done(function () {
                $("#pageTitle").text(newTitle);
                $("#editTitleModal").modal("hide");
                window.location.reload();
         
            })
            .fail(function () {
                iziToast.error({ message: "Failed to update title.", position: "topRight" });
            });
        }
    });

    /** ✅ Initialize DataTable */
    let table = $('#csTable').DataTable({
        "ajax": "<?= base_url('Crosstrainc/fetch') ?>",
        "columns": [
            { "data": "crosstrain" },
            { "data": "skilled" },
            {
                "data": null,
                "render": function (data) {
                    return `
                        <button class='btn btn-warning btn-sm editBtn' data-id='${data.id}'>
                            <i class="fal fa-edit"></i> Edit
                        </button>
                        <button class='btn btn-danger btn-sm deleteBtn' data-id='${data.id}'>
                            <i class="fal fa-trash-alt"></i> Delete
                        </button>`;
                }
            }
        ],
        responsive: true
    });


    /** ✅ Open Add Modal */
    $('#addNewBtn').on('click', function () {
        $('#csForm')[0].reset();
        $('#id').val('');
        $('#addModal').modal('show');
    });

    /** ✅ Handle Add/Edit Form Submission */
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
                $('#addModal').modal('hide');
                window.location.reload();
                table.ajax.reload(null, false);
                iziToast.success({ message: "Record saved successfully!", position: "topRight" });
            },
            error: function () {
                $submitButton.prop("disabled", false).html('Save');
                iziToast.error({ message: "Failed to save record.", position: "topRight" });
            }
        });
    });

    /** ✅ Handle Edit Button Click */
    $(document).on('click', '.editBtn', function () {
        let id = $(this).data('id');

        $.getJSON("<?= base_url('Crosstrainc/get/') ?>" + id, function (data) {
            if (data.id) {
                $('#id').val(data.id);
                $('#crosstrain').val(data.crosstrain);
                $('#skilled').val(data.skilled);
                $('#addModal').modal('show');
            }
        });
    });

/** ✅ Handle Delete Action */
$(document).on('click', '.deleteBtn', function () {
    let id = $(this).data('id');
    if (!id) return iziToast.error({ message: "Invalid ID!", position: "topRight" });

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
                    type: "POST", // Keep as POST but send DELETE override
                    data: {
                        "_method": "DELETE", // ✅ Force DELETE request
                        "<?= csrf_token() ?>": "<?= csrf_hash() ?>"
                    },
                    success: function () {
                        table.ajax.reload(null, false);
                        iziToast.success({ message: "Record deleted successfully!", position: "topRight" });
                    },
                    error: function () {
                        iziToast.error({ message: "Failed to delete record.", position: "topRight" });
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
