<?php
  $host = "localhost";
  $username = "root";
  $password = "";
  $dbname = "db_jtdesigns";

  $conn = new mysqli($host, $username, $password, $dbname);

  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
  }

  //test cart db
  $db_Name = "db_jtdesigns";

  $db = new mysqli($host, $username, $password, $db_Name);

  if ($db->connect_error) {
      die("Unable to connect database: " . $db->connect_error);
  }
?>
