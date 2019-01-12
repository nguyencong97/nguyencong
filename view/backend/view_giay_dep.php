<div class="row justify-content-center">
	<div class="col-md-12">
		<!-- card -->
		<div style="margin:15px 0px">
			<a href="admin.php?controller=add_edit_giay_dep&act=add" class="btn btn-primary">Add</a>
		</div>
		<div class="card border-primary">
			<div class="card card-header bg-primary text-white" style="padding:7px !important;">Login</div>
				<div class="card-body">
				<!-- table -->
				<table class="table table-hover table-bordered">
					<tr>
						<th style="width: 150px;">Ảnh</th>
						<th>Tiêu đề</th>
						<th style="width: 150px;">Khuyễn mãi</th>
						<th style="width: 120px;">Tin nổi bật</th>
						<th style="width: 120px;">Giá tiền</th>
						<th style="width: 150px;"></th>
					</tr>
					<?php 
						foreach ($arr as $rows) {
						
					?>
					<tr>
						<td>
							<?php if(file_exists("public/upload/product/".$rows->c_img)) { ?>
							<img src="public/upload/product/<?php echo $rows->c_img; ?>" style="width:150px;">
						<?php } ?>
						</td>
						<td><?php echo $rows->c_name; ?></td>
						<td style="text-align: center;">
							<?php if($rows->c_sale==1) { ?>
								Sale
							<?php }?>
						</td>
						<td style="text-align: center;"><?php if($rows->c_hotproduct==1) { ?>
								Hot
							<?php }?>

						</td>
						<td style="text-align: center;"><?php echo $rows->c_price ?>VNĐ</td>
						<td style="text-align: center;">
						<a href="admin.php?controller=add_edit_giay_dep&act=edit&id=<?php echo $rows->pk_product_id; ?>">Edit</a>&nbsp;&nbsp;
						<a href="admin.php?controller=giay_dep&act=delete&id=<?php echo $rows->pk_product_id; ?>">Delete</a>
						</td>
					</tr>
				<?php } ?>
				</table>
				<!-- end table -->
				</div>
				<div class="card-footer" style="padding:7px !important">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#">Trang</a></li>
						<?php for($i=1;$i<=$num_page;$i++) { ?>
						<li class="page-item"><a class="page-link" href="admin.php?controller=giay_dep&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
						<?php } ?>
					</ul>
				</div>
			</div>
		</div>
		<!-- end card -->
	</div>
</div>