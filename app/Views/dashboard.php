<?= view('navbar/navbar') ?>

<script>
    $(document).ready(function() {
        <?php if (session()->getFlashdata('message')) : ?>
            iziToast.success({
                title: '',
                message: "<?= session()->getFlashdata('message'); ?>",
                position: 'topRight'
            });
        <?php endif; ?>
    });
</script>


<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Defect Tracking Board</title>
    <link href="<?= base_url('public/assets/dashboard/css/style.css') ?>" rel="stylesheet" />
  </head>
  <body>
    <h2>Defect Tracking Board</h2>
    <table class="board" id="defectTable">
      <thead>
        <tr class="header">
          <th rowspan="2" class="category-column">Category</th>
          <th colspan="31" class="text-center bg-primary text-white">Defect Summary - <?= date('F Y'); ?></th>
          <th class="total-column text-center bg-danger text-white">Total</th>
          <th colspan="2" id="employeeSkillsTitle" class="text-center bg-primary text-white">Add title here</th>
        </tr>
        <tr class="header" id="dateHeaders">
          <?php for ($i = 1; $i <= 31; $i++): ?>
            <th><?= $i; ?></th>
          <?php endfor; ?>
          <th class="total-column bg-danger text-white">Sum</th>
          <th class="bg-primary text-white">Crosstrain</th>
          <th class="bg-primary text-white">Skilled</th>
        </tr>
      </thead>
      <tbody id="defectData"></tbody>
      
      <!-- In-Process Defect Section -->
      <tr>
        <th colspan="1" class="highlight">INPROCESS DEFECT</th>
        <td colspan="10" id="wrongInsertData"></td>
        <td colspan="13" id="notFullyInsertedData"></td>
      </tr>

      <!-- Daily Attendance & Top 5 Defects Section -->
      <tr class="header">
        <th colspan="7" class="highlight text-center bg-success text-white">DAILY ATTENDANCE</th>
        <th colspan="5" id="employeeSkillsTitle1" class="highlight text-center bg-warning text-dark">TOP 5 MOST COMMON DEFECTS</th>
      </tr>
      <tr>
        <!-- Daily Attendance -->
        <td colspan="7">
          <table style="width: 100%; border-collapse: collapse;">
            <tr class="attendance text-center">
              <th>DS</th>
              <th>NS</th>
              <th>Total MP</th>
              <th>Rate</th>
              <th>SL</th>
              <th>VL</th>
              <th>NU</th>
            </tr>
            <tr class="attendance-data text-center">
              <td id="ds-count">-</td>
              <td id="ns-count">-</td>
              <td id="total-mp">-</td>
              <td id="rate">-</td>
              <td id="sl">-</td>
              <td id="vl">-</td>
              <td id="nu">-</td>
            </tr>
          </table>
        </td>

        <!-- Top 5 Defects -->
        <td colspan="5">
          <div id="topDefectsContainer" style="padding: 0.5rem;">
          <ol id="topDefectsList" class="list-group list-group-numbered px-2 my-2">
  <!-- List items will go here dynamically -->
</ol>
          </div>
        </td>
      </tr>
    </table>

    <script>
