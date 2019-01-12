<div class="row justify-content-center">
	<div class="col-md-12">
		<!-- card -->		
		<div class="card  border-primary">
			<div class="card card-header bg-primary text-white">Add edit quần áo</div>
			<div class="card-body">
			<!-- neu muon upload duoc file, phai co thuoc tinh enctype="multipart/form-data" -->
				<form method="post" enctype="multipart/form-data" action="<?php echo $form_action; ?>">
					<!-- form group -->
					<div class="form-group">
						<div class="row">
							<div class="col-md-2 text-right">Tiêu đề</div>
							<div class="col-md-10">
<input type="text" name="c_name" value="<?php echo isset($arr->c_name)?$arr->c_name:'';?>" required class="form-control">
							</div>
						</div>
					</div>
					<!-- end form group -->
					<!-- form group -->
					<div class="form-group">
						<div class="row">
							<div class="col-md-2 text-right">Giá bán</div>
							<div class="col-md-10">
<input type="text" name="c_price" value="<?php echo isset($arr->c_price)?$arr->c_price:'';?>" required class="form-control">
							</div>
						</div>
					</div>
					<!-- end form group -->
					<!-- form group -->
					<div class="form-group">
						<div class="row">
							<div class="col-md-2 text-right">Giới thiệu</div>
							<div class="col-md-10">
								<textarea name="c_description"><?php echo isset($arr->c_description)?$arr->c_description:'';?>
								</textarea>
								<script type="text/javascript">CKEDITOR.replace('c_description');</script>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-md-2 text-right"></div>
							<div class="col-md-10">
	<input type="checkbox" <?php if(isset($arr->c_hotproduct)&&$arr->c_hotproduct==1) { ?> checked <?php }?> name="c_hotproduct"> Tin nổi bật
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-md-2 text-right"></div>
							<div class="col-md-10">
	<input type="checkbox" <?php if(isset($arr->c_sale)&&$arr->c_sale==1) { ?> checked <?php }?> name="c_sale"> Sale
							</div>
						</div>
					</div>
					<!-- loai sp -->
					<div class="form-group">
						<div class="row">
							<div class="col-md-2 text-right"></div>
							<div class="col-md-10">
	<input type="checkbox" <?php if(isset($arr->type)&&$arr->type==0) { ?> checked <?php }?> name="type">Quần áo 
	<input type="checkbox" <?php if(isset($arr->type)&&$arr->type==2) { ?> checked <?php }?> name="type">Giày dép
	<input type="checkbox" <?php if(isset($arr->type)&&$arr->type==1) { ?> checked <?php }?> name="typet">Mũ kính phụ kiện
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="row">
							<div class="col-md-2 text-right"></div>
							<div class="col-md-10">
	<input type="checkbox" <?php if(isset($arr->c_sex)&&$arr->c_sex==1) { ?> checked <?php }?> name="c_sex">Bé trai
							</div>
						</div>
					</div>
					<!-- end loai sp -->
					<!-- end form group -->
					<!-- form group -->
					<div class="form-group">
						<div class="row">
							<div class="col-md-2 text-right">Ảnh</div>
							<div class="col-md-10">
							<input type="file" name="c_img">
							</div>
						</div>
					</div>
					<!-- end form group -->
					<!-- form group -->
					<div class="form-group">
						<div class="row">
							<div class="col-md-2 text-right"></div>
							<div class="col-md-10">
								<input type="submit" value="Process" class="btn btn-primary"> <input type="reset" value="Reset" class="btn btn-danger">
							</div>
						</div>
					</div>
					<!-- end form group -->
				</form>
			</div>
		</div>
		<!-- end card -->
	</div>
</div>