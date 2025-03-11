<?= view('navbar/navbar') ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Defect Tracking Board</title>
    <link href="<?= base_url('public/assets/dashboard/css/style.css') ?>" rel="stylesheet" />
    <style>
       
    </style>
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
            <th colspan="3" class="highlight">INPROCESS DEFECT</th>
            <th colspan="5" class="highlight">DAILY ATTENDANCE</th>
        </tr>

        <!-- Dynamic Defect Data -->
        <tbody id="wrongInsertData"></tbody>
        <tbody id="notFullyInsertedData"></tbody>
    </table>

    <script>
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

        // Function to generate table content
        function populateTable(tableElement, defectType, defectData) {
            if (defectData.length === 0) {
                tableElement.innerHTML = `<tr><td colspan="2">No data available</td></tr>`;
                return;
            }

            // Create header row
            let headerRow = `
                <tr class="header">
                    <td class="highlight">${defectType}</td>
                    <td>Employee (Duty)</td>
                </tr>
            `;
            tableElement.innerHTML = headerRow;

            // Populate rows with lastname - duty
            defectData.forEach((entry) => {
                let row = `
                    <tr>
                        <td colspan="2">${entry.lastname} - ${entry.duty}</td>
                    </tr>
                `;
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

        function populateDefectSummary(data, crosstrainData) {
            let defectTable = document.getElementById("defectData");
            defectTable.innerHTML = "";

            let categories = {};
            let dateHeaders = document.getElementById("dateHeaders");
            dateHeaders.innerHTML = "";

            for (let i = 1; i <= 31; i++) {
                dateHeaders.innerHTML += `<th>${i}</th>`;
            }

            data.forEach(defect => {
                let category = defect.defect_type;
                let day = new Date(defect.defect_date).getDate();
                let count = parseInt(defect.total_count);

                if (!categories[category]) {
                    categories[category] = { counts: new Array(31).fill(0), total: 0 };
                }

                categories[category].counts[day - 1] += count;
                categories[category].total += count;
            });

            let rowCount = 0;
            for (let category in categories) {
                let row = `<tr><td class="category">${category}</td>`;
                let total = 0;

                for (let i = 0; i < 31; i++) {
                    let count = categories[category].counts[i];
                    row += `<td>${count}</td>`;
                    total += count;
                }

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

        // ✅ Run functions when page loads
        document.addEventListener("DOMContentLoaded", function () {
            fetchDefectAssignments();
            fetchDefectData();
        });
    </script>
</body>
</html>
