<!DOCTYPE html>
<html lang="en" class="h-100" data-bs-theme="auto">
<head>
  <meta charset="UTF-8">
  <title>Sticky Footer</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrap CSS -->

</head>

<body class="d-flex flex-column h-100">

  <!-- Page Content -->
  <main class="flex-shrink-0">
    <div class="container my-5">
     
    </div>
  </main>

  <!-- Sticky Footer -->
  <footer class="footer mt-auto py-3 border-top bg-body-tertiary">
    <div class="container d-flex flex-wrap justify-content-between align-items-center">
      <div class="col-md-6 d-flex align-items-center">
        <a href="<?= base_url('public/image/nbc-bg-dashboard.jpg') ?>" class="me-2 text-decoration-none lh-1" aria-label="NBC Logo">
          <img src="<?= base_url('public/image/nbc-bg-dashboard.jpg') ?>" alt="NBC Logo" width="80" height="30" class="align-middle">
        </a>
        <span class="text-muted align-middle">&copy; <?= date('Y') ?> NBC (Philippines) Car Technology Corporation</span>
      </div>

      <ul class="nav col-md-6 justify-content-end list-unstyled d-flex">
        <li class="ms-3">
          <a class="text-muted" href="https://www.instagram.com" target="_blank" aria-label="Instagram">
            <svg class="bi" width="24" height="24"><use xlink:href="#instagram" /></svg>
          </a>
        </li>
        <li class="ms-3">
          <a class="text-muted" href="https://www.facebook.com" target="_blank" aria-label="Facebook">
            <svg class="bi" width="24" height="24"><use xlink:href="#facebook" /></svg>
          </a>
        </li>
      </ul>
    </div>
  </footer>


</body>
</html>
