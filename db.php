<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cooleey";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection to db failed: " . $conn->connect_error);
}

?>