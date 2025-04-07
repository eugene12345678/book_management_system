<?php
    // Start the PHP session
    session_start();
    // effectively logging the user out
    session_destroy();

    header("location: index.php");

    exit();
?>