<!DOCTYPE html>
<html>
<head>
	<title>Admin page</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="public/backend/css/bootstrap.min.css">
  <script type="text/javascript" src="public/backend/ckeditor/ckeditor.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=category_quan_ao">Danh mục quần áo</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=quan_ao">Quần áo</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=category_mkpk">Danh mục mũ - kính - phụ kiện</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=mkpk">Mũ - kính - phụ kiện</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=category_giay_dep">Danh mục giày dép</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=giay_dep">Giày dép</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=user">Danh sách người dùng</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=order">Giao hàng</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="admin.php?controller=logout">Logout</a>
          </li>
        </ul>        
      </div>
    </nav>
    <div class="container" style="margin-top: 70px;">
      <?php 
        //kiểm tra nếu file controller có tồn tại thì load file MVC đó RA
        if(file_exists($controller)==true)
        include $controller;

       ?>
    </div>
    <script type="text/javascript" src="public/backend/js/jquery-3.3.1.min.js"></script>
</body>
</html>