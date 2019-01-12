<div id="slide-wrapper">
      <ul id="slider">
        <?php 
        	foreach ($arr as $rows) {
         ?>
        <li>
          <div class="border_on_img"></div>
          <a href="index.php?controller=detail?id=<?php echo $rows->pk_product_id; ?>"><img src="public/upload/product/<?php echo $rows->c_img; ?>"> </a>
      	</li>
      <?php } ?>
      </ul>
    </div>