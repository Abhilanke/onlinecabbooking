<?php
// Database configuration
$dbuser = "root";
$dbpass = "";
$host = "localhost";
$db = "Cabbooking";

// Create a connection
$mysqli = new mysqli($host, $dbuser, $dbpass, $db);

// Check connection
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Prepare and bind SQL statement
    $stmt = $mysqli->prepare("INSERT INTO contact_entries (name, email, message) VALUES (?, ?, ?)");

    // Bind parameters
    $stmt->bind_param("sss", $name, $email, $message);

    // Set parameters and execute
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];
    
    // Validate inputs (you may add more validation as needed)
    if (empty($name) || empty($email) || empty($message)) {
        echo "All fields are required.";
    } else {
        if ($stmt->execute()) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $mysqli->error;
        }
    }

    // Close statement
    $stmt->close();
}

// Close connection
$mysqli->close();
?>
