<?php 
	class controller_add_edit_quan_ao{
		//khai bao bien model
		public $model;
		public function __construct(){
			//gan bien model la objec cua class model, de tu do co the tac dong vao cac ham cua class model
			$this->model = new model();
			//---------
			$act = isset($_GET["act"]) ? $_GET["act"]:"";
			$id = isset($_GET["id"]) ? $_GET["id"]:0;
			switch($act){
				case "edit":
					$form_action = "admin.php?controller=add_edit_quan_ao&act=do_edit&id=$id";
					//lay mot ban ghi tuong ung voi id truyen vao
					$arr = $this->model->get_a_record("select * from product where pk_product_id=$id");
					//load view
					include "view/backend/view_add_edit_quan_ao.php";
				break;
				case "do_edit":
					$c_name = $_POST['c_name'];
					$c_description = $_POST['c_description'];
					$type = isset($_POST['type'])?0:1 or 2;
					$c_hotproduct = isset($_POST['c_hotproduct'])?1:0;
					$c_price = $_POST['c_price'];
					$c_sale = isset($_POST['c_sale'])?1:0;
					$c_sex = isset($_POST['c_sex'])?1:0;
					//update
					$this->model->execute("update product set c_name='$c_name',c_description='$c_description',type=$type,c_hotproduct=$c_hotproduct,c_price=$c_price,c_sale=$c_sale,c_sex=$c_sex where pk_product_id=$id ");
					//kiem tra viec upload anh
					if($_FILES['c_img']['name']!=""){
						//lay anh cu va xoa no
						$old_img = $this->model->get_a_record("select c_img from product where pk_product_id=$id");
						if(isset($old_img->c_img)&&file_exists('public/upload/product/'.$old_img->c_img))
				{	
				unlink('public/upload/product/'.$old_img->c_img);
				}
				//update c_img
				$c_img =time().$_FILES['c_img']['name'];
				move_uploaded_file($_FILES['c_img']['tmp_name'], "public/upload/product/".$c_img);
				$this->model->execute("update product set c_img='$c_img' where pk_product_id=$id");
				}
					header("location:admin.php?controller=quan_ao");
				break;
				case "add":
					$form_action = "admin.php?controller=add_edit_quan_ao&act=do_add";
					include "view/backend/view_add_edit_quan_ao.php";
					break;
				case "do_add";
					$c_name = $_POST['c_name'];
					$c_sale = isset($_POST['c_sale'])?1:0;
					$c_description = $_POST['c_description'];
					$type = isset($_POST['type'])?0:1 or 2;
					$c_hotproduct = isset($_POST['c_hotproduct'])?1:0;
					$c_price = $_POST['c_price'];
					$c_sex = isset($_POST['c_sex'])?1:0;
					if($_FILES['c_img']['name']!=""){
						$c_img= time().$_FILES["c_img"]["name"];
						move_uploaded_file($_FILES['c_img']['tmp_name'], "public/upload/product/".$c_img);
					}
					$this->model->execute("insert into product(c_name,c_description,c_img,type,c_hotproduct,c_price,c_sale,c_sex) values('$c_name','$c_description','$c_img',$type,$c_hotproduct,$c_price,$c_sale,$c_sex)");
					header("location:admin.php?controller=quan_ao");
					break;
				}
			}
			//---------
		} 
	
	new controller_add_edit_quan_ao();
 ?>