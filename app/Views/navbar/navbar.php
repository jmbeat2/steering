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
<!-- NAVBAR STYLE -->
<link href="<?= base_url('public/assets/navbar/css/style.css') ?>" rel="stylesheet" />
<!-- IZITOAST -->
<link href="<?= base_url('public/assets/izi/dist/css/iziToast.css') ?>" rel="stylesheet" />
<link href="<?= base_url('public/assets/izi/dist/css/iziToast.min.css') ?>" rel="stylesheet" />

<style>
.form-check-input:checked {
  background-color: #198754; /* Bootstrap success */
  border-color: #198754;
}

</style>

<meta name="csrf-token" content="<?= csrf_hash() ?>">
<meta name="csrf-header" content="<?= csrf_header() ?>">

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
                        <li><a class="dropdown-item" href="<?= site_url('addMemberc/index') ?>"> &nbsp; <i class="fal fa-user-crown"></i>&nbsp;&nbsp; Leader</a></li>
                        <li><a class="dropdown-item" href="<?= site_url('defects/defectsViews') ?>">&nbsp;<i class="fad fa-times"></i>&nbsp;&nbsp;&nbsp;&nbsp; Defects</a></li>
                        <li><a class="dropdown-item" href="<?= site_url('operators/index') ?>">&nbsp;<i class="fal fa-users"></i>&nbsp;&nbsp; Operators</a></li>
                        <!-- <li><a class="dropdown-item" href="<?= site_url('/') ?>">&nbsp;<i class="far fa-tachometer"></i></i>&nbsp;&nbsp;&nbsp; Dashboard</a></li> -->
                        <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#OpenDashboard">&nbsp;<i class="fal fa-tachometer"></i>&nbsp;&nbsp;&nbsp; Dashboard</a></li>
                        <li><a class="dropdown-item" href="<?= site_url('addAttendance') ?>">&nbsp;<i class="fal fa-clipboard-user"></i></i>&nbsp;&nbsp;&nbsp; &nbsp;Attendance</a></li>
                        <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#editTitleModal">&nbsp;<i class="fal fa-edit"></i>&nbsp;&nbsp;&nbsp;&nbsp;Edit title for Top 5</a></li>
                        <li><a class="dropdown-item" href="<?= site_url('Crosstrainc') ?>">&nbsp;<i class="fal fa-tools"></i>&nbsp;&nbsp;&nbsp; Crosstrain and skilled</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle d-flex align-items-center underline-link" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="fad fa-user"></i>&nbsp;Hi, <?php echo session()->get('fullname'); ?> &nbsp; <i class="far fa-caret-down"></i>

                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
                        <li><hr class="dropdown-divider"></li>
                        <?php if (session()->get('user_type') == 1): ?>
                            <li>
                                <a class="dropdown-item" href="<?= base_url('activityLogs') ?>">
                                    <i class="far fa-clipboard"></i> Logs
                                </a>
                                <a class="dropdown-item" href="<?= base_url('activityLogs/indexdb') ?>">
                                <i class="far fa-database"></i> Database
                                </a>
                            </li>
                        <?php endif; ?>
                        <li><a class="dropdown-item text-danger" href="<?= base_url('logout') ?>"><i class="far fa-sign-out"></i> Logout</a></li>                    
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Edit Title Modal For Top 5 List -->
<div class="modal fade" id="editTitleModal" tabindex="-1" aria-labelledby="editTitleLabel" aria-hidden="true">
  <div class="modal-dialog">
    <form id="editTitleForm">
      <div class="modal-content">
      <div class="modal-header bg-warning text-dark">
          <h5 class="modal-title" id="editTitleLabel"><i class="far fa-edit"></i> Edit Top 5 Title</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <input type="text" class="form-control" id="top5TitleInput" name="title" required placeholder="Enter new title">
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-primary">Save Title</button>
        </div>
      </div>
    </form>
  </div>
</div>

