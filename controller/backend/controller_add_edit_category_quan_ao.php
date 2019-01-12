<?php 
	class controller_add_edit_category_quan_ao{
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
					$arr = $this->model->get_a_record("select * from category_product where id_product=$id");
					$form_action = "admin.php?controller=add_edit_category_quan_ao&act=do_edit&id=$id";
					//load view
					include "view/backend/view_add_edit_category_quan_ao.php";
				break;
				case "do_edit":
					$c_name = $_POST["c_name"];
					//update c_name
					$this->model->execute("update category_product set c_name='$c_name' where id_product=$id");

					header("location:admin.php?controller=category_quan_ao");
				break;
				case "add":
					$form_action = "admin.php?controller=add_edit_category_quan_ao&act=do_add";
					//load view
					include "view/backend/view_add_edit_category_quan_ao.php";
				break;
				case "do_add":
					$c_name = $_POST["c_name"];
					//replace ky tu dac biet
					$c_name = str_replace("'", "\'",$c_name);
					//phong chống lỗi xss
					$c_name = str_replace("<", "&gt", $c_name);
					$c_name = str_replace(">", "&lt", $c_name);
					
					
					//insert ban ghi
					$this->model->execute("insert into category_product(c_name) values('$c_name')");
					header("location:admin.php?controller=category_quan_ao");
				break;
			}
			//---------
		} 
	}
	new controller_add_edit_category_quan_ao();
 ?>