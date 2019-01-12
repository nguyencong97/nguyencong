<div id="content">
  <?php 
   
    $id = isset($_GET["id"]) ? $_GET["id"]:0;
    //lấy 1 bản ghi
    $arr = $this->model->get_a_record("select * from product where pk_product_id=$id");
     ?>
     <div class="breadcrumb"> &nbsp;<a href="trang-chu">Home&nbsp;</a> »» <a href="sale/name/<?php echo remove_unicode($arr->c_name) ?>/id/<?php echo $arr->pk_product_id; ?>"><?php echo $arr->c_name; ?></a>  </div>
    <h1><span class="h1-top"><?php echo $arr->c_name; ?></span></h1>
    <div class="product-info">
      <div class="left">
        <div class="image">
          <img src="public/upload/product/<?php echo $arr->c_img ?>" title="" alt="" id="image" />
        </div>
        <div class="image-additional">
        </div>
      
      </div>
      <div class="right">
        <div class="description">
          <div class="price"> <span id="line_s"></span>
            <div class="wrap_price">
              <span class="price-old">600.000VNĐ</span><br> <span class="price-new"><?php echo number_format($arr->c_price) ?>VNĐ</span></div>
          </div>
        </div>
        <div class="desc2">
          <span>Mã sản phẩm:</span> 00123<br>
          <span>Sản phẩm:</span> Còn hàng</div>
        <div class="cart">
          <div>Số lượng:
            <input type="text" name="quantity" size="3" value="1">
            &nbsp;

            <a href="index.php?controller=cart&act=add&id=<?php echo $arr->pk_product_id; ?>"><input type="button" value="Add to Cart" id="button-cart" class="button"></a>
            
            </span> </div>
        </div>
        </div>
      </div>
    <div id="tabs" class="htabs"><a href="#tab-description">Description</a></div>
    <div id="tab-description" class="tab-content">
      <div class="cpt_product_description ">
        <div>
          <p><?php echo $arr->c_description ?></p>
        </div>
      </div>
    </div>
  </div>
  
  <script type="text/javascript"><!--
$('#carousel-p ul').jcarousel({
  vertical: false,
  visible: 3,
  scroll: 1
});
$('.colorbox').colorbox({
    overlayClose: true,
    opacity: 0.4,
    rel: "colorbox"
  });

//--></script> 
</div>