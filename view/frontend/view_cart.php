<div id="content">
    <div class="breadcrumb"> <a href="trang-chu">Home</a> » <a href="#">Shopping Cart</a> </div>
    <h1><span class="h1-top">Shopping Cart</span></h1>
    <form action="index.php?controller=cart&act=update" method="post" enctype="multipart/form-data">
      <div class="cart-info">
        <table>
          <thead>
            <tr>
              <td class="image">Hình ảnh</td>
              <td class="name">Tên sản phẩm</td>
              <td class="quantity">Số lượng</td>
              <td class="price">Đơn giá</td>
            </tr>
          </thead>
          <tbody>
            <?php 
                foreach($_SESSION["cart"] as $rows)
                {
             ?>
            <tr>
              <td class="image"><a href="name/<?php echo remove_unicode($rows['c_name']) ?>/id/<?php echo $rows['pk_product_id'] ?>"><img src="public/upload/product/<?php echo $rows['c_img'] ?>" alt="" title="" width="130" height="130"></a></td>
              <td class="name"><a href="name/<?php echo remove_unicode($rows['c_name']) ?>/id/<?php echo $rows['pk_product_id'] ?>"><?php echo $rows['c_name'] ?></a>
                </td>
              <td class="quantity"><input type="number" name="<?php echo $rows['pk_product_id'] ?>" value="<?php echo $rows['number'] ?>" size="1"></td>
              
              <td class="total"><?php echo $rows['c_price'] ?>VNĐ
                <div class="reload">
                  <div><a href="index.php?controller=cart&act=update&id=<?php echo $rows['pk_product_id']; ?>"><input type="image" src="public/frontend/image/reload.png" alt="Update" title="Update"></a></div>
                  &nbsp; &nbsp;<a href="index.php?controller=cart&act=delete&id=<?php echo $rows['pk_product_id']; ?>"><img src="public/frontend/image/del.png" alt="Remove" title="Remove"></a></div></td>
            </tr>
            <?php } ?>
            <tr>
              <td colspan="6" class="emptyrow"></td>
            </tr>
          </tbody>
        </table>
      </div>
    </form>
    <h2>Total price</h2>
        <div class="cart-total">
      <table id="total">
        <tbody>
          <tr>
            <td class="right lastrow"><b>Total:</b></td>
            <td class="right last lastrow"><?php echo number_format($this->cart_total()); ?> VNĐ</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div class="buttons">
      <div class="right"><a href="thanh-toan" class="button">Checkout</a></div>
      <div class="right"><a href="tra-chu" class="button">Continue Shopping</a></div>
    </div>
  </div>