<?php 
//start session
	session_start();
	//load file config.php
	include "config.php";
	//load file model
	include "model/model.php";
	//kiểm tra xem user đã đăng hập chưa, nếu chưa đăng nhập thì hiên thị MVC login , nếu đã đăng nhập thf hiển thị các chức năng của admin
	if(isset($_SESSION['c_email'])==false)
		include "controller/backend/controller_login.php";
	else{
		//láy biến controller truyền url
		$controller = isset($_GET['controller'])?$_GET['controller']:"";
		//Gán gtri để biến $controller trở thành đường dẫn thực(là đường dẫn trỏ đến file controller cần load)
		$controller = "controller/backend/controller_$controller.php";
		//load file master
		include "view/backend/master.php";
	}


 ?>