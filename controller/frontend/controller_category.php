<?php 
	class controller_category{
		public $model;
		public function __construct(){
			$this->model=new model();
			include "view/frontend/view_category.php";
		}
	}
new controller_category();
 ?>