<!-- Edit Title Modal For Top 5 List -->
<div class="modal fade" id="OpenDashboard" tabindex="-1" aria-labelledby="OpenDashboard" aria-hidden="true">
  <div class="modal-dialog">
    <form id="OpenDashboardForm">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="editTitleLabel">Dashboard Settings</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <!-- Hidden Inputs -->
          <div id="defectInputs" style="display: none;">
            <input type="text" name="defect_type" value="Half-locked connector" required>
            <input type="text" name="defect_type" value="Damaged lance" required>
            <input type="text" name="defect_type" value="Wrong use of VT" required>
            <input type="text" name="defect_type" value="Deformed/bend terminal" required>
            <input type="text" name="defect_type" value="Dent by lance" required>
            <input type="text" name="defect_type" value="Incoming defect" required>
            <input type="text" name="defect_type" value="Mark on VT" required>
            <input type="text" name="defect_type" value="Stain connector" required>
            <input type="text" name="defect_type" value="Droop wire/excess tab" required>
            <input type="text" name="defect_type" value="Deformed terminal" required>
            <input type="text" name="defect_type" value="Short/long wire" required>
            <input type="text" name="defect_type" value="Broken/damaged connector" required>
            <input type="text" name="defect_type" value="Peel-off terminal" required>
            <input type="text" name="defect_type" value="Excess mold" required>
            <input type="text" name="defect_type" value="Wrong insert" required>
          </div>

          <!-- Switch -->
          <div class="form-check form-switch">
          <div class="form-check form-switch d-flex align-items-center gap-2">
            <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault" <?= $category_toggle ? 'checked' : '' ?>>
            <!-- <label class="form-check-label mb-0" for="flexSwitchCheckDefault">Show / Hide Category</label> -->
            <span id="switchStatus" class="badge <?= $category_toggle ? 'bg-success' : 'bg-danger' ?> ms-2">
                <?= $category_toggle ? 'Show all category without defects record' : 'Hide all without defects record category' ?>
            </span>
        </div>

          </div>
        </div>
        <div class="modal-footer">
        <button type="button" id="saveChangesBtn" class="btn btn-primary">Save Changes</button>
        </div>
      </div>
    </form>
  </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function () {
    const toggleSwitch = document.getElementById('flexSwitchCheckDefault');

    if (toggleSwitch) {
        toggleSwitch.addEventListener('change', function (e) {
            e.preventDefault();  // Prevent form submission
            e.stopPropagation(); // Prevent bubbling

            const isChecked = this.checked;
            const csrfToken = '<?= csrf_hash() ?>';
            const csrfTokenName = '<?= csrf_token() ?>';

            // Save toggle state via AJAX
            $.ajax({
                url: "<?= site_url('defects/saveGlobalToggle') ?>",
                method: "POST",
                data: {
                    toggle_state: isChecked ? 1 : 0,
                    [csrfTokenName]: csrfToken
                },
                success: function (res) {
                    console.log('Toggle saved:', res);
                },
                error: function (err) {
                    console.error("Error saving toggle state:", err);
                }
            });

            // Add default defects if toggle is ON
            if (isChecked) {
                const formData = new FormData();
                formData.append('count', 0);
                const defects = [
                    'Half-locked connector', 'Damaged lance', 'Wrong use of VT',
                    'Deformed/bend terminal', 'Dent by lance', 'Incoming defect',
                    'Mark on VT', 'Stain connector', 'Droop wire/excess tab',
                    'Deformed terminal', 'Short/long wire', 'Broken/damaged connector',
                    'Peel-off terminal', 'Excess mold', 'Wrong insert'
                ];

                defects.forEach(defect => {
                    formData.append('defect_type[]', defect);
                });

                formData.append(csrfTokenName, csrfToken);

                fetch("<?= site_url('defects/store1') ?>", {
                    method: "POST",
                    body: formData,
                    headers: {
                        'X-Requested-With': 'XMLHttpRequest',
                        'X-CSRF-TOKEN': csrfToken
                    }
                })
                .then(async res => {
                    const text = await res.text();
                    try {
                        const data = JSON.parse(text);
                        console.log("Defects saved:", data);
                    } catch (e) {
                        console.error("Unexpected response (not JSON):", text);
                    }
                })
                .catch(err => {
                    console.error("Error saving defects:", err);
                });

            } else {
                // Delete defects when toggle is OFF
                $.ajax({
                    url: "<?= site_url('defects/deleteZeroCountDefects') ?>",
                    method: "POST",
                    data: {
                        toggle_state: 0,
                        [csrfTokenName]: csrfToken
                    },
                    success: function (res) {
                        console.log('Zero count defects deleted:', res);
                    },
                    error: function (err) {
                        console.error("Error deleting defects:", err);
                    }
                });
            }

            // Close the modal after changes
           
        });
    }
});

