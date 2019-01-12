<?php 
	class controller_index{
		public $model;
		public function __construct(){
			$this->model = new model();
			include "view/frontend/view_index.php";
		}
	}
new controller_index();