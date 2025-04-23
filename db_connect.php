<?php
$servername = "localhost"; // Database host (usually localhost for local development)
$username = "root"; // Your MySQL username
$password = ""; // Your MySQL password (leave empty if not set)
$dbname = "universityopendayapp"; // The name of the database you created

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>
