<?php 
	class controller_quan_ao{
		public $model;
		public function __construct(){
			$this->model=new model();
			//----------------
			$act = isset($_GET['act'])?$_GET['act']:"";
			switch ($act) {
				case 'delete':
					$id = isset($_GET['id'])?$_GET['id']:0;
					//kieemr tra neu co anh cu roi thi xoa a day
					// lay anh c_img o trong product
					
						$this->model->execute("delete from product where pk_product_id='$id' ");
						header("loaction:admin.php?controller=quan_ao");
					break;
				
			}
			//----------------
			$record_per_page = 10;
			$total = $this->model->get_num_rows("select pk_product_id from product where type=0 ");
			$num_page = ceil($total/$record_per_page);
			$p = isset($_GET['p'])&&$_GET['p']>0 ? ($_GET['p']-1):0;
			//lay tu ban ghi nao
			$from = $p*$record_per_page;
			$arr = $this->model->get_all("select * from product where type=0 order by pk_product_id desc limit $from,$record_per_page");
			include "view/backend/view_quan_ao.php";
		}
	}
	new controller_quan_ao();

 ?>