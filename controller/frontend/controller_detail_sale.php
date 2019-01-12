<?php 
	class controller_detail_sale{
		public $model;
		public function __construct(){
			$this->model = new model();
			$id = isset($_GET['id'])?$_GET['id']:0;
			
			include "view/frontend/view_detail_sale.php";
		}
	}
new controller_detail_sale();
 ?>