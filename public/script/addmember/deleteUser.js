$(document).on("click", ".delete-btn", function () {
    var userId = $(this).data("id");
    var $button = $(this);

    iziToast.question({
        timeout: 20000,
        close: false,
        overlay: true,
        displayMode: 'once',
        title: 'Confirm Deletion',
        message: 'Are you sure you want to delete this user?',
        position: 'center',
        buttons: [
            ['<button><b>Yes</b></button>', function (instance, toast) {
                instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');
                $button.prop("disabled", true).html(`<span class="spinner-border spinner-border-sm" aria-hidden="true"></span> Deleting...`);

                $.ajax({
                    url: "<?= site_url('addMemberc/deleteUser/') ?>" + userId,
                    type: "POST",
                    data: {
                        "<?= csrf_token() ?>": "<?= csrf_hash() ?>"
                    },
                    dataType: "json",
                    success: function (response) {
                        if (response.status === "success") {
                            iziToast.success({
                                title: 'Deleted!',
                                message: 'User has been removed successfully.',
                                position: 'topRight'
                            });
                            setTimeout(() => window.location.reload(), 1000);
                        } else {
                            iziToast.error({
                                title: 'Error',
                                message: response.message,
                                position: 'topRight'
                            });
                            $button.prop("disabled", false).html('Delete');
                        }
                    },
                    error: function (xhr) {
                        iziToast.error({
                            title: 'AJAX Error',
                            message: xhr.responseText,
                            position: 'topRight'
                        });
                        $button.prop("disabled", false).html('Delete');
                    }
                });
            }, true],

            ['<button>No</button>', function (instance, toast) {
                instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');
            }]
        ]
    });
});
