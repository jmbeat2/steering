$(document).ready(function () {
    $("#addUserForm").submit(function (e) {
        e.preventDefault();
        var formData = $(this).serialize() + "&<?= csrf_token() ?>=<?= csrf_hash() ?>";

        $.ajax({
            url: "<?= site_url('addMemberc/addUser') ?>",
            type: "POST",
            data: formData,
            dataType: "json",
            success: function (response) {
                if (response.status === "success") {
                    $("#addUserModal").modal("hide");
                    $("#addUserForm")[0].reset();
                    window.location.reload();
                } else {
                    alert("Error: " + response.message);
                }
            },
            error: function (xhr) {
                alert("AJAX Error: " + xhr.responseText);
            }
        });
    });
});
