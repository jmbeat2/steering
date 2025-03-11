<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
<link href="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/main.min.css" rel="stylesheet">

<link href="<?= base_url('public/assets/css/fullcalendar.css') ?>" rel="stylesheet" />
<link href="<?= base_url('public/assets/css/fullcalendar.print.css') ?>" rel="stylesheet" />


<!-- UNCOMMENT KUNG GUSTO MO MAKITA SESSIONS MO -->
<?php
print_r(session()->get());
?>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="<?= site_url('') ?>">Steering Information</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<?= site_url('defects') ?>">Defects information</a>
        </li>
        <!-- <li class="nav-item">
          <a class="nav-link" href="#">Features</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Pricing</a>
        </li> -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Option
          </a>


        <!-- Displaying the initial date-time from PHP -->
       
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="<?= site_url('addMemberc/index') ?>">Add member</a></li>
            <li><a class="dropdown-item" href="#">Add annoucement</a></li>
            <li><a class="dropdown-item" href="#">Add shift</a></li>
            <li><a class="dropdown-item" href="#">Add defect</a></li>
          </ul>
        </li>

        <!-- <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown link
          </a>


        Displaying the initial date-time from PHP
       
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><a class="dropdown-item" href="#">Logout</a></li>
          </ul>
        </li>

      </ul>
    </div>
  </div> -->

</nav>

<!-- Bootstrap 5 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>



<!-- Datatables including JQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>

<!-- Calendar -->
<!-- <script src="<?= base_url('public/assets/js/jquery-1.10.2.js') ?>"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<script src="<?= base_url('public/assets/js/jquery-ui.custom.min.js') ?>"></script>
<script src="<?= base_url('public/assets/js/fullcalendar.js') ?>"></script>


