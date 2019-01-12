<?php

class controller_timkiem{
	public $model;
	public function __construct(){
		$this->model= new model();
		
		$key = isset($_GET["key"]) ? $_GET["key"] : "";
		
	//---------------
	//---------
	//phan trang
	//quy dinh so ban ghi tren 1 trang
	$record_per_page = 4;
	//tinh tong so ban ghi
	$total = $this->model->get_num_rows("select * from product where c_name like '%$key%'");
	//tinh xem co bao nhieu trang
	$num_page = ceil($total/$record_per_page);
	//lay bien p (la ban chi trang hien tai) truyen tu url
	$p = isset($_GET["p"])&&$_GET["p"]>0 ? ($_GET["p"]-1):0;
	//lay tu ban ghi nao
	$from = $p*$record_per_page;
		 
	$arr = $this->model->get_all("select * from product where c_name like '%$key%' limit $from,$record_per_page");
		
	include"view/frontend/view_search.php";
	}
	
}

new controller_timkiem();
?>