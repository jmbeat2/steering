
<link href="<?= base_url('public/assets/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet" />
<link href="<?= base_url('public/assets/cdn/css/dataTables.bootstrap5.min.css') ?>" rel="stylesheet" />

<!-- CALENDAR (But not needed.) -->
<link href="<?= base_url('public/assets/css/fullcalendar.css') ?>" rel="stylesheet" />
<link href="<?= base_url('public/assets/css/fullcalendar.print.css') ?>" rel="stylesheet" />


<!-- UNCOMMENT KUNG GUSTO MO MAKITA SESSIONS MO -->
<!-- <?php
echo '<pre>';
print_r(session()->get());
echo '</pre>';
?> -->


<style>
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
</style>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold text-uppercase" href="<?= site_url('') ?>">Steering Information</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link active" href="<?= site_url('defects') ?>">Defects Information</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="<?= site_url('addAttendance') ?>">Attendance</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="optionsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Options
          </a>
          <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="optionsDropdown">
            <li><a class="dropdown-item" href="<?= site_url('addMemberc/index') ?>">Add Member</a></li>
            <li><a class="dropdown-item" href="#">Add Announcement</a></li>
            <li><a class="dropdown-item" href="#">Add Shift</a></li>
            <li><a class="dropdown-item" href="#">Add Defect</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <i class="bi bi-person-circle"></i> Account
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








<!-- GOING REMOVE -->

<!-- LINKS -->
 
<!-- <link href="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/main.min.css" rel="stylesheet"> -->
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"> -->
<!-- <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css"> -->


<!-- SCRIPTS -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script> -->

<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
<!-- <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script> -->
<!-- <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script> -->

<!-- Calendar -->
<!-- <script src="<?= base_url('public/assets/js/jquery-1.10.2.js') ?>"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<script src="<?= base_url('public/assets/js/jquery-ui.custom.min.js') ?>"></script>
<script src="<?= base_url('public/assets/js/fullcalendar.js') ?>"></script> -->