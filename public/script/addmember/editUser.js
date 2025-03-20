$(document).on("click", ".edit-btn", function () {
    var userId = $(this).data("id");
    var $button = $(this);

    $button.prop("disabled", true).html(`<span class="spinner-border spinner-border-sm" aria-hidden="true"></span>`);

    $.ajax({
        url: "<?= site_url('addMemberc/getUser/') ?>" + userId,
        type: "GET",
        dataType: "json",
        success: function (response) {
            if (response.status === "success" && response.data) {
                var user = response.data;
                $("#updateUserId").val(user.id);
                $("#updateEmployeeId").val(user.employee_id);
                $("#updateFirstname").val(user.fname);
                $("#updateMiddlename").val(user.mname);
                $("#updateLastname").val(user.lname);
                $("#updateShift").val(user.id_shift).trigger("change");
                $("#updateUsername").val(user.username);
                $("#updateUserType").val(user.user_type).trigger("change");
                $("#updateFullName").val(user.fullname);
                $("#updateUserForm").data("id", user.id);
                $("#updateUserModal").modal("show");
            } else {
                alert("Error: Unable to fetch user data.");
            }
        },
        error: function () {
            alert("Failed to fetch user data. Please try again.");
        },
        complete: function () {
            $button.prop("disabled", false).html("Edit");
        }
    });
});
