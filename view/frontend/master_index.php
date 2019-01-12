<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
<base href="http://localhost/PHP/project_ck/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Things For Cuties - A Premium Responsive Kids / Baby Related Shop Template</title>
<meta name="description" content="Things For Cuties - A Premium Responsive Kids / Baby Related Shop Template, available at Themeforest.">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600,700">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Gochi+Hand">
<link rel="stylesheet" type="text/css" href="public/frontend/css/stylesheet.css">
<link rel="stylesheet" type="text/css" href="public/frontend/css/mobile.css">
<link rel="stylesheet" type="text/css" href="public/frontend/css/cloud-zoom.css">
<link rel="stylesheet" type="text/css" href="public/frontend/css/carousel.css">
<script type="text/javascript" src="public/frontend/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="public/frontend/js/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="public/frontend/js/jquery.cycle.all.js"></script>
<script type="text/javascript" src="public/frontend/js/jquery.selectBox.js"></script>
<script type="text/JavaScript" src="public/frontend/js/cloud-zoom.1.0.2.js"></script>
<script type="text/JavaScript" src="public/frontend/js/cuties.js"></script>

<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

</head>
<?php 
  include "remove_unicode.php";

 ?>
<body>
<div id="container">
  <div id="header">
    <div id="logo"><a href="trang-chu"><img src="public/frontend/image/logo.png" title="Things for Cuties" alt="Things for Cuties"></a></div>
    <div id="header_right">
      <form action="index.html" method="post" enctype="multipart/form-data">
        <div id="language">
          <ul class="currence">
            <li class="first_item"><a class="selected" title="English">en</a></li>
            <li><a title="Russia">rs</a></li>
            <li class="last_item"><a title="Deutsch">de</a></li>
          </ul>
        </div>
      </form>
      <form action="index.php" method="post" enctype="multipart/form-data">
        <div id="currency">
          <ul class="currence">
            <li class="first_item"><a title="Euro">€</a></li>
            <li><a title="Pound Sterling" >£</a></li>
            <li class="last_item"><a class="selected" title="US Dollar">$</a></li>
          </ul>
        </div>
      </form>
     <div id="search">
        <form action="" method="GET">
          <div class="button-search">
           
          </div>
          <input type="hidden" name="controller" value="timkiem">
          <input type="text" name="key" placeholder="Search" value="">
        </form>
        
      </div>
      <div id="cart">
        <div class="heading">
          <div class="cart_top_in">

            <a href="gio-hang"><span id="cart-total"></span><h4>Shopping Cart</h4></a></div>
        </div>
        
      </div>
      <div id="bottom_right">
        <div class="links"><a href="gio-hang">Shopping Cart</a><a href="thanh-toan">Checkout</a></div>
      </div>
    </div>
  </div>
  <div id="menu">
    <ul>
      <li class="menu_item down"><a href="trang-chu">Home</a></li>
      <?php 
        include "controller/frontend/controller_category_type.php";
       ?>
    </ul>
  </div>
  <div id="content">
    <?php 
      include "controller/frontend/controller_slide.php";
     ?>
    <div class="banner">
      <div><a href="index.php?controller=specials"><img src="public/frontend/image/small-banner-green-225x161.png" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit"></a> </div>
    </div>
    <div class="banner">
      <div><a href="gio-hang"><img src="public/frontend/image/small-banner-blue-225x161.png" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit"></a></div>
    </div>
  </div>
    <?php 
      include "controller/frontend/controller_index.php";
     ?>  
  
<div id="footer">
  <div id="footer_top">
    <div class="footer_wrapper">
      <div id="footer_top_content">
        <div id="footer_top_item">
          <div class="footer_top_item" id="about_us">
            <h3 class="title_item_1 down"><a href="about.html">About us</a></h3>
            <p class="text_item content_item_1 about"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean interdum tellus ac velit faucibus feugiat. Donec dignissim, eros elementum porttitor tempor, massa ligula cursus libero, vel ullamcorper dui ipsum id magna. Pellentesque adipiscing euismod mauris id pharetra. </p>
            <p class="text_item content_item_1 about">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean interdum tellus ac velit faucibus feugiat. Donec dignissim, eros elementum porttitor tempor, massa ligula cursus libero, vel ullamcorper dui ipsum id magna.</p>
          </div>
          <div class="footer_top_item" id="contact_us">
            <h3 class="title_item_2 down"><a href="contact.html">Contact us</a></h3>
            <div class="text_item">
              <p class="info_contact"> <span>Things for Cuties<br>
                John Doodely Doe
                <br>
                only the best childish products
                <br>
                John Doe Street 123<br>
                1112345 Berlin<br>
                Germany
              </span> </p>
              <p class="online_contact"> <span class="phone">012 - 34 456 778</span> <span class="phone">012 - 345 67 89</span> <span class="fax">012 - 345 67 890</span> <span class="mail"><a class="color" href="mailto:contact@thingsforcuties.doe" title="Mail">contact@thingsforcuties.doe</a></span> </p>
            </div>
          </div>
          <div class="footer_top_item " id="twitter_news">
            <h3 class="title_item_3 down" ><a href="http://www.twitter.com/Mouseevent">Twitter Feed</a></h3>
            <div class="text_item content_item_3">
              <div id="twitter_update_list">
