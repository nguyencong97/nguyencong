<?php 
	class controller_logout{
		public function __construct(){
			//huy session c_email
			unset($_SESSION['c_email']);
			//quay tro lai trang admin
			header("location:admin.php");
		}
	}
	new controller_logout();

 ?>