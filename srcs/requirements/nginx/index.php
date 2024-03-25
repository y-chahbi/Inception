<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Ychahbi</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
</head>
<body>
    <p>hello from html 2 </p>

    <?php
        $servername = "md"; // Container name of the MariaDB container
        $username = "ychahbi";
        $password = "hello001";
        $database = "db";

        // Create connection
        echo "last step!";
        $conn = new mysqli($servername, $username, $password, $database);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
            echo "Connected Error";
        }

        echo "Connected successfully";
    ?>
</body>
</html>