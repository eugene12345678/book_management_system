<?php
// Connect to DB
include("../includes/db.php");


$fullname = $_POST['fullname'];
$username = $_POST['username'];
$password = $_POST['password'];
$confirm_password = $_POST['confirm_password'];
$contact_number = $_POST['contact_number'];
$email = $_POST['email'];
$question = $_POST['question'];
$answer = $_POST['answer'];


if ($password !== $confirm_password) {
    header("Location: ../register.php?error=Passwords do not match");
    exit();
}

$hashed_password = password_hash($password, PASSWORD_DEFAULT);


$sql = "INSERT INTO users (fullname, username, password, contact_number, email, question, answer)
        VALUES (?, ?, ?, ?, ?, ?, ?)";

$conn = new mysqli("localhost", "root", "", "your_database_name"); // update db name/user if needed

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$stmt = $conn->prepare($sql);
$stmt->bind_param("sssssss", $fullname, $username, $hashed_password, $contact_number, $email, $question, $answer);

if ($stmt->execute()) {
    header("Location: ../login.php?success=Registered successfully");
} else {
    echo "Error: " . $stmt->error;
}

$conn->close();
?>
