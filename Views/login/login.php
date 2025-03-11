<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?= base_url('public/assets/login/css/style.css') ?>" rel="stylesheet" />
</head>
<body>
    <div class="container-fluid">
        <form id="loginForm" class="mx-auto mt-5">
            <?= csrf_field() ?>  
            <h4 class="text-center">Login</h4>
            <div id="error" class="alert alert-danger d-none"></div>
            
            <div class="mb-3 mt-5">
                <label class="form-label">Employee ID</label>
                <input type="text" class="form-control" name="employee_id" required>
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" class="form-control" name="password" required>
                <div class="form-text mt-3">Forget password?</div>
            </div>
            <button type="submit" class="btn btn-primary mt-3">Login</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
$(document).ready(function () {
    $("#loginForm").submit(function (event) {
        event.preventDefault(); // Prevent default form submission

        var csrfName = "<?= csrf_token() ?>";  // CSRF token name
        var csrfHash = "<?= csrf_hash() ?>";   // CSRF token hash

        $.ajax({
            url: "<?= site_url('Empusersc/authenticate') ?>",
            type: "POST",
            data: $("#loginForm").serialize() + "&" + csrfName + "=" + csrfHash,
            dataType: "json",
            success: function (response) {
                if (response.success) {
                    window.location.href = "<?= base_url('/') ?>"; // Redirect on success
                } else {
                    $("#error").text(response.error).removeClass('d-none');
                }
            },
            error: function () {
                $("#error").text("Something went wrong!").removeClass('d-none');
            }
        });
    });
});

</script>


</body>
</html>
