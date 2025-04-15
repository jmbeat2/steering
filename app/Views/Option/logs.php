<?= view('navbar/navbar') ?>

<div class="container mt-4" style="max-width: 5000px; padding-left: 30px; padding-right: 30px;">
<!-- Button to trigger the modal -->
<button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#instructionsModal">
    View Instructions
</button>
<!-- Modal Structure -->
<div class="modal fade" id="instructionsModal" tabindex="-1" aria-labelledby="instructionsModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="instructionsModalLabel">Instructions</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="accordion" id="instructionsAccordion">
                    <!-- How to Use Section -->
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="howToUseHeading">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#howToUse" aria-expanded="true" aria-controls="howToUse">
                                How shift or change shift, it works?
                            </button>
                        </h2>
                        <div id="howToUse" class="accordion-collapse collapse show" aria-labelledby="howToUseHeading" data-bs-parent="#instructionsAccordion">
                            <div class="accordion-body">
                            <ul class="list-group">
                                <li class="list-group-item d-flex align-items-center">
                                    <i class="bi bi-sun me-2"></i>
                                    <span><strong>Step 1:</strong> If you see Duty: "1" → "2", it means the user is switched to Day Shift (DS).</span>
                                </li>
                                <li class="list-group-item d-flex align-items-center">
                                    <i class="bi bi-moon me-2"></i>
                                    <span><strong>Step 2:</strong> If you see Duty: "2" → "1", it means the user is switched to Night Shift (NS).</span>
                                </li>
                                <li class="list-group-item d-flex align-items-center">
                                    <i class="bi bi-calendar-x me-2"></i>
                                    <span><strong>Step 3:</strong> If you see Duty: "0", it means the user is on Rest Day (RD).</span>
                                </li>
                            </ul>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Steps Section -->
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="stepsHeading">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#steps" aria-expanded="false" aria-controls="steps">
                                How to change password?
                            </button>
                        </h2>
                        <div id="steps" class="accordion-collapse collapse" aria-labelledby="stepsHeading" data-bs-parent="#instructionsAccordion">
                            <div class="accordion-body">
                            <ul class="list-group">
                                
                                 <li class="list-group-item d-flex align-items-center">
                                    <i class="bi bi-calendar-x me-2"></i>
                                    <span><strong><i class="fad fa-info-circle"></i> Reminder:</strong> Users cannot change their passwords for security purposes. Only an admin can change a user's password.</span>
                                    </li>
                                    <li class="list-group-item d-flex align-items-center">
                                    <i class="bi bi-sun me-2"></i>
                                <span>
                                    <strong>Step 1:</strong> Go to <a href="your-link-here" class="text-decoration-none">Manage</a> 
                                    <i class="fas fa-long-arrow-alt-right"></i> 
                                    <a href="<?= site_url('addMemberc/index') ?>" class="text-decoration-none">Add Leader</a> 
                                    <i class="fas fa-long-arrow-alt-right"></i> 
                                    Below, see the list and click on the user whose password you want to change.
                                 </span>
                                </li>
                            </ul>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Tips Section -->
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="tipsHeading">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#tips" aria-expanded="false" aria-controls="tips">
                            Error codes
                            </button>
                        </h2>
                        <div id="tips" class="accordion-collapse collapse" aria-labelledby="tipsHeading" data-bs-parent="#instructionsAccordion">
                            <div class="accordion-body">
                            <ul class="list-group">
                                <li class="list-group-item d-flex align-items-center">
                                    <i class="bi bi-sun me-2"></i>
                                    <span><strong>01A Error:</strong> No DS or NS assigned, meaning the database should only use integers to prevent errors. Please see, the link <a href="#steps">"How to change password?"</a>
                                    </span>
                                    </li>
                                    <li class="list-group-item d-flex align-items-center">
                                    <i class="bi bi-calendar-x me-2"></i>
                                    <span><strong><i class="fad fa-info-circle"></i> Reminder:</strong>The reason that error codes is showing, becuase N/A meaning no set shift.</span>
                                    </li>
                                   
                            </ul>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Warnings Section -->
                    <!-- <div class="accordion-item">
                        <h2 class="accordion-header" id="warningsHeading">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#warnings" aria-expanded="false" aria-controls="warnings">
                                Warnings
                            </button>
                        </h2> -->
                        <!-- <div id="warnings" class="accordion-collapse collapse" aria-labelledby="warningsHeading" data-bs-parent="#instructionsAccordion">
                            <div class="accordion-body">
                                <ul>
                                    <li>Warning 1: Avoid leaving your account logged in on shared computers.</li>
                                    <li>Warning 2: Do not enter personal or sensitive information in unsecured fields.</li>
                                    <li>Warning 3: Make sure to back up important data regularly.</li>
                                </ul>
                            </div>
                        </div> -->
                    <!-- </div> -->
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<br><br>
    <!-- Responsive wrapper -->
    <div class="table-responsive">
        <table id="logsTable" class="table table-bordered table-striped table-hover align-middle">
            <thead class="table-dark text-center">
                <tr>
                    <th style="min-width: 110px;">User ID</th>
                    <th style="min-width: 110px;">Action</th>
                    <th>Description</th>
                    <th style="min-width: 110px;">Hostname</th>
                    <th style="min-width: 200px;">Time</th>
                </tr>
            </thead>
            <tbody id="logsTableBody">
                <!-- AJAX will populate this -->
            </tbody>
        </table>
    </div>
