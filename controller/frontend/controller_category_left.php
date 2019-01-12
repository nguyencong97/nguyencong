<?php 
	class controller_category_left{
		public $model;
		public function __construct(){
			$this->model= new model();
			$arr = $this->model->get_all("select * from product order by pk_product_id desc limit 0,4");
			include "view/frontend/view_category_left.php";
		}
	}
new controller_category_left();
 ?>