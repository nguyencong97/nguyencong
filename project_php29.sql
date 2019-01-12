-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2018 at 06:04 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_php29`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id_product` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id_product`, `c_name`, `type`) VALUES
(1, 'Áo khoác và áo vest', 0),
(2, 'Áo sơ mi', 0),
(3, 'Áo len và áo nỉ', 0),
(4, 'Áo thun', 0),
(5, 'Quần dài', 0),
(6, 'Bộ quần áo', 0),
(7, 'Quần short và váy ngắn', 0),
(8, 'Váy', 0),
(9, 'Mũ', 1),
(10, 'Kính', 1),
(11, 'Phụ kiện', 1),
(12, 'Giày dép bé nam', 2),
(13, 'Giày dép bé gái', 2);

-- --------------------------------------------------------

--
-- Table structure for table `category_type`
--

CREATE TABLE `category_type` (
  `id_type` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_type`
--

INSERT INTO `category_type` (`id_type`, `c_name`) VALUES
(1, 'Quần áo cho bé gái'),
(2, 'Quần áo cho bé trai'),
(3, 'Mũ - kính - phụ kiện'),
(4, 'Giày dép');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pk_product_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `fk_category_product_id` int(11) NOT NULL,
  `c_description` varchar(20000) NOT NULL,
  `c_price` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `c_sex` int(11) NOT NULL,
  `c_hotproduct` int(11) NOT NULL,
  `c_sale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pk_product_id`, `c_name`, `c_img`, `fk_category_product_id`, `c_description`, `c_price`, `type`, `c_sex`, `c_hotproduct`, `c_sale`) VALUES
