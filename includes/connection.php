<?php
	define("DB_HOST", "localhost");
	define("DB_NAME", "bookdatabase");
	define("DB_USER", "root");
	define("DB_PASS", "eugene254$");

	try 
	{

		// Connection to database
		$connection_database = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
		
	}
	catch(Exception $error) 
	{
		header("location: ../500.php");
	}
?>