model lay tat ca cac ban ghi, ham lay 1 ban ghi, ham thuc thi truy van, ham lay so luong ban ghi
<?php 
	class model{
		public $model;
		public function get_all_record($sql){
			global $db;
			$this->model=new model();
			$arr = array();
			$result = mysqli_query($db,$sql);
			while($rows = mysqli_fetch_object($result))
				$arr[] = $rows;
			return $arr;
		}
		public function get_a_record($sql){
			global $db;
			$result = mysqli_query($db,$sql);
			return mysqli_fetch_object($result);
		}
		//ham thuc thi truy van
		public function execet($sql){
			global $db;
			$result = mysqli_query($db,$sql);
		}
		//ham lay so luong ban ghi
		public function num_rows($sql){
			global $db;
			$result = mysqli_query($db,$sql);
			return mysqli_num_rows($result);
		}
	}
new model();

 ?>