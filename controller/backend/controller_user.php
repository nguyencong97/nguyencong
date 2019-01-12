<?php 
	class controller_user{
		public $model;
		public function __construct(){
			$this->model = new model();
			//---------
			$act = isset($_GET["act"]) ? $_GET["act"]:"";
			switch ($act) {
				case 'delete':
					$id = isset($_GET['id'])?$_GET['id']:"";
					//xao ban ghi tuong ung voi id truyen vao
					$this->model->execute("delete from user where pk_user_id=$id");
					header("location:admin.php?controller=user");
					break;
			}
			//phan trang
			//quy  định số bản ghi trên 1 trang
			$record_per_page = 3;
			//tinh tong so ban ghi
			$total = $this->model->get_num_rows("select pk_user_id from user");
			//tinh xem co bao nhieu ban ghi
			$num_page = ceil($total/$record_per_page);
			//lấy biến p (là bản ghi trang hiện tại ) truyền từ url
			$p = isset($_GET['p'])&&$_GET['p']>0 ? ($_GET['p']-1):0;
			//lay ban ghi nao
			$from = $p*$record_per_page;
			//thực thi truy vấn sql có phân trang
			$arr = $this->model->get_all("select * from user order by pk_user_id asc limit $from,$record_per_page");
			//---------
			//load view
			include "view/backend/view_user.php";
			
		}
	}
	new controller_user();

 ?>