<?= view('navbar/navbar') ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Defect Tracking Board</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }

        .board {
            width: 90%;
            margin: 30px auto;
            border-collapse: collapse;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            background-color: #ffffff;
        }

        .board th, .board td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
            font-size: 14px;
        }

        .board th {
            background-color: #007BFF;
            color: white;
            font-weight: bold;
        }

        .header {
            background-color: #f0f0f0;
            font-weight: bold;
        }

        .category {
            background-color: #ddd;
            font-weight: bold;
            text-align: left;
            padding-left: 15px;
        }

        .highlight {
            background-color: #f8c830;
            font-weight: bold;
        }

        .total-column {
            background-color: #8fc9f2;
            font-weight: bold;
        }

        .board td:hover {
            background-color: #f1f1f1;
            cursor: pointer;
        }

        .highlight:hover {
            background-color: #e1a800;
        }

        .category-column {
            background-color: #f4f4f4;
        }
    </style>
</head>
<body>
    <h2>Defect Tracking Board</h2>

    <table class="board" id="defectTable">
        <thead>
            <!-- Header Row for Title and Date -->
            <tr class="header">
                <th colspan="3" class="highlight">INPROCESS DEFECT</th>
                <th colspan="3" class="highlight">DAILY ATTENDANCE</th>
            </tr>

            <!-- Row for "WRONG INSERT" and People (Arlene, Rose) -->
            <tr class="header">
                <td rowspan="2" class="highlight">WRONG INSERT</td>
                <td>Arlene</td>
                <td>Rose</td>
                <td>Arlene</td>
            </tr>
            <tr class="header">
                <td>SHIFT</td>
                <td>Arlene / Mitch</td>
                <td>Rose / CJ</td>
            </tr>

            <!-- Row for "NOT FULLY INSERTED" and People (Arlene, Rose) -->
            <tr class="header">
                <td rowspan="2" class="highlight">NOT FULLY INSERTED</td>
                <td>Arlene</td>
                <td>Rose</td>
                <td>Arlene</td>
            </tr>
            <tr class="header">
                <td>SHIFT</td>
                <td>Arlene / Mitch</td>
                <td>Rose / CJ</td>
            </tr>

            <!-- Category Header Row -->
            <tr class="header">
                <th rowspan="2" class="category-column">Category</th>
                <th colspan="31">Defect Summary</th>
                <th rowspan="2" class="total-column">Total</th>
                <th rowspan="2" class="total-column">Crosstrain</th>
                <th rowspan="2" class="total-column">Skilled</th>
            </tr>

            <!-- Date Header Row -->
            <tr class="header" id="dateHeaders"></tr>
        </thead>

        <tbody id="defectData">
            <!-- Data rows will be populated here dynamically -->
        </tbody>
    </table>

    <script>
        async function fetchDefectData() {
            try {
                let response = await fetch(`<?= base_url('Calendarc/getAllDefects') ?>`);
                let data = await response.json();
                console.log("Fetched defect data:", data);

                // Fetch Crosstrain and Skilled data from the backend dynamically
                let crosstrainResponse = await fetch(`<?= base_url('Crosstrainc/index') ?>`);
                let crosstrainData = await crosstrainResponse.json();
                console.log("Fetched Crosstrain and Skilled data:", crosstrainData);

                populateTable(data, crosstrainData);  // Pass data and Crosstrain/Skilled data to populateTable
            } catch (error) {
                console.error("Error fetching defect data:", error);
            }
        }

        function populateTable(data, crosstrainData) {
            let defectTable = document.getElementById("defectData");
            defectTable.innerHTML = "";

            let categories = {};
            let dateHeaders = document.getElementById("dateHeaders");
            dateHeaders.innerHTML = "";

            // Generate headers for dates (1 to 31)
            for (let i = 1; i <= 31; i++) {
                dateHeaders.innerHTML += `<th>${i}</th>`;
            }

            // Process the defect data
            data.forEach(defect => {
                let category = defect.defect_type;
                let day = new Date(defect.defect_date).getDate();
                let count = parseInt(defect.total_count);

                // Initialize category if not yet defined
                if (!categories[category]) {
                    categories[category] = { counts: new Array(31).fill(0), total: 0 };
                }

                // Fill the data for the specific day
                categories[category].counts[day - 1] += count;
                categories[category].total += count;
            });

            // Populate the table with defect data
            let rowCount = 0;  // Counter to limit Crosstrain and Skilled rows to 8
            for (let category in categories) {
                let row = `<tr><td class="category">${category}</td>`;
                let total = 0;

                // Add counts for each day of the month
                for (let i = 0; i < 31; i++) {
                    let count = categories[category].counts[i];
                    row += `<td>${count}</td>`;
                    total += count;
                }

                // Add totals for the defect category
                row += `<td>${categories[category].total}</td>`;

                // Get Crosstrain and Skilled data for this category (from crosstrainData)
                let crosstrain = crosstrainData[rowCount] ? crosstrainData[rowCount].crosstrain : "-";
                let skilled = crosstrainData[rowCount] ? crosstrainData[rowCount].skilled : "-";

                // Display Crosstrain and Skilled only for the first 8 rows
                if (rowCount < 8) {
                    row += `<td>${crosstrain}</td>`;
                    row += `<td>${skilled}</td>`;
                }

                row += `</tr>`;
                defectTable.innerHTML += row;

                rowCount++;
            }
        }

        window.onload = fetchDefectData;
    </script>
</body>
</html>
