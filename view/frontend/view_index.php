<div class="box">
      <div>
        <h1 class="title_module"><span>Sản phẩm mới nhất</span><a style="float: right;font-weight: bold;" href="san-pham-news">Xem tất cả>>></a></h1>      
        <div class="box-content">
          <?php 
          $news = $this->model->get_all("select * from product order by pk_product_id desc limit 0,4");
          foreach ($news as $rows) {
         ?>
          <div class="box-product"> 
            <a class="image" href="name/<?php echo remove_unicode($rows->c_name) ?>/id/<?php echo $rows->pk_product_id; ?>" title="View more"> <img src="public/upload/product/<?php echo $rows->c_img; ?>" alt=""  style="width: 222px;height:220px; "> </a>
            <h3 class="name"><a href="product.html" title=""><?php echo $rows->c_name; ?></a></h3>
            <p class="wrap_price"> <span class="price"><?php echo number_format($rows->c_price) ?>VNĐ</span> </p>
            <p class="submit">
            <a href="index.php?controller=cart&act=add&id=<?php echo $rows->pk_product_id; ?>"><input type="button" value="Add to Cart" id="button-cart" class="button"></a>
            
          </p>
          </div> 
          <?php } ?>  
          </div>
        </div>
      </div>
<div class="box">
      <div>
        <h1 class="title_module"><span>Sản phẩm đang HOT</span><a style="float: right;font-weight: bold;" href="san-pham-hot">Xem tất cả>>></a></h1>
        
        <div class="box-content">
          <?php 
          $hot = $this->model->get_all("select *  from product where c_hotproduct=1 order by pk_product_id limit 0,4");
          foreach ($hot as $rows) {
         ?>
          <div class="box-product"> <a class="image" href="name/<?php echo remove_unicode($rows->c_name) ?>/id/<?php echo $rows->pk_product_id; ?>" title="View more"> <img src="public/upload/product/<?php echo $rows->c_img; ?>" alt=""  style="width: 222px;height:220px; "> </a>
            <h3 class="name"><a href="product.html" title=""><?php echo $rows->c_name; ?></a></h3>
            <p class="wrap_price"> <span class="price"><?php echo number_format($rows->c_price) ?>VNĐ</span> </p>
            <p class="submit">
            <a href="gio-hang/add/<?php echo $rows->pk_product_id; ?>"><input type="button" value="Add to Cart" id="button-cart" class="button"></a>
            
          </p>
          </div> 
          <?php } ?>  
          </div>
        </div>
      </div>
<div class="box">
      <div>
        <h1 class="title_module"><span>Sản phẩm đang sale</span><a style="float: right;font-weight: bold;" href="san-pham-sale">Xem tất cả>>></a></h1>
       
        <div class="box-content">
          <?php 
          $arr = $this->model->get_all("select * from product where c_sale=1 order by pk_product_id asc limit 0,4");
          foreach ($arr as $rows) {
         ?>
          <div class="box-product"><a class="image" href="sale/name/<?php echo remove_unicode($rows->c_name) ?>/id/<?php echo $rows->pk_product_id; ?>" title="View more"><span class="new">Sale</span><img src="public/upload/product/<?php echo $rows->c_img; ?>" alt=""  style="width: 222px;height:220px; "> </a>
            <h3 class="name"><a href="product.html" title=""><?php echo $rows->c_name; ?></a></h3>
            <p class="wrap_price"> <span class="price"><?php echo number_format($rows->c_price) ?>VNĐ</span> </p>
            <p class="submit">
           
            <a href="index.php?controller=cart&act=add&id=<?php echo $rows->pk_product_id; ?>"><input type="button" value="Add to Cart" id="button-cart" class="button"></a>
            
          </p>
          </div> 
          <?php } ?>  
          </div>
        </div>
      </div>