document.getElementById('saveChangesBtn').addEventListener('click', function () {
    // Store a success message in sessionStorage before the page reloads
    sessionStorage.setItem('settingsSaved', 'true');

    // Simulate the save action, then reload the page
    setTimeout(() => {
        location.reload(); // Reload the page
    }, 500); // Delay for 500ms before reload (to let the storage set)
});

// After the page reloads, check for the success message in sessionStorage
window.addEventListener('load', function () {
    if (sessionStorage.getItem('settingsSaved') === 'true') {
        // Show iziToast notification after the page reloads
        iziToast.success({
            title: 'Settings',
            message: 'successfully saved!',
            position: 'topRight', // Position of the toast
            timeout: 3000, // Duration the toast stays
        });

        // Clear the sessionStorage after showing the toast
        sessionStorage.removeItem('settingsSaved');
    }
});

</script>

<script>
document.addEventListener('DOMContentLoaded', function () {
    const toggleSwitch = document.getElementById('flexSwitchCheckDefault');
    const switchStatus = document.getElementById('switchStatus');

    toggleSwitch.addEventListener('change', function () {
        const isChecked = this.checked;

        // Set badge text
        switchStatus.textContent = isChecked ? 'Show all category without defects record' : 'Hide all without defects record category';

        // Set badge color
        switchStatus.classList.remove('bg-success', 'bg-danger');
        switchStatus.classList.add(isChecked ? 'bg-success' : 'bg-danger');
    });
});
</script>


<script>

function openEditTitleModal(currentTitle) {
  document.getElementById("top5TitleInput").value = currentTitle;
  const editTitleModal = new bootstrap.Modal(document.getElementById('editTitleModal'));
  editTitleModal.show();
}

document.getElementById("editTitleForm").addEventListener("submit", async function (e) {
  e.preventDefault();
  const newTitle = document.getElementById("top5TitleInput").value;

  // Get CSRF info from meta tags
  const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
  const csrfHeader = document.querySelector('meta[name="csrf-header"]').getAttribute('content');

  try {
    let response = await fetch("<?= base_url('empSkills/updateTitle1') ?>", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        [csrfHeader]: csrfToken  // 👈 include CSRF token
      },
      body: JSON.stringify({ title: newTitle })
    });

    let result = await response.json();
    if (result.status === 'success') {
      window.location.reload();
    } else {
      alert("Failed to update title.");
    }
  } catch (err) {
    console.error("Error updating title:", err);
  }
});
</script>
<!-- END OF JAVASCRIPT -->



<!-- Bootstrap 5 -->
<script src="<?= base_url('public/assets/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>

<!-- Datatables including JQuery -->
<script src="<?= base_url('public/assets/datables/js/jquery-3.6.0.min.js') ?>"></script>
<script src="<?= base_url('public/assets/datables/js/jquery.dataTables.min.js') ?>"></script>
<script src="<?= base_url('public/assets/datables/js/dataTables.bootstrap5.min.js') ?>"></script>


<script src="<?= base_url('public/assets/izi/dist/js/iziToast.min.js') ?>"></script>


</body>
</html>

