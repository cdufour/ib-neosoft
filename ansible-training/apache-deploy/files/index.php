<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Apache</title>
</head>
<body>
    <h1>Apache</h1>

    

    <?php
      // ToDO: test de connection au serveur mariadb
      $servername = "127.0.0.1";
      $username = "root";
      $password = "password";
      $dbname = "ansible";

      try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "Connected successfully to MariaDb";
      } catch(PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
      }

      $message = "PHP works very well !";
      echo "<p>" . $message . "</p>"

    ?>

</body>
</html>