</div>

<!-- Styling -->
<style>
    /* Ensure text wrapping is applied for long text */
    .table th, .table td {
        text-align: center;
        font-size: 0.95rem;
        padding: 0.75rem;
        word-break: break-word;  /* This ensures long text will break and wrap */
        white-space: normal;  /* Allow wrapping of long words */
    }

    /* Make description column more flexible for long content */
    .table td.description {
        text-align: left;  /* Align descriptions to the left */
        white-space: normal;
        word-wrap: break-word;
    }

    .table-responsive {
        overflow-x: auto;  /* Enable horizontal scrolling on small screens */
    }

    /* DataTables responsive behavior */
    .dataTables_wrapper .dataTables_scrollBody {
        max-height: 400px;
        overflow-y: auto;
    }

    @media (max-width: 768px) {
        .table th, .table td {
            font-size: 0.875rem;
            padding: 0.5rem;
        }
    }

    /* Optional: Style the columns with long content for better readability */
    .table .description {
        word-wrap: break-word;
        max-width: 200px;  /* Limit the width of the description cell */
        overflow: hidden;  /* Hide overflowed text */
        text-overflow: ellipsis;  /* Show ellipsis if text overflows */
    }
</style>

<!-- DataTables (include if not yet included) -->


<!-- AJAX Script -->
<script>
$(document).ready(function () {
    const table = $('#logsTable').DataTable({
        searching: true,
        paging: true,
        info: true,
        responsive: true,
        pageLength: 2,
        autoWidth: false,
        language: {
            search: "Search logs:",
            paginate: {
                previous: "Prev",
                next: "Next"
            },
            emptyTable: "No logs available."
        }
    });

    function fetchLogs() {
        // Show loading message
        $('#logsTableBody').html('<tr><td colspan="5" class="loading">Loading logs...</td></tr>');

        $.ajax({
            url: "<?= base_url('activityLogs/fetchLogs') ?>",
            method: 'GET',
            success: function (response) {
                const logs = response.logs;
                table.clear();

                if (logs.length === 0) {
                    $('#logsTableBody').html('<tr><td colspan="5" class="text-center">No logs available.</td></tr>');
                } else {
                    logs.forEach(log => {
                        let formattedDate = new Date(log.created_at).toLocaleString('en-PH', {
                            timeZone: 'Asia/Manila',
                            year: 'numeric',
                            month: 'long',
                            day: 'numeric',
                            hour: '2-digit',
                            minute: '2-digit',
                            second: '2-digit',
                            hour12: true
                        });

                        table.row.add([
                            log.user_id,
                            log.action_type,
                            log.action_description,
                            log.ip_address,
                            formattedDate
                        ]);
                    });
                    table.draw();
                }
            },
            error: function () {
                alert('Failed to fetch logs.');
                $('#logsTableBody').html('<tr><td colspan="5" class="text-center">Failed to load logs.</td></tr>');
            }
        });
    }

    fetchLogs();
});

// Manually trigger the accordion collapse when clicking the link
document.querySelector('a[href="#steps"]').addEventListener('click', function(e) {
    e.preventDefault();
    const stepsAccordion = new bootstrap.Collapse(document.getElementById('steps'), {
        toggle: true
    });
});

</script>

<?= view('navbar/footer') ?>
