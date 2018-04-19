<?php

$servername = "localhost";
$username = "rabbya";
$password = "gsphUPorD8Rxrtkz";
$db = "rabbya_final";

// Create connection
$con = mysqli_connect($servername, $username, $password,$db);

// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}


?>