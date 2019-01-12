<div id="content">
    <div class="breadcrumb"> &nbsp;<a href="trang-chu">Home&nbsp;</a> » &nbsp;<a href="san-pham-hot">Hotproduct&nbsp;</a> </div>
    <h1><span class="h1-top">Sản phẩm đang Hot</span></h1>
    <div class="product-filter">
      <div class="display">
        <label>Display:</label>
        <p><span id="list" class="list_on"></span> <span id="grid" onclick="display('grid');"></span></p>
      </div>
    </div>
    <div class="product-list">
      <?php 
        foreach ($arr as $rows) {
       ?>
      <div class="box-product"><a class="image" href="namehot/<?php echo remove_unicode($rows->c_name) ?>/id/<?php echo $rows->pk_product_id; ?>" title="View more"> <img src="public/upload/product/<?php echo $rows->c_img; ?>" alt=""> <span class="new2">Sale</span> </a>
        <div class="list_grid_right">
          <h3 class="name"><a href="namehot/<?php echo remove_unicode($rows->c_name) ?>/id/<?php echo $rows->pk_product_id; ?>" title=""><?php echo $rows->c_name; ?></a></h3>
          
          <p class="description"><?php echo $rows->c_description; ?></p>
          <p class="wrap_price"> <span class="price-new"><?php echo number_format($rows->c_price) ?>VNĐ</span></p>
          <p class="submit">
            <a href="gio-hang/add/<?php echo $rows->pk_product_id; ?>"><input type="button" value="Add to Cart" id="button-cart" class="button"></a>
            
          </p>
        </div>
      </div>
    <?php } ?>
    </div>
    <div style="clear: both;"></div>
    <div class="container">
     <ul class="pagination">
        <li class="page-item active"><a href="#" class="page-link">Trang</a></li>
        <?php 
          for($i=1;$i<=$num_page;$i++){
         ?>
        <li class="page-item"><a href="san-pham-hot/page/<?php echo $i; ?>" class="page-link"><?php echo $i; ?></a></li>
        <?php } ?>
      </ul> 
    </div>
    
  </div>
