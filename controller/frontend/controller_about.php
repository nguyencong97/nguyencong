<?php 
	class controller_about{
		public $model;
		public function __construct(){
			$this->model=new model();
			include "view/frontend/view_about.php";
		}
	}
new controller_about();
 ?>