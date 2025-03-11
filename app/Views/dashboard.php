<?= view('navbar/navbar') ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Defect Tracking Board</title>
    <link href="<?= base_url('public/assets/dashboard/css/style.css') ?>" rel="stylesheet" />
    <style></style>
  </head>
  <body>
    <h2>Defect Tracking Board</h2>
    <table class="board" id="defectTable">
      <thead>
        <tr class="header">
          <th rowspan="2" class="category-column">Category</th>
          <th colspan="31">Defect Summary</th>
          <th rowspan="2" class="total-column">Total</th>
          <th rowspan="2" class="total-column">Crosstrain</th>
          <th rowspan="2" class="total-column">Skilled</th>
        </tr>
        <tr class="header" id="dateHeaders"></tr>
      </thead>
      <tbody id="defectData"></tbody>
      <!-- Section Titles -->
      <tr class="header">
        <th colspan="1" class="highlight">INPROCESS DEFECT</th>
        <th colspan="5" class="highlight">DAILY ATTENDANCE</th>
      </tr>
      <!-- Attendance Section -->
      <tr class="attendance">
        <th>Shift</th>
        <th>DS</th>
        <th>NS</th>
        <th>Total MP</th>
        <th>Rate</th>
        <th>SL</th>
        <th>VL</th>
        <th>NU</th>
      </tr>
      <tr class="attendance-data">
        <td>Shift</td>
        <td id="ds-count">36</td>
        <td id="ns-count">34</td>
        <td id="total-mp">70</td>
        <td id="rate"></td>
        <td id="sl"></td>
        <td id="vl"></td>
        <td id="nu"></td>
      </tr>
      <!-- Dynamic Defect Data -->
      <tbody id="wrongInsertData"></tbody>
      <tbody id="notFullyInsertedData"></tbody>
    </table>

    <script>
      // Fetch Defect Assignments
      async function fetchDefectAssignments() {
        try {
          let response = await fetch(`<?= base_url('Inprocessc/getDefectAssignments') ?>`);
          let data = await response.json();
          console.log("Fetched Data:", data);
          let wrongInsertTable = document.getElementById("wrongInsertData");
          let notFullyInsertedTable = document.getElementById("notFullyInsertedData");

          // Clear previous table data
          wrongInsertTable.innerHTML = "";
          notFullyInsertedTable.innerHTML = "";

          // Function to map duty numbers to readable text
          function getDutyText(duty) {
            switch (parseInt(duty)) {
              case 1: return "Day Shift";
              case 2: return "Night Shift";
              default: return "Unknown";
            }
          }

          // Function to generate table content
          function populateTable(tableElement, defectType, defectData) {
            if (defectData.length === 0) {
              tableElement.innerHTML = `
                <tr>
                  <td colspan="2">No data available</td>
                </tr>`;
              return;
            }
            let headerRow = `
              <tr class="header">
                <td class="highlight">${defectType}</td>
              </tr>`;
            tableElement.innerHTML = headerRow;

            defectData.forEach((entry) => {
              let row = `
                <tr>
                  <td colspan="1">${entry.lastname} - ${getDutyText(entry.shift_type)}</td>
                </tr>`;
              tableElement.innerHTML += row;
            });
          }

          // Populate both tables
          populateTable(wrongInsertTable, "WRONG INSERT", data.wrong_insert);
          populateTable(notFullyInsertedTable, "NOT FULLY INSERTED", data.not_fully_inserted);
        } catch (error) {
          console.error("Error fetching data:", error);
        }
      }

      // Fetch Defect Data
      async function fetchDefectData() {
        try {
          let response = await fetch(`<?= base_url('Calendarc/getAllDefects') ?>`);
          let data = await response.json();
          console.log("Fetched defect data:", data);

          let crosstrainResponse = await fetch(`<?= base_url('Crosstrainc/index') ?>`);
          let crosstrainData = await crosstrainResponse.json();
          console.log("Fetched Crosstrain and Skilled data:", crosstrainData);
          populateDefectSummary(data, crosstrainData);
        } catch (error) {
          console.error("Error fetching defect data:", error);
        }
      }

      // Populate Defect Summary
      function populateDefectSummary(data, crosstrainData) {
        let defectTable = document.getElementById("defectData");
        defectTable.innerHTML = "";
        let categories = {};
        let dateHeaders = document.getElementById("dateHeaders");
        dateHeaders.innerHTML = "";

        // Create date headers
        for (let i = 1; i <= 31; i++) {
          dateHeaders.innerHTML += `<th>${i}</th>`;
        }

        // Process defect data
        data.forEach(defect => {
          let category = defect.defect_type;
          let day = new Date(defect.defect_date).getDate();
          let count = parseInt(defect.total_count);

          if (!categories[category]) {
            categories[category] = {
              counts: new Array(31).fill(0),
              total: 0
            };
          }

          categories[category].counts[day - 1] += count;
          categories[category].total += count;
        });

        // Render the defect categories
        let rowCount = 0;
        for (let category in categories) {
          let row = `
            <tr>
              <td class="category">${category}</td>`;
          let total = 0;

          // Loop over days (1-31)
          for (let i = 0; i < 31; i++) {
            let count = categories[category].counts[i];
            row += `<td>${count}</td>`;
            total += count;
          }

          // Add total column
          row += `<td>${categories[category].total}</td>`;

          let crosstrain = crosstrainData[rowCount] ? crosstrainData[rowCount].crosstrain : "-";
          let skilled = crosstrainData[rowCount] ? crosstrainData[rowCount].skilled : "-";

          if (rowCount < 8) {
            row += `<td>${crosstrain}</td>`;
            row += `<td>${skilled}</td>`;
          }

          row += `</tr>`;
          defectTable.innerHTML += row;
          rowCount++;
        }
      }

      // Fetch attendance data
      async function fetchAttendanceData() {
        try {
          let attendanceData = {
            dsCount: 36,  // Example value, replace with dynamic data
            nsCount: 34,  // Example value, replace with dynamic data
            totalMp: 70,  // Example total, calculated
            rate: "", // Fetch or calculate rate
            sl: "", // Fetch or calculate SL
            vl: "", // Fetch or calculate VL
            nu: "", // Fetch or calculate NU
          };

          // Update the DOM with the fetched data
          document.getElementById('ds-count').innerText = attendanceData.dsCount;
          document.getElementById('ns-count').innerText = attendanceData.nsCount;
          document.getElementById('total-mp').innerText = attendanceData.totalMp;
          document.getElementById('rate').innerText = attendanceData.rate;
          document.getElementById('sl').innerText = attendanceData.sl;
          document.getElementById('vl').innerText = attendanceData.vl;
          document.getElementById('nu').innerText = attendanceData.nu;
        } catch (error) {
          console.error("Error fetching attendance data:", error);
        }
      }

      // Run functions on page load
      document.addEventListener("DOMContentLoaded", function() {
        fetchDefectAssignments();
        fetchDefectData();
        fetchAttendanceData();
      });
    </script>
  </body>
</html>
