<?php 
	class controller_login{
		public $model;
		public function __construct(){
			//khai báo gán biến model là 1 object của class model()
			$this->model= new model();
			//------------
			//khi người dùng ấn nút submit
			if($_SERVER['REQUEST_METHOD']=='POST'){

				$c_email = $_POST['c_email'];
				$c_password = $_POST['c_password'];
				//kiem tra thong tin(lay  1 ban ghi)
				$check = $this->model->get_a_record("select c_email,c_password from user where  c_email='$c_email'");
				if(isset($check->c_email)){
					$c_password = md5($c_password);
					if($check->c_password == $c_password){
						//dang nhap thanh cong
						$_SESSION['c_email']=$c_email;
					}
				}
				header("location:admin.php");
			}
			//------------
			//oad view
			include "view/backend/view_login.php";
		}
	}
	new controller_login();
 ?>