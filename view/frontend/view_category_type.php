
      
      <?php 
        foreach ($arr as $rows) {
       ?>
    <li class="menu_item down"><a href="id/<?php echo $rows->id_type ?>/san-pham/<?php echo remove_unicode($rows->c_name) ?>"><?php echo $rows->c_name; ?></a>
        <div class="sub_menu" style="">
      </li>
    <?php } ?>
    <li class="menu_item down"><a href="gioi-thieu">Giới thiệu</a> </li>
    	