(1, 'Bộ quần áo trẻ em - CFX01', 'a1.jpg', 2, '- Bộ ba lỗ thể thao trẻ em cao cấp h&egrave; 2018 d&agrave;nh cho c&aacute;c b&eacute; Trai từ 1-5 tuổi sẽ l&agrave;m tất cả c&aacute;c bố mẹ của B&eacute; phải bất ngờ trước vẻ ngo&agrave;i Đ&Aacute;NG Y&Ecirc;U, THỂ THAO V&Agrave; CỰC KỲ NĂNG ĐỘNG của con m&igrave;nh. - Sản phẩm chỉ bao gồm: &Aacute;o v&agrave; Quần. - D&agrave;nh cho: B&eacute; trai. - M&agrave;u sắc: Trắng, đỏ, xanh ngọc, cam... - Chất liệu: Cotton cao cấp d&agrave;y dặn v&agrave; si&ecirc;u bền. - Xuất xứ: H&agrave;ng Quảng Ch&acirc;u cao cấp.\r\n', 250000, 0, 1, 1, 0),
(2, 'Bộ quần áo trẻ em - CXP02', 'a2.jpg', 2, 'Mi&ecirc;u tả sản phẩm: Bộ đồ cotton cho b&eacute; trai - Thương hiệu UniFriend - Bộ đồ cho b&eacute; đến từ thương hiệu UniFriend của H&agrave;n Quốc thỏa m&atilde;n được tr&iacute; tưởng tượng phong ph&uacute; của c&aacute;c b&eacute;. Thiết kế độc đ&aacute;o, th&acirc;n thiện với những họa tiết hoạt h&igrave;nh s&aacute;ng tạo, m&agrave;u sắc ấn tượng, dễ thương. - UniFriend được l&agrave;m từ vải cotton 100% kh&ocirc;ng huỳnh quang. UniFriend kh&ocirc;ng d&ugrave;ng chất l&agrave;m s&aacute;ng quang học để vải được s&aacute;ng. Đảm bảo ho&agrave;n to&agrave;n sức khỏe v&agrave; l&agrave;n da cho b&eacute; y&ecirc;u của bạn.\r\n', 250000, 0, 0, 0, 1),
(4, 'Bộ lanh cộc tay thời trang bé trai Kiza in xe lu\r\n', 'a4.jpg', 2, 'Chất liệu: vải lanh mềm mại, thoáng mát\r\nThiết kế: rộng rãi, thoáng mát, thoải mái khi vui đùa', 300000, 0, 1, 0, 0),
(5, '\r\n  \r\nÁo cộc tay bé trai in hình quả bóng xanh Kiza', 'a5.jpg', 2, 'Áo cộc tay bé trai in hình quả bóng xanh Kiza\r\nChất liệu: vải cotton 100%, mềm mại, an toàn\r\n\r\nHọa tiết: trang trí hình trái bóng xinh xắn, đáng yêu\r\nThiết kế: rộng rãi, thoáng mát, co giãn, dễ chịu khi mặc lâu\r\nMàu sắc: xanh\r\n\r\nĐộ tuổi: 1-6 tuổi\r\nSize: 6 size (1T, 2T, 3T, 4T, 5T, 6T)\r\n\r\nThương hiệu: Kiza\r\n\r\nXuất xứ: Việt Nam', 200000, 0, 1, 0, 0),
(6, 'Áo len bé trai cổ tròn màu xanh', 'a6.jpg', 2, 'Áo len bé trai cổ tròn màu xanh có size 10-14 tuổi.\r\n\r\n \r\n\r\nSản phẩm được thiết kế và sản xuất bởi Bluekids.\r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể Giặt khô.\r\n- Không được: Tẩy.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 160000, 0, 1, 0, 0),
(7, 'Áo len bé trai in hình xe máy', 'a7.jpg', 2, 'Áo len bé trai in hình xe máy có size 4-9 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể Giặt khô.\r\n- Không được: Tẩy.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 100000, 0, 1, 1, 0),
(8, 'Áo len đen in chữ ngực NY', 'a8.jpg', 1, 'Áo len đen in chữ ngực NY có size 4-9 tuổi.\r\n\r\n \r\n\r\nSản phẩm được thiết kế và sản xuất bởi Bluekids.\r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể Giặt khô.\r\n- Không được: Tẩy.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 400000, 0, 0, 0, 1),
(9, 'Áo vest bé trai dạ màu xám', 'a9.jpg', 2, 'Áo vest bé trai dạ màu xám có size 10-16 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể Giặt khô.\r\n- Không được: Tẩy.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 260000, 0, 1, 0, 0),
(10, 'Áo vest bé trai kẻ tăm màu xanh', 'a10.jpg', 2, 'Áo vest bé trai kẻ tăm màu xanh có size 4-9 tuổi.\r\n\r\n \r\n\r\nSản phẩm được thiết kế và sản xuất bởi Bluekids.\r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể Giặt khô.\r\n- Không được: Tẩy.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ', 160000, 0, 1, 0, 0),
(11, 'Sơ mi xanh nơ cổ', 'a11.jpg', 2, 'Sơ mi xanh nơ cổ\r\nSản phẩm được thiết kế và sản xuất bởi Bluekids.\r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể Giặt khô.\r\n- Không được: Tẩy.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ', 500000, 0, 1, 1, 1),
(12, 'Áo sơ mi bé trai kẻ ô xám trắng', 'a12.jpg', 2, 'Áo sơ mi bé trai kẻ ô xám trắng có size 4-8 tuổi. Áo thiết kế đơn giản, nền vải kẻ caro nhỏ, phù hợp với mọi dáng người. Vải áo mềm mát, thấm hút mồ hôi rất tốt.\r\n\r\nSản phẩm được thiết kế và sản xuất bởi Bluekids.\r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể Giặt khô.\r\n- Không được: Tẩy.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 300000, 0, 1, 0, 0),
(13, 'Quần jean mài nhăn', 'a13.jpg', 2, 'Quần jean mài nhăn có size 4-9 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể Giặt khô.\r\n- Không được: Tẩy.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 340000, 0, 1, 0, 0),
(14, 'Quần nhung tăm đỏ booc đô', 'a15.jpg', 2, 'Quần nhung tăm đỏ booc đô có size 4-9 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể Giặt khô.\r\n- Không được: Tẩy.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 260000, 0, 1, 0, 0),
(15, 'Quần kaki bé trai màu xanh dương', 'a16.jpg', 2, 'Quần kaki bé trai màu xanh dương có size 4-9 tuổi.\r\n\r\n \r\n\r\nSản phẩm được thiết kế và sản xuất bởi Bluekids.\r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể Giặt khô.\r\n- Không được: Tẩy.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 560000, 0, 1, 0, 0),
(16, 'Quần short bé trai kẻ sọc tăm', 'a17.jpg', 2, 'Quần short bé trai kẻ sọc tăm có size 4-14 tuổi. Chất vải kaki mềm, quần kẻ sọc cá tính và năng động.\r\n\r\nSản phẩm được thiết kế và sản xuất bởi Bluekids.\r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể Giặt khô.\r\n- Không được: Tẩy.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 250000, 0, 1, 0, 0),
(17, 'Quần short bé trai in hình ngựa', 'a18.jpg', 2, 'Quần short bé trai in hình ngựa có size 4-14 tuổi. Chất vải kaki mềm, in hình ngựa vằn cá tính và năng động.\r\n\r\nSản phẩm được thiết kế và sản xuất bởi Bluekids.\r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể Giặt khô.\r\n- Không được: Tẩy.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 140000, 0, 1, 0, 0),
(18, 'Quần short bé trai xanh họa tiết', 'a19.jpg', 2, 'Quần short bé trai xanh họa tiết có size 4-9 tuổi. Chiếc quần tuyệt vời dành cho mùa hè, có thể mặc dạo biển hoặc bơi đều phù hợp.\r\n\r\nSản phẩm nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 170000, 0, 1, 0, 0),
(19, '[ HÀNG CAO CẤP ] Quần short nam đũi xuât dư trắng Rough - QR004-A', '1537717537a20.jpg', 2, 'Quần short nam đũi xu&acirc;t dư trắng Rough - QR004-A họa tiết chấm c&oacute; size 4-9 tuổi. Quần được may bằng vải Lycra mềm mịn, thiết kế m&agrave;u sắc bắt mắt. Sản phẩm nhập khẩu trực tiếp từ T&acirc;y Ban Nha. Chất liệu: 98% Cotton, 2% Elastane. Hướng dẫn Giặt l&agrave;: - Giặt m&aacute;y dưới 30 độ C. - Kh&ocirc;ng được: Tẩy, Giặt kh&ocirc;. - Sấy ở nhiệt độ dưới 60 độ C. - Chỉ được l&agrave; hơi nhiệt độ nhẹ.\r\n', 90000, 0, 1, 1, 0),
(20, 'Sơ mi kẻ caro xanh', 'a21.jpg', 2, 'Sơ mi kẻ caro xanh có size 4-9 tuổi. Quần được may bằng vải Lycra mềm mịn, thiết kế màu sắc bắt mắt.\r\n\r\nSản phẩm nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n\r\nChất liệu: 98% Cotton, 2% Elastane.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 150000, 0, 1, 0, 0),
(21, 'Váy bé gái màu hồng tay nơ', 'a22.jpg', 1, 'Váy bé gái màu hồng tay nơ có size 4-14 tuổi. Váy được thiết kế nhẹ nhàng tinh tế bằng những nếp xếp ly nhỏ, xinh xắn ở phần tay và thân váy. Phía sau là 1 hàng cúc dài chạy dọc.\r\n\r\n \r\n\r\nSản phẩm được thiết kế và sản xuất bởi Bluekids.\r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể Giặt khô.\r\n- Không được: Tẩy.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 230000, 0, 0, 0, 0),
(22, 'Váy polo bé gái màu ghi', 'a23.jpg', 1, 'Váy polo bé gái màu ghi có size 10-14 tuổi. Váy polo  luôn là một lựa chọn hàng đầu cho các buổi dã ngoại, hoạt động ngoài trời vì đặc điểm thoải mái, năng động không kém phần nữ tính của nó.\r\n\r\n \r\n\r\nSản phẩm được thiết kế và sản xuất bởi Bluekids.\r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể Giặt khô.\r\n- Không được: Tẩy.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 170000, 0, 0, 0, 0),
(23, 'Váy bé gái ren hoa dây lưng', 'a24.jpg', 1, 'Váy bé gái ren hoa dây lưng có size 10-14 tuổi. Váy được may toàn bộ bằng lớp vải ren hoa dịu dàng, mềm mại. Là chiếc váy tuyệt vời cho các cô bé tuổi teen.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nChất liệu:\r\n\r\nLớp ngoài: 65% Cotton, 35% Polyamide\r\nLớp lót: 85% Polyester, 15% Cotton\r\n\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.\r\n\r\nLưu ý: Bỏ belt ra trước khi giặt.', 190000, 0, 0, 0, 0),
(24, 'Váy bé gái màu đỏ hoa hồng', 'a25.jpg', 1, 'Váy bé gái màu đỏ hoa hồng có size 10-14 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nChất liệu: \r\n\r\nLớp ngoài: 67% Polyester, 33% Viscose\r\n\r\nLớp lót: 65% Polyester, 35% Cotton\r\n\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 150000, 0, 0, 1, 0),
(25, 'Áo len bé gái xám hình sao', 'a26.jpg', 1, 'Áo len bé gái xám hình sao có size 4-9 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nChất liệu: 60% Acrylic, 30% Polyamide, 10% Wool\r\n\r\n\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 210000, 0, 0, 0, 0),
(26, 'Áo khoác len bé gái cổ lông', 'a27.jpg', 1, 'Áo khoác len bé gái cổ lông có size 4-9 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nChất liệu: 70% Acrylic, 30% Polyamide\r\n\r\n\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 160000, 0, 0, 1, 0),
(27, 'Áo len bé gái trắng đan hoa', 'a28.jpg', 1, 'Áo len bé gái trắng đan hoa có size 4-9 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nChất liệu: 60% Acrylic, 35% Polyamide, 5% Wool\r\n\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 130000, 0, 0, 0, 0),
(28, 'Áo len bé gái cổ lọ trơn 1 màu', 'a29.jpg', 1, 'Áo len bé gái cổ lọ trơn 1 màu có size 10-16 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n\r\n\r\nChất liệu: 60% Acrylic, 35% Polyamide, 5% Wool.\r\n\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 180000, 0, 0, 0, 0),
(29, 'Áo phông hình 3 bé gái', 'a30.jpg', 1, 'Áo phông hình 3 bé gái có size 4-9 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 170000, 0, 0, 1, 0),
(30, 'Áo phông bé gái hình mèo đeo nơ', 'a31.jpg', 1, 'Áo phông bé gái kẻ xanh chữ Bluesven có size 4-9 tuổi.\r\n\r\n \r\n\r\nSản phẩm được thiết kế và sản xuất bởi Bluekids.\r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể Giặt khô.\r\n- Không được: Tẩy.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 220000, 0, 0, 0, 0),
(31, 'Bộ quần áo bé gái chữ B chân váy ren lưới', 'a32.jpg', 1, 'Bộ quần áo bé gái chữ B chân váy ren lưới có size 4-9 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nChất liệu: \r\n\r\nÁo: 100% Cotton.\r\n\r\nVáy: Lớp ngoài:100% Polyester. Lớp lót:  95% Cotton, 5% Elastane\r\n\r\n\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 260000, 0, 0, 1, 0),
(32, 'Bộ quần áo nỉ cô gái hình tim', 'a33.jpg', 1, 'Bộ quần áo nỉ cô gái hình tim có size 4-14 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nChất liệu:\r\n\r\nÁo: 52% Cotton, 48% Polyester\r\n\r\nQuần: 95% Cotton, 5% Elastane\r\n\r\n\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 270000, 0, 0, 0, 0),
(33, 'Bộ quần áo bé gái in hình cô gái', 'a34.jpg', 1, 'Bộ quần áo bé gái in hình cô gái có size từ 4-9 tuổi. Lưng áo thiết kế cầu kỳ hình chiếc nơ kẻ caro đồng điệu cả với phần viền tay áo. Điểm kim sa ở phần in ngực áo.\r\n\r\nSản phẩm nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n\r\nChất liệu: 50% Polyester, 47% Cotton, 3% Elastane.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 235000, 0, 0, 0, 0),
(34, 'Quần legging túi đính đá', 'a35.jpg', 1, 'Quần legging bé gái túi đính đá có size 10-16 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nChất liệu:  68% Viscose, 27% Polyamide, 5% Elastane\r\n\r\n\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 245000, 0, 0, 1, 0),
(35, 'Quần legging bé gái họa tiết', 'a36.jpg', 1, 'Quần legging bé gái họa tiết có size 4-9 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nChất liệu: 95% Cotton, 5% Elastane.\r\n\r\n\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 255000, 0, 0, 0, 0),
(36, 'Quần legging len khuy gấu', 'a37.jpg', 1, 'Quần legging len khuy gấu có size 4-9 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nChất liệu: 95% Cotton, 5% Elastane.\r\n\r\n\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 160000, 0, 0, 0, 0),
(37, 'Chân váy bé gái xanh đen xếp ly', 'a38.jpg', 1, 'Chân váy bé gái xanh đen xếp ly có size 10-16 tuổi.\r\n\r\n \r\n\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n \r\n\r\nChất liệu:  100% Polyester\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 190000, 0, 0, 0, 0),
(38, 'Chân váy bé gái nỉ ép zen', 'a39.jpg', 1, 'Chân váy bé gái nỉ ép zen có size 10-16 tuổi. Được may bằng loại vải ép dày, dáng váy đơn giản và cá tính.\r\nSản phẩm được nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\n\r\nChất liệu:\r\n- Bề ngoài: 55% Polyester, 45% Acrylic.\r\n- Lót trong: 100% Polyester\r\n\r\nHướng dẫn giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Có thể giặt khô.\r\n- Không được: Tẩy, Sấy.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 260000, 0, 0, 0, 0),
(39, 'Quần short jean bé gái gập gấu', 'a40.jpg', 1, 'Quần short jean bé gái gập gấu có size 4-9 tuổi. Jean luôn là sản phẩm không bao giờ lỗi mốt, thiết kế rất đơn giản, quần được gập gấu tạo cá tính cho  sản phẩm.\r\n\r\nSản phẩm nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 150000, 0, 0, 0, 0),
(40, 'Áo khoác dạ mũ lông', 'a41.jpg', 1, 'Áo khoác dạ mũ lông có size 4-9 tuổi. Jean luôn là sản phẩm không bao giờ lỗi mốt, thiết kế rất đơn giản, quần được gập gấu tạo cá tính cho  sản phẩm.\r\n\r\nSản phẩm nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\nChất liệu: 100% Cotton.\r\n\r\nHướng dẫn Giặt là:\r\n- Giặt máy dưới 30 độ C.\r\n- Không được: Tẩy, Giặt khô.\r\n- Sấy ở nhiệt độ dưới 60 độ C.\r\n- Chỉ được là hơi nhiệt độ nhẹ.', 180000, 0, 0, 1, 0),
(41, 'Áo khoác dù bé gái 1-8 tuổi in tim dễ thương', 'a42.jpg', 1, 'Áo khoác bé gái thời trang và nữ tính diện Thu Đông cực đẹp. \r\nCó rất nhiều cách mix đồ thời trang trẻ em khác nhau để mẹ chọn cho bé gái của mình diện trong mùa thu đông này. Với chiếc áo khoác gió bé gái cực đẹp có giá 149.000 đồng được bán tại Babi.vn này sẽ là lựa chọn đáng yêu cho bé mùa thu này. Hàng chất vải dù siêu đẹp cao cấp, màu sắc nổi bật sành điệu và thời trang nhé mẹ. Bé sẽ thích thú khi được diện những chiếc áo khoác được in hình tim và bé gái vô cùng xinh xắn thế này ạ.Có size cho bé từ 10kg đến 30kg luôn. Ghé xem ngay mẹ nhé!', 260000, 0, 0, 0, 0),
(42, 'Áo khoác nỉ bé gái cổ đứng size đại (6-12 tuổi)', 'a42.jpg', 1, 'Tên Sản Phẩm	Áo khoác nỉ bé gái cổ đứng size đại (6-12 tuổi)\r\nMã Sản Phẩm	33185\r\nMàu sắc	\r\n1 - Màu đỏ\r\n2 - Màu vàng\r\n3 - Màu hồng\r\n\r\nHọa tiết	thêu chữ, có túi, cổ đứng\r\nChất liệu	vải nỉ\r\nSize quần áo	9, 10, 11, 12, 13, 14, 15\r\nSize Babi	06, 07, 08, 09, 10, 11, 12\r\nTuổi	từ 6 tuổi - 12 tuổi\r\nCân nặng	từ 20kg - 50kg\r\nXuất xứ	Việt Nam.', 180000, 0, 0, 0, 0),
(43, 'Dép đi trong nhà I love U cho cả gia đình', 'a45.jpg', 4, 'Tên sản phẩm	Dép đi trong nhà I love U cho cả gia đình\r\n', 85000, 2, 0, 0, 0),
(44, 'Giày búp bê bé gái quai thun mũi đính ngọc trai và con ong size lớn', 'a43.jpg', 4, 'Tên sản phẩm	Giày búp bê bé gái quai thun mũi đính ngọc trai và con ong size lớn\r\nMã sản phẩm	09515\r\nMàu sắc	\r\n1 - Màu đỏ đô\r\n2 - Màu đỏ đen\r\n\r\nHọa tiết	búp bê quai thun mũi đính ngọc trai và con ong\r\nChất liệu	da phối nhung, chất liệu đế cao su mềm, nhẹ có độ êm uốn và ma sát tốt\r\nSize giày	28, 29, 30, 31, 32, 33\r\nSize Babi	01, 02, 03, 04, 05, 06\r\nKích thước	28 : 17.5cm\r\n29 : 18cm\r\n30 : 18.5cm\r\n31 : 19cm\r\n32 : 19.5cm\r\n33 : 20cm\r\nXuất xứ	Korea', 255000, 2, 0, 0, 0),
(45, 'Giày sandal tập đi phối màu cho bé yêu', 'a44.jpg', 4, 'Tên sản phẩm	Giày sandal tập đi phối màu cho bé yêu\r\nMã sản phẩm	11098\r\nMàu sắc	\r\n1 - Màu xanh ngọc\r\n\r\nHọa tiết	phối 2 màu dễ thương, mềm nhẹ tạo cảm giác dễ chịu cho bé khi mang, có miếng dán điều chỉnh lớn nhở theo chân của bé, giày quai ngang thoải mái cho mùa hè nóng bức.\r\nChất liệu	vải mềm\r\nKích thước giày	0-6: 11cm\r\n6-12: 12cm\r\nTuổi	dành bé sơ sinh và đang tập đi\r\nXuất xứ	Việt Nam', 85000, 2, 0, 0, 0),
(46, 'Dép đi trong nhà I love U cho cả gia đình', 'a45.jpg', 4, 'Tên sản phẩm	Dép đi trong nhà I love U cho cả gia đình\r\nMã sản phẩm	09520\r\nMàu sắc	\r\n1 - Màu nâu\r\n2 - Màu hồng dâu\r\n3 - Màu xanh ngọc\r\n\r\nHọa tiết	Thêu chữ I Love You\r\nChất liệu	vải lông\r\nSize giày	38-39, 40-41, 44-45\r\nSize Babi	01, 02, 03\r\nKích thước	38-39 : 24.5cm\r\n40-41 : 26cm\r\n44-45 :27cm\r\nĐộ tuổi	Người lớn\r\nXuất xứ	TQ', 85000, 2, 0, 0, 0),
(47, 'Giày tập đi quai dán cho bé trai', 'a46.jpg', 4, 'Tên sản phẩm	Giày tập đi quai dán cho bé trai\r\nMã sản phẩm	11168\r\nMàu sắc	\r\n1 - Màu nâu\r\n\r\nHọa tiết	dán quai, viền sọc\r\nChất liệu	vải\r\nSize giày	1, 2, 3\r\nSize Babi	01, 02, 03\r\nKích thước giày	Size 1 : 11 cm (3-6 tháng)\r\nSize 2: 12 cm (6-9 tháng)\r\nSize 3: 13cm. (9-18 tháng)\r\nTuổi	dành bé sơ sinh và đang tập đi (3-18 tháng )\r\nXuất xứ	Việt Nam', 85000, 2, 0, 1, 0),
(48, 'Giày mọi bé trai da trơn mũi gắn kim loại', 'a47.jpg', 4, 'Tên sản phẩm	Giày mọi bé trai da trơn mũi gắn kim loại (33-44)\r\nMã sản phẩm	09518\r\nMàu sắc	\r\n1 - Màu đỏ\r\n\r\nHọa tiết	kiểu giày mọi, mũi gắn kim loại cá tính\r\nChất liệu	da PU, chất liệu đế cao su mềm, nhẹ có độ êm uốn và ma sát tốt\r\nSize giày	25, 26, 27, 28, 29, 30, 31, 32\r\nSize Babi	01, 02, 03, 04, 05, 06, 07, 08\r\nKích thước	25 : 16cm\r\n26 : 16.5cm\r\n27 : 17cm\r\n28 : 17.5cm\r\n29 : 18 cm\r\n30 : 18.5cm\r\n31 : 19cm\r\n32 : 19.5cm\r\nXuất xứ	Korea', 255000, 2, 0, 0, 0),
(49, 'Giày mọi bé trai da cá sấu gắn chữ kim loại trên mũi', 'a48.jpg', 4, 'Tên sản phẩm	Giày mọi bé trai da cá sấu gắn chữ kim loại trên mũi\r\n', 255000, 2, 0, 0, 0),
(50, 'Tất chân nhiều họa tiết cho bé trai 2 tuổi trở lên', 'a53.jpg', 3, 'T&ecirc;n Sản Phẩm Tất ch&acirc;n nhiều họa tiết cho b&eacute; trai M&atilde; Sản Phẩm 101801 Họa tiết nhiều họa tiết như h&igrave;nh chụp tr&ecirc;n ( m&agrave;u giao ngẫu nhi&ecirc;n) M&agrave;u sắc 1 - Ngẫu nhi&ecirc;n Chất liệu Thun len K&iacute;ch cỡ 2, 4, 5-6,5, 7-8,5, 9-11 Size Babi 01, 02, 03, 04, 05 Tuổi từ 2 tuổi trở l&ecirc;n K&iacute;ch thước 01 ( 11-12cm) 02 (13cm) 03 (14cm) 04 (15cm-16cm) 05 (16-17cm) Xuất xứ Quảng Ch&acirc;u\r\n', 58000, 1, 0, 1, 0),
(51, 'Mắt kính trẻ em xếp hình mèo ngộ nghĩnh', 'a50.jpg', 3, 'Tên Sản Phẩm	Mắt kính trẻ em xếp hình mèo ngộ nghĩnh\r\nMã Sản Phẩm	02019\r\nMàu sắc	1 - Màu cam, 2 - Màu xanh, 3  Màu đỏ, 4 - Màu vàng, 5- Màu hồng, 6 - Màu xanh dương, 7 - Màu xanh đen\r\nHọa tiết	kính xếp\r\nhình mèo\r\nChất liệu	nhựa dẻo\r\nTuổi	cho mọi lứa tuổi\r\nXuất xứ	TQ', 135000, 1, 0, 0, 0),
(52, 'Cà vạt thắt sẵn cho bé trai lịch sự dự tiệc', 'a51.jpg', 3, 'Tên sản phẩm	Cà vạt thắt sẵn cho bé trai lịch sự dự tiệc\r\nMã sản phẩm	101287\r\nMàu sắc	\r\n - Màu đen\r\n - Màu cam\r\n - Màu trắng\r\n - Màu hồng\r\n - Màu đỏ cờ\r\n - Màu đỏ đô\r\n - Màu xanh da\r\n - Màu xanh dương\r\n\r\nChất liệu	Vải phi\r\nXuất xứ	Việt Nam', 15000, 1, 0, 0, 0),
(53, 'Nón in hình gấu cho bé', 'a52.jpg', 3, 'Tên Sản Phẩm	Nón in hình gấu cho bé (ML23)\r\nMã Sản Phẩm	101643\r\nHọa tiết	phối hình thỏ\r\nMàu sắc	1 - Đỏ\r\n2 - Vàng \r\n3 - Hồng\r\nChất liệu	thun cotton\r\nTuổi	từ \r\nXuất xứ	TQ ', 49000, 1, 0, 0, 0),
(54, 'Nón lưỡi trai hình siêu nhân cho bé trai', 'a53.jpg', 3, 'Tên Sản Phẩm	Nón lưỡi trai hình siêu nhân cho bé trai \r\nMã Sản Phẩm	101133\r\nHọa tiết	hình Spiderman\r\nMàu sắc	1 - Màu đỏ\r\n2 - Màu xanh\r\n3 - Màu vàng\r\nChất liệu	kaki\r\nTuổi	từ 2 tuổi - 8 tuổi\r\nCân nặng	từ 12kg - 30kg\r\nXuất xứ	Việt Nam', 45000, 1, 0, 1, 0),
(55, 'Khẩu trang vải gạc cao cấp cho bé', 'a54.jpg', 3, 'Tên sản phẩm: Khẩu trang vải gạc cao cấp cho bé\r\n\r\nMã sản phẩm: 02003\r\n\r\nMàu sắc: ngẫu nhiên\r\n\r\nHọa tiết: nhiều họa tiết\r\n\r\nChất liệu: làm hoàn toàn bằng vải gạc cao cấp ( chất liệu làm khăn gạc dùng cho trẻ sơ sinh)\r\n\r\nChất liệu: từ 9 tháng - 4 tuổi\r\n\r\nXuất xứ: Việt Nam\r\n\r\nNhãn hiệu : Babi', 14000, 1, 0, 0, 0),
(56, 'Kính Place gọng sắt xanh', 'a55.jpg', 3, 'Kính Place gọng sắt xanh có size 5-8Y\r\n\r\nSản phẩm nhập khẩu chính hãng Chirldren Place – Mỹ\r\n\r\nHướng dẫn Giặt là:\r\n- Không được: Tẩy, Giặt khô, Giặt máy, Sấy, Là.', 169000, 1, 0, 0, 0),
(57, 'Mũ cói bé gái viền nơ xanh', 'a56.jpg', 3, 'Mũ cói bé gái viền nơ xanh có size 4-9 tuổi. Mũ được trang trí bằng nơ và khác biệt ở các chi tiết kẻ ngang.\r\n\r\nSản phẩm nhập khẩu trực tiếp từ Tây Ban Nha.\r\n\r\nChất liệu: \r\n\r\n- Outside: 100% Paper\r\n- Lining: 80% Polyester, 20% Cotton', 270000, 1, 0, 0, 1),
(59, 'Quần áo trẻ em - TG-16', 'a57.jpg', 2, 'Quần &aacute;o trẻ em\r\n\r\nQXN&nbsp;&nbsp;xin kính chào qu&yacute; kh&aacute;ch. Khi mua hàng của chúng t&ocirc;i quý khách sẽ được:\r\n\r\n\r\n	Hàng giao t&acirc;̣n nơi quý khách hàng ở\r\n	Đ&ocirc;̉i trả hàng trong vòng 7 ngày&nbsp;n&ecirc;́u kh&ocirc;ng ưng ý sản ph&acirc;̉m.\r\n\r\n\r\nCam kết: 100% vải thun cotton co gi&atilde;n 4 chiều m&aacute;t lạnh\r\n????N&oacute;i kh&ocirc;ng với chất: Bai &ndash; Nh&atilde;o &ndash; X&ugrave; v&agrave; c&aacute;c chất nh&atilde;o n&aacute;t vớ vẩn\r\n????Thấm h&uacute;t mồ h&ocirc;i tốt, gi&uacute;p b&eacute; thoải m&aacute;i hoạt động trong ng&agrave;y h&egrave; n&oacute;ng bức.\r\n????Giao h&agrave;ng to&agrave;n quốc &ndash; Thu tiền tại nh&agrave;!\r\n????Mẫu m&atilde; Hot Hit, phong c&aacute;ch cực xinh, m&agrave;u sắc qu&aacute; ư l&agrave; đẹp\r\n????Mẫu sản xuất d&agrave;nh ri&ecirc;ng cho con từ 8 th&aacute;ng cho đến 5 tuổi ( 6kg - 23kg)\r\n????Sản phẩm được c&aacute;c si&ecirc;u thị, shop t&iacute;n nhiệm tin d&ugrave;ng\r\nBạn chưa hiểu c&aacute;ch lấy h&agrave;ng vui l&ograve;ng IB (gửi tin nhắn v&agrave;o hộp thư) ch&uacute;ng t&ocirc;i đang ở đ&oacute; v&agrave; sẵn s&agrave;ng tư vấn cho bạn\r\n', 150000, 0, 1, 1, 0),
(60, 'BỘ PHI CÔNG BÉ TRAI ÁO THUN QUẦN KAKI CỰC HÓT MÙA HÈ - B.BT175P', 'a58.jpg', 2, 'BỘ PHI C&Ocirc;NG B&Eacute; TRAI &Aacute;O THUN QUẦN KAKI CỰC H&Oacute;T M&Ugrave;A H&Egrave;\r\n\r\nS&eacute;t phi c&ocirc;ng cho b&eacute; trai b&eacute; g&aacute;i cực chất.\r\n\r\nGHI CHÚ  CỦA 1 BỘ\r\n\r\nU TRẮNG B&Eacute; TRAI CHỈ C&Ograve;N SIZE: 2 3 4 5 5 (10-18KG) V&Agrave; SIZE 9 12 13 13 13 14 (22-40KG)\r\n\r\nM&Agrave;U TRẮNG B&Eacute; G&Aacute;I CHỈ C&Ograve;N SIZE: 1 1 2 2 2 4 4 4 6 6 6 7 7 7 (9-21KG)\r\n\r\nM&Agrave;U XANH B&Eacute; TRAI CHỈ C&Ograve;N SIZE: 1 1 2 2 2 2 3 3 3 4 4 4 4 5 5 5 6 6 7 7 7 7 8 8 8 8 8 9 10 11 11 12 13\r\n\r\nM&Agrave;U XANH B&Eacute; G&Aacute;I CHỈ C&Ograve;N SIZE: 1 2 3 4 5 6 7 8 9 9 9 10 11 12 14\r\n\r\nsize 1 cho b&eacute; 9-11kg\r\n\r\nsize 2 cho b&eacute; 12-13kg\r\n\r\nsize 3 cho b&eacute; 13-14kg\r\n\r\nsize 4 cho b&eacute; 14-16kg\r\n\r\nsize 5 cho b&eacute; 16-18kg\r\n\r\nsize 6 cho b&eacute; 18-20kg\r\n\r\nsize 7 cho b&eacute; 20-22kg\r\n\r\nsize 8 cho b&eacute; 23-24kg\r\n\r\n\r\n\r\nK&iacute;ch thước 9 CHO B&Eacute; 24-25kg\r\n\r\nK&iacute;ch thước 10 cho b&eacute; 25-27kg\r\n\r\nK&iacute;ch thước 11 cho b&eacute; 28-30 kg\r\n\r\nK&iacute;ch thước 12 cho b&eacute; 31-33 kg\r\n\r\nK&iacute;ch thước 13 cho b&eacute; 34-3kg\r\n\r\nK&iacute;ch thước 14 cho b&eacute; 37-39kg\r\n', 189000, 0, 1, 1, 0),
(61, 'Bộ bé trai phong cách thể thao thun cotton 3 màu hàng vnxk - B.BT175.3m', 'a59.jpg', 2, 'Bộ b&eacute; trai phong c&aacute;ch thể thao thun cotton 3 m&agrave;u h&agrave;ng vnxk\r\n\r\n	Chất liệu:;Kaki,Jeans / B&ograve; / Denim,Thun / Spandex.\r\n	Nh&atilde;n hiệu:;Đang cập nhật.\r\n	Xuất xứ:;Việt Nam.\r\n\r\n', 230000, 0, 1, 1, 0),
(62, 'SIZE ĐẠI Bộ bé trai tay dài cổ trụ - CBT31857', 'a60.jpg', 2, 'THUỘC T&Iacute;NH SẢN PHẨM\r\n	Chất liệu:;Chất liệu kh&aacute;c,Thun / Spandex.\r\n	Nh&atilde;n hiệu:;Đang cập nhật.\r\n	Xuất xứ:;Việt Nam.\r\n', 260000, 0, 1, 1, 0),
(63, 'Bộ thô caro 2 dây cho bé 8kg-25kg - carohaiday', 'a62.jpg', 1, 'THUỘC T&Iacute;NH SẢN PHẨM Chất liệu:;Chất liệu kh&aacute;c. Nh&atilde;n hiệu:;Đang cập nhật. Xuất xứ:;Việt Nam Bảng size cho b&eacute; tại KLINK KIDS, c&aacute;c mẹ tham khảo nha: Size 1: 8kg - 10kg Size 2: 10kg - 12kg Size 3: 13kg - 15kg Size 4: 15kg - 17kg Size 5: 17kg - 19kg Size 6: 20kg - 23kg Size 7: 24kg - 26kg\r\n', 120000, 0, 0, 0, 0),
(64, 'Bộ thể thao bé gái size đại từ 3-15 tuổi - B3664', 'a63.jpg', 1, 'THUỘC T&Iacute;NH SẢN PHẨM\r\nChất liệu:;Cotton,Thun / Spandex.\r\n	Nh&atilde;n hiệu:;Đang cập nhật.\r\n	Xuất xứ:;H&agrave;n Quốc.\r\n	\r\n	Bộ thể thao b&eacute; g&aacute;i size đại từ 3-15 tuổi, Chi tiết như sau\r\n\r\n	SIZE 120 TỪ 18 ĐẾN 21KG\r\n\r\n	SIZE 130 TỪ 22 ĐẾN 26KG\r\n\r\n	SIZE 140 TỪ 27 ĐẾN 29KG\r\n\r\n	SIZE 150 TỪ 30 ĐẾN 37KG\r\n\r\n	SIZE 160 TỪ 38 ĐẾN 45KG\r\n\r\n	SIZE 170 TỪ 46 ĐẾN 50kg\r\n\r\n	Chất vải cotton mềm, thấm mồ h&ocirc;i\r\n\r\n	Sản phẩm đẹp như h&igrave;nh\r\n	\r\n<\r\n', 240000, 0, 0, 1, 0),
(65, 'Set áo và chân váy cực cá tính cho bé hàng cao cấp giá rẻ - V35', 'a64.jpg', 1, 'THUỘC T&Iacute;NH SẢN PHẨM\r\n\r\n\r\n	Chất ệu:Cotton thun.\r\n	Xuất xứ:Canada.\r\n	Nh&atilde;n hiệu:Đang cập nhật.\r\n	Size: 8-20kg&nbsp;\r\n	Chất ệu cao cấp, tỉ mỉ từng đường may mũi chỉ, cườm/hạt được đ&iacute;nh bằng tay\r\n	H&igrave;nh tự chụp n&ecirc;n mấy chị y&ecirc;n t&acirc;m, h&agrave;ng ship đi xa em g&oacute;i cẩn thận nhiều lớp n&ecirc;n đ&ocirc;i khi sp bị &eacute;p chặt dẫn đến nhăn/xẹp. ĐỪNG LO LẮNG mấy chị chỉ cần vuốt lại sp cho thẳng rồi để tự nhi&ecirc;n 15-20p sp sẽ bung x&ograve;e lại.&nbsp;\r\n\r\n', 154000, 0, 0, 1, 0),
(66, 'SÉT BỘ BÉ GÁI CÁCH ĐIỆU QUẦN ỐNG RỘNG XẺ TÀ HÀNG NHẬP Y HÌNH - B.BG310XT', 'a65.jpg', 1, 'THUỘC T&Iacute;NH SẢN PHẨM\r\n\r\n|\r\n	Chất liệu:;Jeans / B&ograve; / Denim,Chất liệu kh&aacute;c,Cotton thun.\r\n	Nh&atilde;n hiệu:;Đang cập nhật.\r\n	Xuất xứ:;People&#39;s Republic of China.\r\n\r\n\r\nsize 110 cho b&eacute; 16-20kg\r\n\r\nsize 120 cho b&eacute; 21-26kg\r\n\r\nsize 130 cho b&eacute; 27-30kg\r\n\r\nsize 140 cho b&eacute; 31-34kg\r\n\r\nsize 150 cho b&eacute; 35-39kg\r\n\r\nsize 160 cho b&eacute; 40-45kg\r\n\r\nsize 170 cho b&eacute; 46-50kg\r\n\r\n&nbsp;\r\n\r\nC&ograve;n tuỳ v&agrave;o chiều cao v&agrave; v&oacute;c d&aacute;ng của c&aacute;c b&eacute;\r\n\r\n&nbsp;c&aacute;c mẹ lưu&nbsp;&yacute; khi&nbsp;đặt h&agrave;ng,&nbsp;để lại chiều cao cận nặng shop sẽ chọn size ph&ugrave; hợp cho b&eacute;.\r\n', 310000, 0, 0, 0, 1),
(67, 'Bộ váy bé gái nàng thơ điệu đà xinh mát mùa hè hàng vnxk - V.BG170t', 'a66.jpg', 1, 'THUỘC T&Iacute;NH SẢN PHẨM\r\n\r\n\r\n	Chất liệu:;Thun / Spandex.\r\n	Nh&atilde;n hiệu:;Đang cập nhật.\r\n	Xuất xứ:;Việt Nam.\r\n\r\n', 170000, 0, 0, 0, 0),
(68, 'Bộ váy bé gái nàng thơ điệu đà xinh mát mùa hè hàng vnxk', 'a67.jpg', 1, 'THUỘC T&Iacute;NH SẢN PHẨM\r\n\r\n	Chất liệu:;Thun / Spandex.\r\n	Nh&atilde;n hiệu:;Đang cập nhật.\r\n	Xuất xứ:;Việt Nam.\r\n', 170000, 0, 0, 1, 1),
(69, 'Giày thể thao bé trai - Siêu nhẹ, siêu êm chân - A1630', 'a68.jpg', 4, 'THUỘC T&Iacute;NH SẢN PHẨM\r\n\r\n\r\n	Chất liệu:;Cao su tổng hợp,Lưới.\r\n	Nh&atilde;n hiệu:;Kh&aacute;c .\r\n	Xuất xứ:;HongKong.\r\n	\r\n	Thương hiệu:&nbsp;coga / Cool\r\n\r\n	Th&ocirc;ng số sản phẩm:\r\n	\r\n	Thương hiệu: coga / cool\r\n	Ph&acirc;n loại m&agrave;u: Xanh Lam - Đen - Đỏ\r\n	M&atilde; h&agrave;ng: A1630\r\n	Chất liệu: Lưới + Đế Cao Su tổng hợp\r\n	\r\n', 499000, 2, 1, 1, 1),
(70, 'giày thể thao trẻ em 2-12 tuổi - T103', 'a69.jpg', 4, 'Gi&agrave;y thể thao cho trẻ em;,&nbsp; từ 2-12 tuổi\r\n\r\nKiểu d&aacute;ng sang trọng v&agrave; phong c&aacute;ch , dễ d&agrave;ng cho b&eacute; phối đồ đi chơi đi học&nbsp;\r\n\r\nChất liệu : đế cao su &ecirc;m ch&acirc;n v&agrave; an to&agrave;n cho b&eacute; , ch&acirc;́t nhẹ v&agrave; vải m&ecirc;̀m b&ecirc;̀n bỉ theo thời gian\r\n\r\nSize 25&ndash; 37\r\n\r\nTuổi ph&ugrave; hợp : 2 &ndash; 12 tuổi\r\n\r\nM&atilde; Sản Phẩm :T103\r\n\r\nM&agrave;u sắc : xanh dương\r\n\r\nCHIỀU D&Agrave;I&nbsp; LỌT L&Ograve;NG GI&Agrave;Y:&nbsp; size 25(15cm)\r\n\r\nSize 26 : (15,5 cm ) , Size 27 : (16 cm ) , Size 28 : (17 cm ) , Size 29 : (17,5 cm) , Size 30 : (18 cm ) , Size 31 : (18,5 cm ) , Size 32 : (19 cm ) , Size 33 : (20 cm ) , Size 34 : (20,5cm) , Size 35 : (21cm ) , Size 36 : (22 cm ) . SIZE 37, 23cm\r\n\r\nLƯU &Yacute; :&nbsp; Mẹ n&ecirc;n chọn chiều d&agrave;i l&ograve;ng ch&acirc;n b&eacute; nhỏ hơn chiều d&agrave;i l&ograve;ng gi&agrave;y khoảng (0,5 cm ) .\r\n', 229000, 2, 1, 0, 0),
(71, 'Giày thể thao phát sáng cho bé trai sạc USB mã LED5 - LED5_Trang', 'a70.jpg', 4, 'Gi&agrave;y ph&aacute;t s&aacute;ng cho b&eacute; trai v&agrave; b&eacute; g&aacute;i LED5 l&agrave; d&ograve;ng gi&agrave;y ph&aacute;t s&aacute;ng sử dụng sạc USB, gi&agrave;y c&oacute; 11 nấc bấm điều chỉnh độ s&aacute;ng v&agrave; thay đổi m&agrave;u sắc th&ocirc;ng minh. với kiểu buộc d&acirc;y v&agrave; kiểu d&aacute;ng trẻ trung năng động, gi&agrave;y ph&aacute;t s&aacute;ng trẻ em v&agrave; học sinh tiểu trung học sẽ mang tới cho b&eacute; một phong c&aacute;ch nổi bật giữa c&aacute;c buổi party night, club, trung thu, halloween, Noel, c&aacute;c tiết mục nhảy m&uacute;a, chơi hiphop&hellip;\r\n\r\n\r\n	Size: 35 - 43, Form gi&agrave;y thanh ni&ecirc;n &amp; Người lớn hoặc gi&agrave;y cho c&aacute;c b&eacute; trai b&eacute; g&aacute;i ngoại cỡ.\r\n	Nếu kh&ocirc;ng chọn được size to, Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng đặt tại link n&agrave;y:giay-the-thao-phat-sang-cho-be-trai-va-be-gai-sac-usb-ma-led5-11822502.html\r\n	M&agrave;u sắc: Trắng kết hợp đen đỏ\r\n	Xuất xứ: Trung Quốc xuất khẩu đảm bảo độ an to&agrave;n tuyệt đối\r\n	Chất liệu: Da PU kết hợp da lộn\r\n	Đế cao su nh&acirc;n tạo c&oacute; độ trong đục đầy phong c&aacute;ch. Đặc biệt l&agrave; c&oacute; đ&egrave;n ph&aacute;t s&aacute;ng (gồm 19 chiếc đ&egrave;n LED với 7 m&agrave;u đ&egrave;n v&agrave; 4 chế độ chớp)\r\n\r\n\r\nC&aacute;c size tương ứng chiều d&agrave;i gi&agrave;y:\r\n\r\n\r\n	Size 35 tương ứng gi&agrave;y 24.5cm\r\n	Size 36 tương ứng gi&agrave;y 25cm\r\n	Size 37 tương ứng gi&agrave;y 25.5cm\r\n	Size 38 tương ứng gi&agrave;y 26cm\r\n	Size 39 tương ứng gi&agrave;y 26.5cm\r\n	Size 40 tương ứng gi&agrave;y 27cm\r\n	Size 41 tương ứng gi&agrave;y 27.5cm\r\n	Size 42 tương ứng gi&agrave;y 28cm\r\n	Size 43 tương ứng gi&agrave;y 28.5cm\r\n\r\n\r\nC&aacute;c chọn size ph&ugrave; hợp với ch&acirc;n b&eacute; với gi&agrave;y ph&aacute;t s&aacute;ng trẻ em LED5: Size gi&agrave;y (chiều d&agrave;i gi&agrave;y)= chiều d&agrave;i b&agrave;n ch&acirc;n + trừa hao 1cm với ch&acirc;n thon hoặc 1.5cm với ch&acirc;n d&agrave;y bụ.\r\n', 435000, 2, 1, 1, 1),
(72, 'Giày thể thao 3 sọc bé trai - giay3soc', 'a71.jpg', 4, 'THUỘC T&Iacute;NH SẢN PHẨM\r\n\r\n\r\n	Chất liệu:</strong>&nbsp;Kh&aacute;c.\r\n	Nh&atilde;n hiệu:</strong>&nbsp;Đang cập nhật.\r\n	Xuất xứ:</strong>&nbsp;HongKong.\r\n	Kiểu d&aacute;ng thể thao\r\n	⭐M&agrave;u sắc nhẹ nh&agrave;ng dễ phối đồ\r\n	⭐Đế gi&agrave;y thiết kế nhiều r&atilde;nh ngang gi&uacute;p tạo độ b&aacute;m tốt tr&aacute;nh trượt.\r\n	⭐\r\n	???? Chọn size theo chiều d&agrave;i của ch&acirc;n\r\n	✔ sz21 : ch&acirc;n b&eacute; 12-12.5cm\r\n	✔ sz22 : ch&acirc;n b&eacute; 13cm\r\n	✔sz23: ch&acirc;n b&eacute; 13,5 cm\r\n	✔ sz24: ch&acirc;n b&eacute; 14 cm\r\n	✔ sz25: ch&acirc;n b&eacute; 14,5 cm\r\n	✔ sz26: ch&acirc;n b&eacute; 15 cm\r\n	✔ sz27: ch&acirc;n b&eacute; 15,5 cm\r\n	✔ sz28: ch&acirc;n b&eacute; 16 cm\r\n	✔ sz29: ch&acirc;n b&eacute; 16,5 cm\r\n	✔ sz30: ch&acirc;n b&eacute; 17 cm\r\n\r\n', 150000, 2, 1, 0, 0),
(73, 'Giày thể thao trẻ em màu trắng thời trang và đẳng cấp GA08 - GA08TRANG_1', 'a72.jpg', 4, 'THUỘC T&Iacute;NH SẢN PHẨM\r\n\r\n	Chất liệu:;Nhiều chất liệu.\r\n	Xuất xứ:;Republic of China.\r\n	Nh&atilde;n hiệu:;Kh&aacute;c .\r\n	\r\n	Gi&agrave;y được thiết kế từ chất neoprene (cao su tổng hợp c&ugrave;ng sợi vải dệt chất lượng cao) gi&uacute;p cho đ&ocirc;i gi&agrave;y trở n&ecirc;n mềm mượt v&agrave; mang lại cảm gi&aacute;c thoải m&aacute;i nhất. Đặc biệt với trọng lượng si&ecirc;u nhẹ, gi&agrave;y th&ecirc; thao trẻ em Yohji Yamamoto sẽ l&agrave; một trong những lựa chọn tối ưu cho tất cả c&aacute;c b&eacute; trai v&agrave; b&eacute; g&aacute;i độ tuổi 3 - 12 tuổi, cũng như c&aacute;c bạn học sinh đang t&igrave;m những đ&ocirc;i gi&agrave;y thể dục, đi bộ hoặc c&aacute;c m&ocirc;n thể thao ngoại kh&oacute;a kh&aacute;c.\r\n	\r\n	Size: 26 - 37\r\n	M&agrave;u sắc: Trắng\r\n	\r\n	<strong>Chiều d&agrave;i tương ứng l&ograve;ng gi&agrave;y\r\n	\r\n	Size 27 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 16cm\r\n	Size 28 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 17cm\r\n	Size 29 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 17.5cm\r\n	Size 30 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 18cm\r\n	Size 31 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 18.5cm\r\n	Size 32 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 19cm\r\n	Size 33 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 20cm\r\n	Size 34 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 20.5cm\r\n	Size 35 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 21cm\r\n	Size 36 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 22cm\r\n	Size 37 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 23cm\r\n', 290000, 2, 1, 0, 0),
(74, 'Dép trẻ em hình mèo - DEP10', 'a73.jpg', 4, 'THUỘC T&Iacute;NH SẢN PHẨM\r\n\r\n	Chất liệu:;Nhựa.\r\n	Nh&atilde;n hiệu:;Kh&aacute;c .\r\n	Xuất xứ:;Việt Nam.\r\n\r\n', 39000, 2, 0, 0, 0),
(75, 'S07DE - sandal cho bé yêu phonh cách hàn quốc - S07DE', 'a74.png', 4, 'Gi&agrave;y Sandal cho b&eacute; g&aacute;i phong c&aacute;ch h&agrave;n quốc\r\nChất liệu:&nbsp; DA v&agrave; PU\r\nĐế cao :&nbsp; 2cm\r\nM&agrave;u sắc&nbsp; : ĐEN\r\nBảo h&agrave;nh keo, g&oacute;t 12 th&aacute;ng\r\n\r\nTHUỘC T&Iacute;NH SẢN PHẨM\r\n\r\n\r\n	Chất liệu:;PU,Da.\r\n	Xuất xứ:;Trung Quốc.\r\n	Nh&atilde;n hiệu:;Đang cập nhật.\r\n\r\n', 199000, 2, 0, 0, 0),
(76, 'Giày búp bê cho bé GBG025A size 26 đến 36 - GBG025A', 'a75.jpg', 4, 'THUỘC T&Iacute;NH SẢN PHẨM\r\n	Chất liệu:;PU,Cao su.\r\n	Nh&atilde;n hiệu:;Đang cập nhật.\r\n	Xuất xứ:;Việt Nam.\r\n	Bảng size:\r\n	\r\n	+ Size: 26 -&gt; Ph&ugrave; hợp chiều d&agrave;i ch&acirc;n b&eacute; 15,8Cm.\r\n	+ Size: 27 -&gt; Ph&ugrave; hợp chiều d&agrave;i ch&acirc;n b&eacute; 16,4Cm.\r\n	+ Size: 28 -&gt; Ph&ugrave; hợp chiều d&agrave;i ch&acirc;n b&eacute; 17Cm.\r\n	+ Size: 29 -&gt; Ph&ugrave; hợp chiều d&agrave;i ch&acirc;n b&eacute; 17,6Cm.\r\n	+ Size: 30 -&gt; Ph&ugrave; hợp chiều d&agrave;i ch&acirc;n b&eacute; 18,2Cm.\r\n	+ Size: 31 -&gt; Ph&ugrave; hợp chiều d&agrave;i ch&acirc;n b&eacute; 18,7Cm.\r\n	+ Size: 32 -&gt; Ph&ugrave; hợp chiều d&agrave;i ch&acirc;n b&eacute; 19,2Cm.\r\n	+ Size: 33 -&gt; Ph&ugrave; hợp chiều d&agrave;i ch&acirc;n b&eacute; 19,9Cm.\r\n	+ Size: 34 -&gt; Ph&ugrave; hợp chiều d&agrave;i ch&acirc;n b&eacute; 20,6Cm.\r\n	+ Size: 35 -&gt; Ph&ugrave; hợp chiều d&agrave;i ch&acirc;n b&eacute; 21,3Cm.\r\n	+ Size: 36 -&gt; Ph&ugrave; hợp chiều d&agrave;i ch&acirc;n b&eacute; 22Cm.\r\n	\r\n	- Chất liệu: PU cao cấp.\r\n	\r\n	-chất liệu bền đẹp, kiểu d&aacute;ng đẹp, thời trang.\r\n	\r\n	- Đếgi&agrave;y b&uacute;p b&ecirc;chob&eacute; g&aacute;i;c&oacute; độ ma s&aacute;t cao, chống trơn trượt.\r\n	\r\n	-Gi&agrave;y b&uacute;p b&ecirc; cho b&eacute; g&aacute;i;gi&uacute;p mẹ dễ d&agrave;ng kết hợp trang phục cho b&eacute;.\r\n\r\n', 190000, 2, 0, 0, 0),
(77, 'Giầy bé gái in hình búp bê C302 - C302', 'a76.jpg', 4, 'THUỘC T&Iacute;NH SẢN PHẨM\r\n\r\n	Chất liệu:;Kh&aacute;c.\r\n	Xuất xứ:;HongKong.\r\n	Nh&atilde;n hiệu:;Đang cập nhật.\r\n\r\n', 250000, 2, 0, 0, 1),
(78, 'Giày thể thao đen cho bé gái 3 - 5 tuổi phong cách và cá tính GA08 - GA08_DEN', 'a77.jpg', 4, 'Gi&agrave;y được thiết kế từ chất neoprene (cao su tổng hợp c&ugrave;ng sợi vải dệt chất lượng cao) gi&uacute;p cho đ&ocirc;i gi&agrave;y trở n&ecirc;n mềm mượt v&agrave; mang lại cảm gi&aacute;c thoải m&aacute;i nhất. Đặc biệt với trọng lượng si&ecirc;u nhẹ, gi&agrave;y th&ecirc; thao trẻ em Yohji Yamamoto sẽ l&agrave; một trong những lựa chọn tối ưu cho tất cả c&aacute;c b&eacute; trai v&agrave; b&eacute; g&aacute;i độ tuổi 3 - 12 tuổi, cũng như c&aacute;c bạn học sinh đang t&igrave;m những đ&ocirc;i gi&agrave;y thể dục, đi bộ hoặc c&aacute;c m&ocirc;n thể thao ngoại kh&oacute;a kh&aacute;c.\r\n\r\n\r\nSize: 27 - 31, Form nhỏ\r\nM&agrave;u sắc: đen,\r\nXuất xứ: Nhật&nbsp;\r\n\r\n\r\nChiều d&agrave;i tương ứng l&ograve;ng gi&agrave;y (FORM NHỎ HƠN B&Igrave;NH THƯỜNG 1 SIZE)\r\n\r\n\r\nSize 27 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 15cm\r\nSize 28 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 16cm\r\nSize 29 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 17cm\r\nSize 30 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 17.5cm\r\nSize 31 tương ứng chiều d&agrave;i l&ograve;ng d&eacute;p 18cm\r\n\r\n', 270000, 2, 0, 0, 1),
(79, 'Balo học sinh Burton Disney Frozen Youth Emphasis Backpack - SP5042', 'a78.jpg', 3, 'K&iacute;ch thước: 40 x 29 x 16.5 cm.\r\n\r\n- Chất liệu: vải 600D Polyester TPE Coated.\r\n\r\n- Thể t&iacute;ch: 18 l&iacute;t.\r\n\r\n- Trọng lượng: 500g.\r\n\r\n-Balo học sinh Burton Disney Frozen Youth Emphasis Backpack;được thiết kế với nhiều m&agrave;u sắc trẻ trung, thời trang, rất th&iacute;ch hợp cho c&aacute;c bạn học sinh mang đi học, đi chơi hay sử dụng h&agrave;ng ng&agrave;y.\r\n\r\n- Ngăn ch&iacute;nh lớn rất tuyệt vời cho việc lưu trữ s&aacute;ch, t&agrave;i liệu hoặc quần &aacute;o cho hoạt động thể thao ngo&agrave;i trời, c&oacute; ngăn laptop 10 inch b&ecirc;n trong.\r\n\r\n- Hai t&uacute;i nhỏ b&ecirc;n h&ocirc;ng để sữa hoặc chai nước.\r\n\r\n- C&oacute; t&uacute;i nhỏ để name card b&ecirc;n trong balo.\r\n\r\n- Thiết kế đặc biệt c&oacute; d&acirc;y đai mang v&aacute;n trượt ph&iacute;a trước.\r\n\r\n- D&acirc;y đeo vai c&oacute; đệm cho cảm gi&aacute;c thoải m&aacute;i v&agrave; c&oacute; thể điều chỉnh dễ d&agrave;ng.\r\n', 499000, 1, 0, 0, 0),
(80, 'MŨ BẢO HIỂM CHO BÉ 0973809698 - MB20184131', 'a79.jpg', 3, 'THUỘC T&Iacute;NH SẢN PHẨM\r\n\r\n	Chất liệu n&oacute;n:;Nhựa.\r\n	Kiểu d&aacute;ng n&oacute;n:;Kh&aacute;c.\r\n	Xuất xứ:;Việt Nam.\r\n\r\n', 86000, 1, 0, 0, 0),
(81, 'BALO CHO BÉ ĐI HỌC - BALO 1', 'a80.jpg', 3, 'Khi mua sản phẩm của shop quý khách sẽ được hưởng :\r\n\r\n- Cam kết chất lượng - Uy t&iacute;n l&agrave;m h&agrave;i l&ograve;ng kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất&nbsp;\r\n\r\n- Cam kết gi&aacute; tốt - h&agrave;ng ch&iacute;nh h&atilde;ng&nbsp;\r\n\r\n- H&agrave;ng giống h&igrave;nh 100%, Ship COD tới nh&agrave; kh&aacute;ch h&agrave;ng\r\n\r\n- Kh&aacute;ch h&agrave;ng nhận h&agrave;ng, kiểm tra h&agrave;ng mới thanh to&aacute;n\r\n\r\n- Đ&ocirc;̉i trả hàng trong vòng 7 ngày&nbsp;n&ecirc;́u kh&ocirc;ng ưng ý sản ph&acirc;̉m\r\n\r\n- Được&nbsp;hoàn tiền đ&ecirc;́n 200%&nbsp;n&ecirc;́u sản ph&acirc;̉m kh&ocirc;ng gi&ocirc;́ng m&ocirc; tả</strong></p>\r\n\r\nTHUỘC T&Iacute;NH SẢN PHẨM\r\n\r\n\r\n	Chất liệu:;Kh&aacute;c.\r\n	Xuất xứ:;Việt Nam.\r\n	Nh&atilde;n hiệu:;Kh&aacute;c .\r\n\r\n', 200000, 1, 0, 0, 0),
(82, 'BALO CHO BÉ HÌNH HƯƠU CAO CỔ - balohuou', 'a81.jpg', 3, 'K&iacute;ch thước: 27 x 24 x 8 cm\r\n- Chất liệu: Vải nhung\r\n- Xuất xứ: Việt Nam\r\n- Balo cho b&eacute;;c&oacute; k&iacute;ch thước nhỏ gọn, c&oacute;&nbsp;h&igrave;nh hươu cao cổ;đ&aacute;ng y&ecirc;u, m&agrave;u sắc tươi tắn, ph&ugrave; hợp cho c&aacute;c b&eacute; Mẫu gi&aacute;o.\r\n', 35000, 1, 0, 0, 0),
(83, 'ĐỒNG HỒ ĐỊNH VỊ CHO BÉ - DHTE3', 'a83.jpg', 3, 'Con cái lu&ocirc;n là m&ocirc;́i quan t&acirc;m hàng đ&acirc;̀u của những &ocirc;ng b&ocirc;́ bà mẹ, tuy nhi&ecirc;n v&ocirc; h&igrave;nh trung thời gian đ&ecirc;̉ dành cho những đứa trẻ đang ngày m&ocirc;̣t ít đi khi c&ocirc;ng vi&ecirc;̣c và những lo toan trong cu&ocirc;̣c s&ocirc;́ng đang b&ecirc;̀ b&ocirc;̣n xung quanh những b&acirc;̣c phụ huynh.&nbsp;\r\nLàm sao đ&ecirc;̉ lu&ocirc;n b&ecirc;n cạnh những đứa con th&acirc;n y&ecirc;u của mình, bảo v&ecirc;̣ chúng khỏi những cám d&ocirc;̃ và hi&ecirc;̉m nguy lu&ocirc;n rình r&acirc;̣p. Chỉ với chiếc đồng hồ th&ocirc;ng minh&nbsp;G36&nbsp;th&igrave; d&ugrave; cho con bạn ở bất cứ đ&acirc;u , bạn cũng có th&ecirc;̉ theo dõi và bảo v&ecirc;̣, kh&ocirc;ng những thế c&ograve;n c&oacute; thể nghe gọi 2 chiều 1 c&aacute;ch dễ d&agrave;ng.\r\n', 315000, 1, 0, 1, 0),
(84, 'NÓN LƯỠI TRAI KHOEN CHO BÉ - N021', 'a84.jpg', 3, '\r\nSẢN PHẨM B&Aacute;N TẠI SHOP ĐỀU ĐƯỢC SHOP TUYỂN CHỌN KỸ LƯỢNG VỀ MẪU MẪ V&Agrave; CHẤT LƯỢNG N&Ecirc;N C&Aacute;C BẠN Y&Ecirc;N T&Acirc;M CHỌN MUA CHO B&Eacute; Y&Ecirc;U CỦA M&Igrave;NH.&nbsp;\r\n', 130000, 1, 0, 0, 0),
(85, 'Kính trẻ em thời trang tặng bao da A113 ĐEN - A113', 'a85.jpg', 3, 'CAM KẾT SẢN PHẨM GIỐNG H&Igrave;NH\r\n\r\n1 ĐỔI 1 NẾU LỖI DO NH&Agrave; SẢN XUẤT\r\n\r\n- K&iacute;nh được l&agrave;m từ chất liệu&nbsp;nhựa + kim loại cao cấp, c&oacute; độ bền cao\r\n\r\n- Tr&ograve;ng polycarbonat c&oacute; khả năng: Chống tia cực t&iacute;m, tia bức xạ, chống UV400 gi&uacute;p&nbsp;bảo vệ mắt b&eacute; một&nbsp;c&aacute;ch tối đa\r\n\r\n- Thiết kế vừa vặn với khu&ocirc;n mặt của&nbsp; b&eacute; v&agrave; mang lại cảm gi&aacute;c dễ chịu khi sử dụng.\r\n\r\n- K&iacute;nh m&aacute;t gi&uacute;p b&eacute; tr&aacute;nh được bụi bặm hoặc &aacute;nh nắng mặt trời, gi&uacute;p bảo vệ đ&ocirc;i mắt của b&eacute;.\r\n', 178000, 1, 0, 0, 0),
(86, 'Bộ Đôi Thun Buộc Tóc Hình Dưa Hấu - SC2', 'a86.jpg', 0, 'Bộ Đ&ocirc;i bao --&gt; 2 thun buộc t&oacute;c h&igrave;nh xe hơi cho b&eacute; .\r\n\r\nH&agrave;ng Nhập của Th&aacute;i&nbsp;\r\n\r\nThun mềm nhẹ , c&oacute; độ co gi&atilde;n cực tốt .&nbsp;\r\n\r\nƯu điểm : thun cực bền , sử dụng được l&acirc;u , kh&ocirc;ng bị gi&atilde;n mất độ đ&agrave;n hồi sau thời gian sử dụng .\r\n\r\nTh&iacute;ch hợp cho b&eacute; đi chơi , đi học cực iu\r\n\r\nTHUỘC T&Iacute;NH SẢN PHẨM\r\n\r\n\r\n	Chất liệu:;Kh&aacute;c.\r\n	Nh&atilde;n hiệu:;Đang cập nhật.\r\n	Xuất xứ:;Th&aacute;i Lan.\r\n', 24000, 1, 0, 0, 0),
(87, 'Kính trẻ em chống tia cực tím tặng bao da A109 - A109', 'a87.jpg', 3, 'CAM KẾT SẢN PHẨM GIỐNG H&Igrave;NH\r\n\r\n1 ĐỔI 1 NẾU LỖI DO NH&Agrave; SẢN XUẤT\r\n\r\n&nbsp;K&iacute;nh được l&agrave;m từ chất liệunhựa + kim loại cao cấp, c&oacute; độ bền cao.\r\n\r\n- Tr&ograve;ng polycarbonat c&oacute; khả năng: Chống tia cực t&iacute;m, tia bức xạ, chống UV400 gi&uacute;pbảo vệ mắt b&eacute; mộtc&aacute;ch tối đa\r\n\r\n- Thiết kế k&iacute;nh kiểu đa gi&aacute;c phong c&aacute;ch thời trang c&aacute; t&iacute;nh vừa vặn với khu&ocirc;n mặt của b&eacute; v&agrave; mang lại cảm gi&aacute;c dễ chịu khi sử dụng.\r\n\r\n- Ph&ugrave; hợp cho b&eacute; từ 4-12 tuổi\r\n', 110000, 1, 0, 0, 0),
(88, 'BALO BOBBY - SP000876', 'a88.jpg', 3, 'K&iacute;ch thước: 35cm\r\n\r\nĐặc điểm ch&iacute;nh balo cho b&eacute; Bobby\r\n- Được l&agrave;m từ chất liệu vải cao cấp, c&oacute; độ bền cao\r\n- Chất liệu an to&agrave;n với trẻ nhỏ, kh&ocirc;ng g&acirc;y cọ x&aacute;t hay mẩn ngứa cho b&eacute; trong qu&aacute; tr&igrave;nh sử dụng.\r\n- &nbsp;D&acirc;y quai đeo chắc chắn c&oacute; thể điều chỉnh độ d&agrave;i rộng t&ugrave;y &yacute; mang đến sự thoải m&aacute;i cho b&eacute;.\r\n- &nbsp;Đường chỉ may tinh tế, chắc chắn kh&ocirc;ng phải lo quai sẽ bị đứt hay tuột chỉ khi sử dụng l&acirc;u d&agrave;i.\r\n- Quai đeo được l&oacute;t đệm mềm &ecirc;m &aacute;i, kh&ocirc;ng g&acirc;y in hằn khi b&eacute; đeo l&acirc;u\r\n- Kh&oacute;a đeo tiện dụng, dễ d&agrave;ng đ&oacute;ng mở sử dụng\r\n\r\n- Thiết kế dạng quai x&aacute;ch tay v&agrave; quai đeo gi&uacute;p b&eacute; c&oacute; thể dễ d&agrave;ng mang theo balo mọi l&uacute;c, mọi nơi.\r\n- Thiết kế dạng balo tiện lợi với một ngăn nhỏ b&ecirc;n ngo&agrave;i rất tiện lợi khi đựng vật dụng cần thiết cho b&eacute; như khăn ướt, th&igrave;a, dĩa,&hellip;\r\n- Balo c&oacute; ngăn rộng b&ecirc;n trong gi&uacute;p cha mẹ đựng c&aacute;c vật dụng cần thiết cho b&eacute;\r\n- M&agrave;u sắc tươi s&aacute;ng, họa tiết bắt mắt:\r\n- Độ tuổi: d&agrave;nh cho b&eacute; từ 1 tuổi trở l&ecirc;n.\r\n', 37000, 1, 0, 0, 0),
(89, 'Phao bơi đỡ cổ cho bé - phao bé', 'a89.jpg', 3, '- Phao bơi cho b&eacute;: 0903299028- \r\n\r\n- &nbsp;- \r\n\r\n- Trong thời gian từ lức mới sinh cho tới 18 th&aacute;ng tuổi, trẻ sơ sinh giữ được nhiều phản xạ bẩm sinh của động vật, đặc biệt của động vật c&oacute; v&uacute;. Đ&oacute; l&agrave; phản xạ lặn v&agrave; phản xạ bơi ch&oacute;. Phản xạ lặn l&agrave; phản xạ ngừng thở của b&eacute; khi đầu bị ch&igrave;m v&agrave;o nước, c&ograve;n phản xạ bơi ch&oacute; l&agrave; phản xạ đạp ch&acirc;n đạp tay giống ch&oacute; của b&eacute; trong m&ocirc;i trường nước. V&igrave; thế, tập bơi cho b&eacute; trong thời gian n&agrave;y l&agrave; dễ nhất. V&agrave; kh&ocirc;ng phải v&ocirc; cớ m&agrave; người ta gọi thời gian n&agrave;y l&agrave; thời gian v&agrave;ng để dạy cho b&eacute; kh&ocirc;ng sợ nước, dạy cho b&eacute; tập bơi. Lợi dụng c&aacute;c phản xạ bẩm sinh n&agrave;y, ở nhiều nước người ta đ&atilde; dạy cho trẻ sơ sinh học bơi ngay từ khi v&agrave;i tuẩn tuổi.- \r\n\r\n- Việc gi&uacute;p b&eacute; l&agrave;m quen với nước kh&ocirc;ng kh&oacute;, bởi bản th&acirc;n b&eacute; đ&atilde; sống hơn 9 th&aacute;ng trong m&ocirc;i trường nước trước khi sinh ra. Để b&eacute; kh&ocirc;ng sợ nước, ngay từ khi cuống rốn liền, h&atilde;y biến việc tắm rửa của b&eacute; th&agrave;nh một dịp vui chơi trong nước. Về m&ugrave;a đ&ocirc;ng, c&oacute; thể để cả quần &aacute;o cho b&eacute; khi ng&acirc;m m&igrave;nh trong nước. H&atilde;y tận dụng thời gian v&agrave;ng n&agrave;y để dạy cho b&eacute; kh&ocirc;ng sợ nước, dạy cho b&eacute; biết bơi. Đừng bỏ ph&iacute; cơ hội n&agrave;y, nếu kh&ocirc;ng, khi c&aacute;c phản xạ bẩm sinh mất đi, việc day b&eacute; học bơi sẽ kh&oacute; hơn nhiều- \r\n\r\n- Phao bơi cho b&eacute;- \r\n\r\n- Đặc điểm:- \r\n\r\n- Phao bơi n&acirc;ng cổ cho b&eacute;&nbsp;ch&iacute;nh h&atilde;ng Lechin sau khi bơm c&oacute; k&iacute;ch thước 45x45cm- \r\n', 65000, 1, 0, 0, 0);
INSERT INTO `product` (`pk_product_id`, `c_name`, `c_img`, `fk_category_product_id`, `c_description`, `c_price`, `type`, `c_sex`, `c_hotproduct`, `c_sale`) VALUES
(90, 'Cặp học sinh - QC EKUZAI- 022', 'a90.jpg', 3, 'THUỘC T&Iacute;NH SẢN PHẨM- \r\n	- Chất liệu:- ;Kh&aacute;c.- \r\n	- Nh&atilde;n hiệu:- ;Joe.- \r\n	- Xuất xứ:- ;Nhật Bản.- \r\n	- To- mcruise shop- ;xin giới thiệu đến qu&yacute; kh&aacute;ch h&agrave;Balo học sinh chống thấm chống nước Ekuzai- \r\n	- Balo học sinh EKUZAI- ;l&agrave; một trong những lựa chọn l&yacute; tưởng d&agrave;nh cho c&aacute;c mẹ khi c&oacute; con tiểu học hay trung học bởi thiết kế c&ugrave;ng những t&iacute;nh năng nổi bật. Balo c&oacute; trọng lượng si&ecirc;u nhẹ đạt chuẩn quốc tế, c&ugrave;ng đệm lưng bằng lưới v&agrave; nhiều lớp m&uacute;t, giảm thiểu t&igrave;nh trạng đau nhức, gi&uacute;p b&eacute; thoải m&aacute;i khi mang.- \r\n	- \r\n	- <strong><em>alo học sinh EKUZAI</em>&nbsp;</strong>được may bằng chất liệu vải cao cấp, phong c&aacute;ch &nbsp;Đức v&agrave; Ch&acirc;u &Acirc;u, c&oacute; khả năng kh&aacute;ng khuẩn, an to&agrave;n cho trẻ. Balo c&oacute; khả năng chống thấm, dễ lau ch&ugrave;i kh&ocirc;ng chỉ gi&uacute;p bảo vệ vật dụng b&ecirc;n trong m&agrave; c&ograve;n tiết kiệm được nhiều thời gian vệ sinh sản phẩm.- \r\n\r\n	- K&iacute;ch thước: 14 x 31 x 42 cm ( d&agrave;i x rộng x cao)&nbsp;- \r\n\r\n	- Th&iacute;ch hợp cho học sinh- \r\n\r\n	- Chất liệu: Vải Polyester chống thấm, chống nước cao cấp- \r\n\r\n	- Thiết kế : phong c&aacute;ch EngLand kiểu Anh Quốc . nhiều ngăn rộng r&atilde;i , ngăn ch&iacute;nh , ngăn phụ , ngăn chưa đồ , ngăn đựng hộp b&uacute;t , ngăn đựng b&igrave;nh nước b&ecirc;n sườn- \r\n\r\n	- - D&acirc;y đai thiết kế dạng massage, ph&acirc;n t&aacute;n lực- \r\n	- Chống g&ugrave; lưng: cột sống của trẻ được bảo vệ bởi phần tựa lưng thiết kế đặc biệt- \r\n	- Thắt lưng cố định nhằm tr&aacute;nh những c&uacute; sốc&nbsp;balo tr&ecirc;n lưng trẻ- \r\n	- D&acirc;y kh&oacute;a chất lượng cao, si&ecirc;u bền- \r\n	- Đường may tăng cường ở mọi nơi- \r\n	- Balo chắc chắn, si&ecirc;u nhẹ. chỉ 0.65kg- \r\n	- \r\n\r\n', 350000, 1, 0, 1, 1),
(91, 'Quần áo trẻ em - BG2', 'a91.jpg', 1, 'Thuộc t&iacute;nh sản phẩm\r\n\r\n- Chất liệu :cotton\r\n\r\n- Xuất xứ : Việt Nam\r\n\r\n<strong>K&Iacute;CH THƯỚC:</strong>\r\n\r\nSize 1: cho b&eacute; từ 8kg đến 10kg.\r\n\r\nSize 2: cho b&eacute; từ 10kg đến 12kg.\r\n\r\nSize 3: cho b&eacute; từ 12kg đến 14kg.\r\n\r\nSize 4: cho b&eacute; từ 14kg đến 16kg.\r\n\r\nSize 5: cho b&eacute; từ 16kg đến 18kg.\r\n\r\nSize 6: cho b&eacute; từ 18kg đến 20kg.\r\n\r\nSize 7: cho b&eacute; từ 20kg đến 22kg.\r\n\r\nSize 8: cho b&eacute; từ 22kg đến 24kg.\r\n\r\n&nbsp;\r\n\r\n***\r\n\r\nSize 9: cho b&eacute; từ 24kg đến 26kg.\r\n\r\nSize 10: cho b&eacute; từ 26kg đến 28kg.\r\n\r\nSize 11: cho b&eacute; từ 28kg đến 30kg.\r\n\r\nSize 12: cho b&eacute; từ 30kg đến 32kg.\r\n\r\nSize 13: cho b&eacute; từ 32kg đến 34kg.\r\n\r\nSize 14: cho b&eacute; từ 34kg đến 36kg.\r\n\r\nSize 15: cho b&eacute; từ 36kg đến 39kg.\r\n\r\nBảng k&iacute;ch thước c&oacute; gi&aacute; trị tham khảo, c&ograve;n t&ugrave;y thuộc v&agrave;o chiều cao của b&eacute; để chọn size cho ph&ugrave; hợp.\r\n\r\n<strong>Mẹo nhỏ:</strong>&nbsp;c&aacute;c b&eacute; lớn rất nhanh, đồ thu đ&ocirc;ng, đồ mặc nh&agrave; qu&iacute; kh&aacute;ch chọn size nh&iacute;ch hơn bảng size 1 t&iacute; th&igrave; b&eacute; mặc thoải m&aacute;i hơn; c&aacute;c đồ thời trang lễ, tết th&igrave; n&ecirc;n chọn size chuẩn.&nbsp;\r\n\r\nĐể thuận tiện, trước khi đặt h&agrave;ng qu&iacute; kh&aacute;ch chỉ cần nhắn tin, hoặc để lại số điện thoại; nh&acirc;n vi&ecirc;n của shop sẽ điện thoại tư vấn chọn size ph&ugrave; hợp với b&eacute; cho qu&iacute; kh&aacute;ch.\r\n', 162000, 0, 0, 0, 0),
(92, 'Đầm babydoll bé gái 2-7 tuổi cột nơ siêu dễ thương', 'a92.jpg', 1, '- Đầm babydoll b&eacute; g&aacute;i hoa 2-7 tuổi- ;- Kiểu đầm x&ograve;e duy&ecirc;n d&aacute;ng, cổ tr&ograve;n, tay c&aacute;nh ti&ecirc;n cho b&eacute; th&ecirc;m xinh xắn v&agrave; đ&aacute;ng y&ecirc;u.- \r\n\r\n- Đầm Babydoll- ;hoa l&agrave; sự lựa chọn ph&ugrave; hợp với c&aacute;c b&eacute; g&aacute;i từ 2-7 tuổi. Form d&aacute;ng x&ograve;e nhẹ nh&agrave;ng nữ t&iacute;nh, họa tiết hoa l&aacute; cực xinh, kiểu d&aacute;ng dễ d&agrave;ng cho b&eacute; sử dụng Chất vải lụa sang trọng v&agrave; mềm mại n&ecirc;n rất tho&aacute;ng m&aacute;t, lu&ocirc;n tạo cảm gi&aacute;c thoải m&aacute;i, dễ chịu khi b&eacute; mặc. M&agrave;u sắc tươi tắn, c&oacute; thể mix c&ugrave;ng băng đ&ocirc; xinh xắn, để b&eacute; th&ecirc;m phần nổi bật. Sản phẩm l&agrave; m&oacute;n qu&agrave; đ&aacute;ng y&ecirc;u d&agrave;nh cho b&eacute; đi chơi, đi tiệc.- \r\n', 138000, 0, 0, 1, 0),
(93, 'Áo khoác dù cho bé gái in hình cô gái đáng yêu', 'a93.jpg', 1, 'Được may bằng 2 lớp: lớp ngo&agrave;i vải d&ugrave; cao cấp, l&oacute;t lớp vải lưới b&ecirc;n trong cực tho&aacute;ng m&aacute;t.&nbsp;Sản phẩm &aacute;o c&oacute; n&oacute;n, kiểu d&aacute;ng rộng r&atilde;i, thoải m&aacute;i, giữ ấm cho b&eacute; khi thời tiết lạnh. Với gam m&agrave;u nhẹ nh&agrave;ng dễ thương v&agrave; thiết kế xinh xắn sẽ mang đến phong c&aacute;ch ri&ecirc;ng của b&eacute;.&nbsp;Sản phẩm th&iacute;ch hợp cho b&eacute; mặc ra ngo&agrave;i, thời tiết se lạnh, giữ ấm cho b&eacute; m&agrave; vẫn hợp thời trang Mẹ nh&eacute;. C&oacute; đủ size cho b&eacute; từ 11kg đến 30kg ạ :)\r\n', 149000, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id_slide` int(11) NOT NULL,
  `c_img` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id_slide`, `c_img`) VALUES
(1, 'slide1.jpg'),
(2, 'slide2.jpg'),
(3, 'slide3.jpg'),
(4, 'slide4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `hovaten` varchar(500) NOT NULL,
  `diachi` varchar(20000) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `ghichu` text NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `hovaten`, `diachi`, `dienthoai`, `ghichu`, `email`, `password`) VALUES
(1, 'Nguyễn Văn A', 'Hà Đông, Hà Nôi', 1684901660, 'Chuyển nhanh giúp mình', 'abc@gmail.com', ''),
(2, 'dep trai', 'Thanh BInh', 161661666, '', 'congbeohb97@gmail.com', ''),
(3, 'Nguyễn Thành Công', 'Hà nội', 613133, '', 'hoabinh1231997@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ngaymua` date NOT NULL,
  `gia` float NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `ngaymua`, `gia`, `trangthai`) VALUES
(1, 1, '2018-09-23', 775000, 0),
(2, 2, '2018-09-24', 587000, 1),
(3, 3, '2018-09-24', 2225000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `fk_product_id` int(11) NOT NULL,
  `c_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`order_detail_id`, `order_id`, `fk_product_id`, `c_number`) VALUES
(1, 1, 89, 1),
(2, 1, 7, 1),
(3, 1, 62, 1),
(4, 1, 90, 1),
(5, 2, 92, 2),
(6, 2, 91, 1),
(7, 2, 93, 1),
(8, 3, 89, 1),
(9, 3, 61, 1),
(10, 3, 62, 1),
(11, 3, 68, 1),
(12, 3, 56, 1),
(13, 3, 11, 1),
(14, 3, 2, 1),
(15, 3, 91, 1),
(16, 3, 93, 1),
(17, 3, 78, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `pk_user_id` int(11) NOT NULL,
  `c_email` varchar(500) NOT NULL,
  `c_password` varchar(500) NOT NULL,
  `c_fullname` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`pk_user_id`, `c_email`, `c_password`, `c_fullname`) VALUES
(1, 'admin@mail.com', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn A'),
(2, 'admin1@mail.com', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn B'),
(3, 'admin2@mail.com', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn C'),
(4, 'admin3@mail.com', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn D'),
(5, 'admin4@gmail.com', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn E'),
(6, 'admin5@mail.com', '202cb962ac59075b964b07152d234b70', 'Nguyễn Văn H');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `category_type`
--
ALTER TABLE `category_type`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pk_product_id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`pk_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category_type`
--
ALTER TABLE `category_type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pk_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `pk_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