<a class="twitter-timeline"  width="232" height="250" data-chrome="nofooter noheader transparent noscrollbar" data-tweet-limit="2" href="https://twitter.com/Mouseevent"  data-widget-id="346591733494202368"></a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
              </div>
            </div>
          </div>
          <div class="footer_top_item last_footer_item" id="facebook">
            <h3 class="title_item_4 down"><a href="https://www.facebook.com/cong.nguyen.90663894">Facebook</a></h3>
            <div class="text_item content_item_4"> 
              <div id="fb-root"></div>
        <script>(function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s); js.id = id;
                js.src = "//connect.facebook.net/de_DE/all.js#xfbml=1&appId=371189259657718";
                fjs.parentNode.insertBefore(js, fjs);
              }(document, 'script', 'facebook-jssdk'));</script>            
            <div class="fb-like-box" data-href="https://www.facebook.com/cong.nguyen.90663894" data-width="220" data-height="250" data-show-faces="true" data-stream="false" data-show-border="false" data-header="false"></div>
            </div>
          </div>
          <div class="clear"></div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer_wrapper">
    <div id="footer_bottom">
      <div class="footer_bottom_item">
        <h3 class="bottom_item_1 down"><a>Information</a></h3>
        <ul class="menu_footer_item text_item">
          <li><a href="about.html" title="About Us">About Us</a></li>
          <li><a href="blog.html" title="Delivery Information">Blog</a></li>
          <li><a href="comparison.html" title="Privacy Policy">Compare List</a></li>
          <li><a href="#" title="Terms &amp; Conditions">Terms &amp; Conditions</a></li>
        </ul>
      </div>
      <div class="footer_bottom_item">
        <h3 class="bottom_item_2 down"><a>Customer Service</a></h3>
        <ul class="menu_footer_item text_item">
          <li><a href="contact.html">Contact Us</a></li>
          <li><a href="#">Returns</a></li>
          <li><a href="#">Site Map</a></li>
        </ul>
      </div>
      <div class="footer_bottom_item">
        <h3 class="bottom_item_3 down"><a>Extras</a></h3>
        <ul class="menu_footer_item text_item">
          <li><a href="brands.html">Brands</a></li>
          <li><a href="gifts.html">Gift Vouchers</a></li>
          <li><a href="#">Affiliates</a></li>
          <li><a href="specials.html">Specials</a></li>
        </ul>
      </div>
      <div class="footer_bottom_item">
        <h3 class="bottom_item_4 down"><a>My Account</a></h3>
        <ul class="menu_footer_item text_item">
          <li><a href="myaccount.html">My Account</a></li>
          <li><a href="orderhistory.html">Order History</a></li>
          <li><a href="wishlist.html">Wish List</a></li>
          <li><a href="#">Newsletter</a></li>
        </ul>
      </div>
      <div class="clear"></div>
    </div>
    <div id="mobile-footer">
      <div class="mobile-footer-menu">
        <h3>Information</h3>
        <div class="mobile-footer-nav" style="display: none;">
          <ul>
            <li><a href="about.html" title="About Us">About Us</a></li>
            <li><a href="blog.html" title="Delivery Information">Blog</a></li>
            <li><a href="comparison.html" title="Privacy Policy">Compare List</a></li>
            <li><a href="#" title="Terms &amp; Conditions">Terms &amp; Conditions</a></li>
          </ul>
        </div>
        <h3>Customer Service</h3>
        <div class="mobile-footer-nav" style="display: none;">
          <ul>
            <li><a href="contact.html">Contact Us</a></li>
            <li><a href="#">Returns</a></li>
            <li><a href="#">Site Map</a></li>
          </ul>
        </div>
        <h3>Extras</h3>
        <div class="mobile-footer-nav" style="display: none;">
          <ul>
            <li><a href="brands.html">Brands</a></li>
            <li><a href="gifts.html">Gift Vouchers</a></li>
            <li><a href="#">Affiliates</a></li>
            <li><a href="specials.html">Specials</a></li>
          </ul>
        </div>
        <h3>My Account</h3>
        <div class="mobile-footer-nav" style="display: none;">
          <ul>
            <li><a href="myaccount.html">My Account</a></li>
            <li><a href="orderhistory.html">Order History</a></li>
            <li><a href="wishlist.html">Wish List</a></li>
            <li><a href="#">Newsletter</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div id="footer-text">
    <p>Things for Cuties © 2013 - Template by <a href="http://themeforest.net/user/ssievert?ref=ssievert">ssievert</a></p>
  </div>
</div>
</body>
</html>