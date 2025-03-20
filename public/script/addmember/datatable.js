$(document).ready(function () {
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
            { data: "duty" },
            { data: "username" },
            { data: "created_at" },
            {
                data: "id",
                render: function (data) {
                    return `
                        <button class="btn btn-warning btn-sm edit-btn" data-id="${data}"><i class="far fa-user-edit"></i> Edit</button>
                        <button class="btn btn-danger btn-sm delete-btn" data-id="${data}"><i class="fal fa-user-times"></i> Delete</button>
                    `;
                }
            }
        ]
    });
});
