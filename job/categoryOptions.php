<?php
// Include the database connection file
include 'connect.php';

// Fetch job categories from the database
$sql = "SELECT category_name FROM job_categories";
$result = $conn->query($sql);

// Check if there are rows
if ($result->num_rows > 0) {
    // Loop through the rows and fetch category names
    while ($row = $result->fetch_assoc()) {
        $categoryName = $row['category_name'];
        // Output each category as an option
        echo "<option>$categoryName</option>";
    }
}

// Close connection
$conn->close();
?>
