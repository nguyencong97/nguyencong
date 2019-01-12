<?php 
	class controller_checkout{
		public $model;
		public function __construct(){
			$this->model = new model();
			//----------
			//khi user an nut submit
			if($_SERVER["REQUEST_METHOD"] == "POST"){
				$ht = $_POST["hovaten"];
				$dc = $_POST["diachi"];
				$dt = $_POST["dienthoai"];
				$email = $_POST["email"];
				$ghichu = $_POST["ghichu"];
				//lay thong tin cua form de insert vao tbl_customer, lay id voi moi insert
				$customer_id = $this->model->execute("insert into tbl_customer (hovaten, diachi, dienthoai, ghichu, email) values('$ht', '$dc', '$dt', '$ghichu', '$email')");
				//insert thong tin vao tbl_order, lay id vua insert
				$gia = 0;	
			foreach($_SESSION["cart"] as $product){
				$gia = $gia + $product["c_price"]*$product["number"];
			}
			$order_id = $this->model->execute("insert into tbl_order(customer_id,ngaymua,gia,trangthai) values($customer_id,now(),$gia,0)");
				//insert thong tin vao tbl_order_detail
				foreach($_SESSION["cart"] as $product){
				$fk_product_id = $product["pk_product_id"];
				$c_number = $product["number"];
				$this->model->execute("insert into tbl_order_detail(order_id,fk_product_id,c_number) values($order_id,$fk_product_id,$c_number)");
				
			}
				
//				xoa gio hang
				 $_SESSION['cart'] = array();
			 echo "<script>location.href='index.php?controller=cart';</script>";
//				quay tro lai trang index.php
			}
			//----------
			//load view
			include "view/frontend/view_checkout.php";
		}
	}
	new controller_checkout();
 ?>