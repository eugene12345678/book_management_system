<?php
    $query = "SELECT * FROM `book_table` ORDER BY `book_id` ASC LIMIT 9";  // Fetch from the first (oldest) book
    
    $result = mysqli_query($connection_database, $query);
?>
