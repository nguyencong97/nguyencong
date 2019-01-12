<?php 
	class controller_category_mkpk{
		public $model;
		public function __construct(){
			$this->model = new model();
			//---------
			$act = isset($_GET["act"]) ? $_GET["act"]:"";
			switch ($act) {
				case 'delete':
					$id = isset($_GET['id'])?$_GET['id']:"";
					//xoa ban ghi tuong ung voi id truyen vao
					$this->model->execute("delete from category_product where id_product=$id");
					header("location:admin.php?controller=category_mkpk");
					break;
			}
			//phan trang
			//quy  định số bản ghi trên 1 trang
			$record_per_page = 3;
			//tinh tong so ban ghi
			$total = $this->model->get_num_rows("select id_product from category_product");
			//tinh xem co bao nhieu ban ghi
			$num_page = ceil($total/$record_per_page);
			//lấy biến p (là bản ghi trang hiện tại ) truyền từ url
			$p = isset($_GET['p'])&&$_GET['p']>0 ? ($_GET['p']-1):0;
			//lay ban ghi nao
			$from = $p*$record_per_page;
			//thực thi truy vấn sql có phân trang
			$arr = $this->model->get_all("select * from category_product where type=1 order by id_product asc limit $from,$record_per_page");
			//---------
			//load view
			include "view/backend/view_category_mkpk.php";
			
		}
	}
	new controller_category_mkpk();

 ?>