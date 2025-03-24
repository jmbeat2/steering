<?= view('navbar/navbar') ?>
<!DOCTYPE html>
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

  <!-- Daily Attendance Section -->
  <tr class="header">
    <th colspan="7" class="highlight">DAILY ATTENDANCE</th>
  </tr>
  <tr class="attendance">
    <th>DS</th>
    <th>NS</th>
    <th>Total MP</th>
    <th>Rate</th>
    <th>SL</th>
    <th>VL</th>
    <th>NU</th>
  </tr>
  <tr class="attendance-data">
    <td id="ds-count">-</td>
    <td id="ns-count">-</td>
    <td id="total-mp">-</td>
    <td id="rate">-</td>
    <td id="sl">-</td>
    <td id="vl">-</td>
    <td id="nu">-</td>
  </tr>
</table>

    <script>
      async function fetchDefectAssignments() {
        try {
          let response = await fetch(`<?= base_url('Inprocessc/getDefectAssignments') ?>`);
          let data = await response.json();
          console.log("Fetched Data:", data);
          document.getElementById("wrongInsertData").innerText = data.wrong_insert.map(e => `Wrong insert: ${e.lname} [${e.duty == 1 ? 'Night Shift' : 'Day Shift'}]`).join(', ') || 'No data';
          document.getElementById("notFullyInsertedData").innerText = data.not_fully_inserted.map(e => `Wrong fully insert: ${e.lname} [${e.duty == 1 ? 'Night Shift' : 'Day Shift'}]`).join(', ') || 'No data';
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
        for (let defect of data) {
          let category = defect.defect_type;
          let day = new Date(defect.defect_date).getDate();
          if (!categories[category]) {
            categories[category] = new Array(31).fill(0);
          }
          categories[category][day - 1] += parseInt(defect.total_count);
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

document.addEventListener("DOMContentLoaded", function() {
    fetchEmployeeSkillsTitle(); // Fetch and update the title dynamically
});

      
      function refreshData() {
        fetchDefectAssignments();
        fetchDefectData();
        fetchAttendanceData();
        fetchEmployeeSkillsTitle();
      }

      document.addEventListener("DOMContentLoaded", function() {
        refreshData();
        setInterval(refreshData, 50000);
      });
    </script>
  </body>
</html>
