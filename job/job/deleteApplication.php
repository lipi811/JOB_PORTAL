<?php
include 'connect.php';

// Check if the 'id' parameter is set in the URL
if(isset($_GET['id'])) {
    // Sanitize the input to prevent SQL injection
    $applicationId = mysqli_real_escape_string($conn, $_GET['id']);

    // Perform the deletion query
    $deleteQuery = "DELETE FROM jobsapplied WHERE id = '$applicationId'";
    $result = $conn->query($deleteQuery);

    echo '<script>';
    if($result) {
        // Deletion successful
        echo 'alert("Application deleted successfully!");';
    } else {
        // Deletion failed
        echo 'alert("Error deleting application: ' . $conn->error . '");';
    }
    echo 'window.location.href="ViewApplicantsAdmin.php";';
    echo '</script>';
} else {
    // 'id' parameter not set in the URL
    echo '<script>alert("Invalid request. Application ID not provided.");</script>';
}

// Close the database connection
$conn->close();
?>
