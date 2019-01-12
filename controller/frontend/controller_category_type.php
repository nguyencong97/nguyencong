<?php 
	class controller_category_type{
		public $model;
		public function __construct(){
			$this->model = new model();
			$arr = $this->model->get_all("select * from category_type order by id_type asc");
			include "view/frontend/view_category_type.php";
		}
	}
new controller_category_type();
 ?>