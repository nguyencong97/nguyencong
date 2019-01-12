<?php 
	class controller_add_edit_user{
		//khai bao bien model
		public $model;
		public function __construct(){
			//gan bien model la objec cua class model, de tu do co the tac dong vao cac ham cua class model
			$this->model = new model();
			//---------
			$act = isset($_GET["act"]) ? $_GET["act"]:"";
			$id = isset($_GET["id"]) ? $_GET["id"]:0;
			switch($act){
				case "edit":
					//lay mot ban ghi tuong ung voi id truyen vao
					$arr = $this->model->get_a_record("select * from user where pk_user_id=$id");
					$form_action = "admin.php?controller=add_edit_user&act=do_edit&id=$id";
					//load view
					include "view/backend/view_add_edit_user.php";
				break;
				case "do_edit":
					$c_fullname = $_POST["c_fullname"];
					$c_password = $_POST["c_password"];
					//update c_fullname
					$this->model->execute("update user set c_fullname='$c_fullname' where pk_user_id=$id");
					//kiem tra neu user nhap password moi thi update password
					if($c_password != ""){
						$c_password = md5($c_password);
						$this->model->execute("update user set c_password='$c_password' where pk_user_id=$id");
					}
					header("location:admin.php?controller=user");
				break;
				case "add":
					$form_action = "admin.php?controller=add_edit_user&act=do_add";
					//load view
					include "view/backend/view_add_edit_user.php";
				break;
				case "do_add":
					$c_fullname = $_POST["c_fullname"];
					//replace ky tu dac biet
					$c_fullname = str_replace("'", "\'",$c_fullname);
					//phong chống lỗi xss
					$c_fullname = str_replace("<", "&gt", $c_fullname);
					$c_fullname = str_replace(">", "&lt", $c_fullname);
					
					$c_email = $_POST["c_email"];
					$c_password = $_POST["c_password"];
					$c_password = md5($c_password);
					//insert ban ghi
					$this->model->execute("insert into user(c_fullname,c_email,c_password) values('$c_fullname','$c_email','$c_password')");
					header("location:admin.php?controller=user");
				break;
			}
			//---------
		} 
	}
	new controller_add_edit_user();
 ?>