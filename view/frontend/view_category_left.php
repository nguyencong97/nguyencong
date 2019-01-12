<div class="box">
      <div>
        <h1 class="title_module"><span>Featured</span></h1>
        <div class="box-content">
           <?php 
          foreach ($arr as $rows) {
         ?>
          <div class="box-product"> <a class="image" href="index.php?controller=detail&id=<?php echo $rows->pk_product_id; ?>" title="View more"> <img src="public/upload/product/<?php echo $rows->c_img; ?>" alt=""> </a>
            <h3 class="name"><a href="product.html" title="">Lorem ipsum dolor sit</a></h3>
            <p class="wrap_price"> <span class="price">$589.50</span> </p>
            <p class="submit">
              <input type="button" value="Add to Cart" class="button">
            </p>
          </div>
        </div>
      </div>
</div>
<div class="clear"></div>
    