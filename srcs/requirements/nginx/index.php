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
    <p>hello from html 9 </p>

        <?php

            set_error_handler (
                function($errno, $errstr, $errfile, $errline) {
                    throw new ErrorException($errstr, $errno, 0, $errfile, $errline);     
                }
            );

            echo "PHP WORKING!";
            $servername = "mariadb"; // This should be the service name of your MariaDB container in Docker Compose
            $username = "ychahbi";
            $password = "hello001";
            $dbname = "db";
            echo "Connecting...";
            
            // Create connection
            try {
                $conn = mysqli_connect($servername, $username, $password, $dbname);
                echo "Connected successfully";

                // Check connection
                // if ($conn->connect_error) {
                //     echo "Connection failed: " . $conn->connect_error;
                // } else {
                //     echo "Connected successfully";
                // }
            } catch (Exception $e) {
                echo 'Caught exception: ',  $e->getMessage(), "\n";
            }
            
        ?>
</body>
</html>