async function fetchDefectAssignments() {
  try {
    let response = await fetch(`<?= base_url('Inprocessc/getDefectAssignments') ?>`);
    let data = await response.json();
    console.log("Fetched Data:", data);

    const wrongInsertList = data.wrong_insert.map(e => `${e.lname} [${e.duty == 1 ? 'Night Shift' : 'Day Shift'}]`).join(', ');
    const notFullyInsertList = data.not_fully_inserted.map(e => `${e.lname} [${e.duty == 1 ? 'Night Shift' : 'Day Shift'}]`).join(', ');

    document.getElementById("wrongInsertData").innerText = wrongInsertList ? `Wrong insert: ${wrongInsertList}` : 'No data';
    document.getElementById("notFullyInsertedData").innerText = notFullyInsertList ? `Wrong fully insert: ${notFullyInsertList}` : 'No data';

  } catch (error) {
    console.error("Error fetching defect assignments:", error);
  }
}


      async function fetchDefectData() {
        try {
          let response = await fetch(`<?= base_url('Calendarc/getAllDefects') ?>`);
          let data = await response.json();
          let crosstrainResponse = await fetch(`<?= base_url('Crosstrainc/index') ?>`);
          let crosstrainData = await crosstrainResponse.json();
          populateDefectSummary(data, crosstrainData);
        } catch (error) {
          console.error("Error fetching defect data:", error);
        }
      }

      function populateDefectSummary(data, crosstrainData) {
        let defectTable = document.getElementById("defectData");
        defectTable.innerHTML = "";
        let categories = {};
        let totals = {}; // <-- new: for tracking total per defect type

        for (let defect of data) {
          let category = defect.defect_type;
          let day = new Date(defect.defect_date).getDate();
          let count = parseInt(defect.total_count);

          if (!categories[category]) {
            categories[category] = new Array(31).fill(0);
            totals[category] = 0;
          }
          categories[category][day - 1] += count;
          totals[category] += count; // accumulate total
        }

        let rowIndex = 0;
        for (let category in categories) {
          let row = `<tr><td class="category">${category}</td>`;
          let total = 0;
          categories[category].forEach(count => { row += `<td>${count}</td>`; total += count; });
          row += `<td>${total}</td>`;
          row += `<td>${crosstrainData[rowIndex]?.crosstrain || '-'}</td>`;
          row += `<td>${crosstrainData[rowIndex]?.skilled || '-'}</td>`;
          row += `</tr>`;
          defectTable.innerHTML += row;
          rowIndex++;
        }

        // 🔝 Generate Top 5 List
        let topList = Object.entries(totals)
          .sort((a, b) => b[1] - a[1])
          .slice(0, 5);

        let topDefectsList = document.getElementById("topDefectsList");
        topDefectsList.innerHTML = "";
        topList.forEach(([type, count], index) => {
          topDefectsList.innerHTML += `
  <li class="list-group-item d-flex justify-content-between align-items-center">
    <div class="d-flex align-items-center">
      <i class="bi bi-exclamation-triangle-fill text-danger me-2"></i>
      <strong>${type}</strong>
    </div>
    <span class="badge bg-danger rounded-pill">${count}</span>
  </li>`;

        });
      }

      async function fetchAttendanceData() {
        try {
          let response = await fetch('<?= base_url("/dailyattendancec") ?>');
          let data = await response.json();
          let attendance = data[0] || {};
          document.getElementById('ds-count').innerText = attendance.ds_count || '-';
          document.getElementById('ns-count').innerText = attendance.ns_count || '-';
          document.getElementById('total-mp').innerText = attendance.total_mp || '-';
          document.getElementById('rate').innerText = attendance.rate || '-';
          document.getElementById('sl').innerText = attendance.sl || '-';
          document.getElementById('vl').innerText = attendance.vl || '-';
          document.getElementById('nu').innerText = attendance.nu || '-';
        } catch (error) {
          console.error("Error fetching attendance data:", error);
        }
      }

      async function fetchEmployeeSkillsTitle() {
        try {
          let response = await fetch(`<?= base_url('empSkills/getTitle') ?>`);
          let data = await response.json();
          
          if (data && data.title) {
              document.getElementById("employeeSkillsTitle").innerText = data.title;
          }
        } catch (error) {
          console.error("Error fetching Employee Skills Breakdown title:", error);
        }
      }

      async function fetchEmployeeSkillsTitle1() {
        try {
          let response = await fetch(`<?= base_url('empSkills/getTitle1') ?>`);
          let data = await response.json();
          
          if (data && data.title) {
              document.getElementById("employeeSkillsTitle1").innerText = data.title;
          }
        } catch (error) {
          console.error("Error fetching Employee Skills Breakdown title:", error);
        }
      }

      document.addEventListener("DOMContentLoaded", function() {
        fetchEmployeeSkillsTitle(); // Fetch and update the title dynamically
        fetchEmployeeSkillsTitle1(); // Fetch and update the title for top 5 dynamically
      });

      function refreshData() {
        fetchDefectAssignments();
        fetchDefectData();
        fetchAttendanceData();
        fetchEmployeeSkillsTitle(); // Fetch and update the title dynamically
        fetchEmployeeSkillsTitle1(); // Fetch and update the title for top 5 dynamically
      }

      document.addEventListener("DOMContentLoaded", function() {
        refreshData();
        setInterval(refreshData, 50000);
      });
    </script>
  </body>
</html>

