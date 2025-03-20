$(document).ready(function () {
    $("#updateUserForm").submit(function (e) {
        e.preventDefault();
        var userId = $("#updateUserId").val();

        var formData = {
            employee_id: $("#updateEmployeeId").val(),
            fname: $("#updateFirstname").val(),
            mname: $("#updateMiddlename").val(),
            lname: $("#updateLastname").val(),
            id_shift: $("#updateShift").val(),
            username: $("#updateUsername").val(),
            user_type: $("#updateUserType").val(),
            "<?= csrf_token() ?>": "<?= csrf_hash() ?>"
        };

        $.ajax({
            url: "<?= site_url('addMemberc/updateUser/') ?>" + userId,
            type: "POST",
            data: formData,
            dataType: "json",
            success: function (response) {
                if (response.status === "success") {
                    window.location.reload();
                    $("#updateUserModal").modal("hide");
                } else {
                    alert("Error: " + response.message);
                }
            },
            error: function (xhr) {
                console.error(xhr.responseText);
                alert("AJAX Error: " + xhr.responseText);
            }
        });
    });
});
