<!DOCTYPE html>
<html lang="en">
<head>
  
<title><?= esc($title) ?></title> <!-- This sets the browser tab title -->

<link href="<?= base_url('public/assets/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet" />
<link href="<?= base_url('public/assets/cdn/css/dataTables.bootstrap5.min.css') ?>" rel="stylesheet" />

<!-- CALENDAR (But not needed.) -->
<link href="<?= base_url('public/assets/css/fullcalendar.css') ?>" rel="stylesheet" />
<link href="<?= base_url('public/assets/css/fullcalendar.print.css') ?>" rel="stylesheet" />

<!-- LINKS FOR FA v5 -->
<link href="<?= base_url('public/assets/font-awesome-pro-5/v6.7.2/css/all.css') ?>" rel="stylesheet" />

<style>
    /* Responsive Navbar */
    @media (max-width: 992px) {
        .navbar-nav {
            text-align: center;
        }
        .navbar-nav .nav-item {
            margin-bottom: 10px;
        }
        .dropdown-menu {
            text-align: center;
        }
    }

    /* Option & Account - Underline Slide Effect */
    .underline-link {
        position: relative;
        text-decoration: none;
        color: white;
        transition: color 0.3s ease-in-out;
    }
    .underline-link::after {
        content: '';
        position: absolute;
        width: 100%;
        height: 2px;
        background-color: white;
        bottom: -3px;
        left: 0;
        transform: scaleX(0);
        transition: transform 0.3s ease-in-out;
    }
    .underline-link:hover::after {
        transform: scaleX(1);
    }

    /* Option Icon Bounce Animation */
    .option-icon {
        transition: transform 0.3s ease-in-out;
    }
    .nav-link:hover .option-icon {
        animation: bounce 0.5s ease-in-out;
    }
    @keyframes bounce {
        0%, 100% { transform: scale(1); }
        50% { transform: scale(1.2); }
    }

    /* Account Icon Shake */
    .account-icon {
        transition: transform 0.2s ease-in-out;
    }
    .nav-link:hover .account-icon {
        animation: shake 0.3s ease-in-out;
    }
    @keyframes shake {
        0%, 100% { transform: translateX(0); }
        25% { transform: translateX(-2px); }
        50% { transform: translateX(2px); }
        75% { transform: translateX(-2px); }
    }
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm">
    <div class="container-fluid">
        <a class="navbar-brand fw-bold text-uppercase" href="<?= site_url('') ?>">Steering Information</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link defects-link underline-link" href="<?= site_url('defects') ?>"><i class="fas fa-ellipsis-v"></i></i>&nbsp; Defect Records &nbsp;</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle d-flex align-items-center underline-link" href="#" id="optionsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="fas fa-clipboard-list"></i> &nbsp; Manage &nbsp; <i class="far fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="optionsDropdown">
                        <li><a class="dropdown-item" href="<?= site_url('addMemberc/index') ?>"><i class="fad fa-users"></i>&nbsp; Add Member</a></li>
                        <li><a class="dropdown-item" href="<?= site_url('addAttendance') ?>">&nbsp;<i class="far fa-clipboard-user"></i>&nbsp;&nbsp; Add Attendance</a></li>
                        <!-- <li><a class="dropdown-item" href="#">Add Announcement</a></li>
                        <li><a class="dropdown-item" href="#">Add Shift</a></li>
                        <li><a class="dropdown-item" href="#">Add Defect</a></li> -->
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle d-flex align-items-center underline-link" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="fad fa-user"></i>&nbsp; Account &nbsp; <i class="far fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
                        <li><a class="dropdown-item" href="#">Profile</a></li>
                        <li><a class="dropdown-item" href="#">Settings</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item text-danger" href="<?= base_url('logout') ?>">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Bootstrap 5 -->
<script src="<?= base_url('public/assets/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>

<!-- Datatables including JQuery -->
<script src="<?= base_url('public/assets/datables/js/jquery-3.6.0.min.js') ?>"></script>
<script src="<?= base_url('public/assets/datables/js/jquery.dataTables.min.js') ?>"></script>
<script src="<?= base_url('public/assets/datables/js/dataTables.bootstrap5.min.js') ?>"></script>

</body>
</html>
