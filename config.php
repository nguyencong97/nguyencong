<?php 
	$hostname = "localhost";
	$user = "root";
	$password = "";
	$database = "project_php29";
	//ket noi csdl
	$db = mysqli_connect($hostname,$user,$password,$database);
	mysqli_set_charset($db,"UTF8");
 ?>