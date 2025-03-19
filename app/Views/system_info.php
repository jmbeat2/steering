<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>System Information</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-4">
        <h2>Server Information</h2>
        <table class="table table-bordered">
            <tbody>
                <?php foreach ($server as $key => $value): ?>
                    <tr>
                        <th><?= esc($key) ?></th>
                        <td><?= esc($value) ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

        <h2>Client Information</h2>
        <table class="table table-bordered">
            <tbody>
                <?php foreach ($client as $key => $value): ?>
                    <tr>
                        <th><?= esc($key) ?></th>
                        <td><?= esc($value) ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

        <h2>Browser & OS Details</h2>
        <table class="table table-bordered">
            <tbody>
                <tr><th>Browser</th><td id="browser"></td></tr>
                <tr><th>Platform</th><td id="platform"></td></tr>
            </tbody>
        </table>
    </div>

    <script>
        document.getElementById("browser").innerText = navigator.userAgent;
        document.getElementById("platform").innerText = navigator.platform;
    </script>
</body>
</html>
