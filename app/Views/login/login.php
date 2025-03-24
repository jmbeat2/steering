<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Styles -->
    <link href="<?= base_url('public/assets/login/css/style.css') ?>" rel="stylesheet">

    <!-- FontAwesome Icons -->
    <link href="<?= base_url('public/assets/font-awesome-pro-5/v6.7.2/css/all.css') ?>" rel="stylesheet">

    <!-- IziToast for notifications -->
    <link href="<?= base_url('public/assets/izi/dist/css/iziToast.min.css') ?>" rel="stylesheet">

    <!-- jQuery (Required before Bootstrap & IziToast) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        $(document).ready(function() {
            <?php if (session()->getFlashdata('success')) : ?>
                iziToast.success({
                    message: "<?= session()->getFlashdata('success'); ?>",
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
</head>

<body>
<div class="form-logo text-center mb-4">
    <img src="<?= base_url('public/image/nbc-letter-head.jpg') ?>" alt="Logo" class="logo">
</div>

<div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="login-box">
        <form id="loginForm" class="p-4 shadow-sm login-form rounded">
            <?= csrf_field() ?>
            <h4 class="text-center mb-3 fw-bold">SIGN IN</h4>
            <p class="text-center text-muted mb-4">Access your account using your credentials</p>
            <!-- Employee ID -->
            <div class="mb-3">
                <label class="form-label">Employee ID</label>
                <div class="input-group">
                    <span class="input-group-text"><i class="fa fa-user"></i></span>
                    <input type="text" class="form-control" name="employee_id" placeholder="Enter Employee ID" required>
                </div>
            </div>

            <!-- Password with Show/Hide -->
            <div class="mb-3 position-relative">
                <label class="form-label">Password</label>
                <div class="input-group">
                    <span class="input-group-text"><i class="fa fa-lock"></i></span>
                    <input type="password" id="password" class="form-control" name="password" placeholder="Enter Password" required>
                    <button type="button" class="toggle-password" id="togglePassword">
                        <i class="fa fa-eye"></i>
                    </button>
                </div>
            </div>

            <!-- Forgot Password -->
            <!-- <div class="text-end mb-3">
                <a href="#" class="text-decoration-none text-primary">Forgot password?</a>
            </div> -->

            <button type="submit" class="btn btn-primary w-100">Login</button>

            <!-- Footer -->
            <div class="text-center text-muted mt-4">
                <small>&copy; <?= date('Y') ?> NBC Philippines Car Technology Corporation. All rights reserved.</small>
            </div>
        </form>
    </div>
</div>




    <!-- Bootstrap Bundle (Includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- IziToast JS -->
    <script src="<?= base_url('public/assets/izi/dist/js/iziToast.min.js') ?>"></script>

    <script>
        $(document).ready(function () {
            $("#loginForm").submit(function (event) {
                event.preventDefault();

                var formData = $(this).serialize();
                var csrfName = $("input[name=csrf_test_name]").attr("name");
                var csrfHash = $("input[name=csrf_test_name]").val();

                $.ajax({
                    url: "<?= site_url('Empusersc/authenticate') ?>",
                    type: "POST",
                    data: formData + "&" + csrfName + "=" + csrfHash,
                    dataType: "json",
                    success: function (response) {
                        if (response.success) {
                            window.location.href = "<?= base_url('/') ?>";
                        } else {
                            $("#error").text(response.error).removeClass('d-none');
                            window.location.reload();
                        }
                    },
                    error: function () {
                        $("#error").text("Something went wrong!").removeClass('d-none');
                    }
                });
            });
        });
    </script>

<script>
    document.getElementById("togglePassword").addEventListener("click", function () {
        let passwordField = document.getElementById("password");
        let toggleIcon = this.querySelector("i");

        // Toggle password visibility
        if (passwordField.type === "password") {
            passwordField.type = "text";
            toggleIcon.classList.replace("fa-eye", "fa-eye-slash");
        } else {
            passwordField.type = "password";
            toggleIcon.classList.replace("fa-eye-slash", "fa-eye");
        }
    });
</script>




</body>
</html>
