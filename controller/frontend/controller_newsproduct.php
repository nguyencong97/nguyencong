<?php 
	class controller_newsproduct{
		public $model;
		public function __construct(){
			$this->model=new model();
			$id = isset($_GET['id'])?$_GET['id']:0;
			$record_per_page = 4;
			$total = $this->model->get_num_rows("select pk_product_id from product limit 0,20");
			$num_page = ceil($total/$record_per_page);
			$p = isset($_GET['p'])&&$_GET['p']>0?($_GET['p']-1):0;
			$form = $p*$record_per_page;
			$arr = $this->model->get_all("select * from product order by pk_product_id asc limit $form,$record_per_page");
			include "view/frontend/view_newsproduct.php";
		}
	}
new controller_newsproduct();
 ?>