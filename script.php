<?php
$servername = "localhost";
$username = "root"; 
$password = ""; 
$dbname = "projform"; 

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$firstName = mysqli_real_escape_string($conn, $_POST['firstName']);
$lastName = mysqli_real_escape_string($conn, $_POST['lastName']);
$dob = $_POST['dob'];
$email = mysqli_real_escape_string($conn, $_POST['email']);
$phone = mysqli_real_escape_string($conn, $_POST['phone']);
$state = mysqli_real_escape_string($conn, $_POST['state']);
$gender = $_POST['gender'];
$newsletter = isset($_POST['newsletter']) ? 1 : 0;

$sql = "INSERT INTO dane (firstName, lastName, dob, email, phone, state, gender, newsletter)
VALUES ('$firstName', '$lastName', '$dob', '$email', '$phone', '$state', '$gender', '$newsletter')";

if ($conn->query($sql) === TRUE) {
  echo "Dane zostały pomyślnie zapisane";
} else {
  echo "Błąd: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>