-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th2 15, 2023 lúc 02:43 PM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_ban_linh_kien_l9`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  UNIQUE KEY `admins_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$7VLRCZIgkY4I3Vfg7edih.MEBBc..kbS3SM4B8l6mxJLOst5bcpK.', '0343754517', NULL, 'CDTH18', 'TP Hồ Chí Minh', 1, 1, '2020-04-20__h21.png', NULL, '2020-04-16 17:15:17'),
(6, 'Nhân Viên', 'nhanvien@gmail.com', '$2y$10$2Btw2.RpZgDGwgw0yeTSdeyy.md58ZxQD.k.XNhUjFT3zRoD76YVu', '012345678', NULL, NULL, NULL, 2, 1, NULL, '2020-06-06 05:48:35', '2020-06-06 05:50:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT '0',
  `a_active` tinyint(4) NOT NULL DEFAULT '1',
  `a_menu_id` int(11) NOT NULL DEFAULT '0',
  `a_view` int(11) NOT NULL DEFAULT '0',
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `a_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_a_slug_index` (`a_slug`),
  KEY `articles_a_hot_index` (`a_hot`),
  KEY `articles_a_active_index` (`a_active`),
  KEY `articles_a_menu_id_index` (`a_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(7, 'Top 10 laptop mini 2023 nhỏ gọn, mang đi đâu cũng tiện', 'top-10-laptop-mini-2023-nho-gon-mang-di-dau-cung-tien', 1, 1, 3, 0, NULL, '2023-02-14__laptop-mini-10-inch-phong-vu-7-300x194.jpg', '<h1>Top 10 laptop mini 2023 nhỏ gọn, mang đi đ&acirc;u cũng tiện</h1>\r\n\r\n<p><a href=\"https://phongvu.vn/cong-nghe/danh-gia/\">Đ&aacute;nh gi&aacute;</a>&nbsp;<a href=\"https://phongvu.vn/cong-nghe/author/admin/\" rel=\"author\" title=\"Đăng bởi admin\">admin</a>&nbsp;&middot;&nbsp;Th&aacute;ng Hai 13, 2023&nbsp;&middot;&nbsp;Comments off</p>\r\n\r\n<p>Sở hữu một chiếc laptop thiết kế nhỏ nhắn sẽ rất tiện lợi cho người d&ugrave;ng mang b&ecirc;n m&igrave;nh linh động. Nhưng c&oacute; phải bạn đang lo lắng k&iacute;ch cỡ b&eacute; sẽ kh&ocirc;ng đảm bảo hiệu năng sản phẩm? Đừng lo lắng v&igrave; tr&ecirc;n thị trường hiện kh&ocirc;ng thiếu những chiếc&nbsp;<a href=\"https://phongvu.vn/c/laptop-duoi-13-inch\" rel=\"noreferrer noopener\" target=\"_blank\">laptop mini từ 10 inch đến 13 inch</a>&nbsp;l&agrave;m việc chất lượng tốt v&agrave; đảm bảo mượt m&agrave;.</p>\r\n\r\n<hr />\r\n<ul>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/chon-mua-laptop-mini-nhung-diem-can-luu-y/\" rel=\"noreferrer noopener\" target=\"_blank\">Chọn mua Laptop mini &ndash; những điểm cần lưu &yacute;</a></li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/goi-y-5-laptop-mini-gia-re-chi-tu-5-trieu-dong-ma-dung-van-on/\" rel=\"noreferrer noopener\" target=\"_blank\">Gợi &yacute; 5 laptop gi&aacute; rẻ chỉ từ 5 triệu đồng m&agrave; d&ugrave;ng vẫn ổn</a></li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/top-4-laptop-hoc-online-tot-nhat-tu-re-toi-dat-phuc-vu-hoc-sinh-sinh-vien/\" rel=\"noreferrer noopener\" target=\"_blank\">Top 4 laptop học online tốt nhất từ rẻ tới đắt phục vụ học sinh, sinh vi&ecirc;n</a></li>\r\n</ul>\r\n\r\n<hr />\r\n<p>Mục lục</p>\r\n\r\n<p><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#\"><input type=\"checkbox\" /></a></p>\r\n\r\n<ul>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#1_Laptop_mini_la_gi_Co_kich_thuoc_bao_nhieu\" title=\"1. Laptop mini là gì? Có kích thước bao nhiêu?\">1. Laptop mini l&agrave; g&igrave;? C&oacute; k&iacute;ch thước bao nhi&ecirc;u?</a>\r\n\r\n	<ul>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#11_Kich_thuoc_man_hinh_nho\" title=\"1.1 Kích thước màn hình nhỏ\">1.1 K&iacute;ch thước m&agrave;n h&igrave;nh nhỏ</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#12_Thoi_luong_pin_vua_du\" title=\"1.2 Thời lượng pin vừa đủ\">1.2 Thời lượng pin vừa đủ</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#13_Cau_hinh_laptop_mini_khong_yeu_nhu_moi_nguoi_lam_tuong\" title=\"1.3 Cấu hình laptop mini không yếu như mọi người lầm tưởng\">1.3 Cấu h&igrave;nh laptop mini kh&ocirc;ng yếu như mọi người lầm tưởng</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#14_Laptop_mini_nen_gia_cung_mini\" title=\"1.4 Laptop mini nên giá cũng “mini”\">1.4 Laptop mini n&ecirc;n gi&aacute; cũng &ldquo;mini&rdquo;</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#15_Laptop_mini_sinh_ra_danh_cho_nguoi_hay_di_chuyen\" title=\"1.5 Laptop mini sinh ra dành cho người hay di chuyển\">1.5 Laptop mini sinh ra d&agrave;nh cho người hay di chuyển</a></li>\r\n	</ul>\r\n	</li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#2_Top_10_laptop_mini_nho_gon_cau_hinh_cao_ban_chay_tai_Phong_Vu\" title=\"2. Top 10 laptop mini nhỏ gọn, cấu hình cao bán chạy tại Phong Vũ \">2. Top 10 laptop mini nhỏ gọn, cấu h&igrave;nh cao b&aacute;n chạy tại Phong Vũ</a>\r\n	<ul>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#21_Laptop_HP_Probook_430_G8\" title=\"2.1 Laptop HP Probook 430 G8\">2.1 Laptop HP Probook 430 G8</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#22_Laptop_HP_ProBook_450_G9\" title=\"2.2 Laptop HP ProBook 450 G9\">2.2 Laptop HP ProBook 450 G9</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#23_Laptop_Lenovo_IdeaPad_Yoga_6_13ALC6\" title=\"2.3 Laptop Lenovo IdeaPad Yoga 6 13ALC6\">2.3 Laptop Lenovo IdeaPad Yoga 6 13ALC6</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#24_Laptop_ASUS_UX363EA\" title=\"2.4 Laptop ASUS UX363EA\">2.4 Laptop ASUS UX363EA</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#25_Laptop_Asus_Zenbook_Flip_13_OLED\" title=\"2.5 Laptop Asus Zenbook Flip 13 OLED\">2.5 Laptop Asus Zenbook Flip 13 OLED</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#26_Laptop_HP_Elitebook_630_G9_6M142PA\" title=\"2.6 Laptop HP Elitebook 630 G9 6M142PA\">2.6 Laptop HP Elitebook 630 G9 6M142PA</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#27_Laptop_ACER_Swift_3_SF313\" title=\"2.7 Laptop ACER Swift 3 SF313\">2.7 Laptop ACER Swift 3 SF313</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#28_Laptop_ASUS_UX363EA\" title=\"2.8 Laptop ASUS UX363EA\">2.8 Laptop ASUS UX363EA</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#9_Laptop_Dell_Vostro_13_5320\" title=\"9. Laptop Dell Vostro 13 5320\">9. Laptop Dell Vostro 13 5320</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/top-15-laptop-mini-10-inch/#210_Laptop_Lenovo_ThinkBook_13s_G3\" title=\"2.10 Laptop Lenovo ThinkBook 13s G3\">2.10 Laptop Lenovo ThinkBook 13s G3</a></li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h2>1. Laptop mini l&agrave; g&igrave;? C&oacute; k&iacute;ch thước bao nhi&ecirc;u?</h2>\r\n\r\n<p>Về l&yacute; thuyết, mọi chiếc m&aacute;y t&iacute;nh x&aacute;ch tay c&oacute; k&iacute;ch cỡ nhỏ đều c&oacute; thể gọi l&agrave; laptop mini như t&ecirc;n của n&oacute;. Th&ocirc;ng thường, laptop c&oacute; k&iacute;ch cỡ ti&ecirc;u chuẩn l&agrave; 14 hoặc 15 inch. C&ograve;n với chiếc m&aacute;y mini, tr&ecirc;n thị trường hiện nay phổ biến nhất l&agrave; loại 10 inch cho đến 13 inch &ndash; tức m&agrave;n h&igrave;nh tương đương như chiếc m&aacute;y t&iacute;nh bảng. K&iacute;ch thước của ch&uacute;ng cũng rất gọn nhẹ, chỉ khoảng dưới 2kg.</p>\r\n\r\n<p>V&igrave; c&oacute; k&iacute;ch thước nhỏ gọn như vậy n&ecirc;n thường mọi người c&oacute; suy nghĩ laptop mini sẽ c&oacute; cấu h&igrave;nh thấp hơn laptop phổ th&ocirc;ng. Đ&acirc;y l&agrave; một nhận định tương đối v&agrave; c&ograve;n phụ thuộc nhiều yếu tố v&agrave; sản phẩm cụ thể. Nhưng nh&igrave;n chung, loại laptop sẽ c&oacute; những đặc điểm bạn cần biết như sau:</p>\r\n\r\n<h3>1.1 K&iacute;ch thước m&agrave;n h&igrave;nh nhỏ</h3>\r\n\r\n<p>V&igrave; chỉ khoảng 10 inch v&agrave; kh&ocirc;ng lớn hơn 14 inch n&ecirc;n laptop sẽ kh&ocirc;ng thể c&oacute; kh&ocirc;ng gian hiển thị rộng r&atilde;i như m&aacute;y ti&ecirc;u chuẩn. Nhưng đ&acirc;y vẫn l&agrave; k&iacute;ch thước đủ v&agrave; hợp l&yacute; để ch&uacute;ng ta l&agrave;m việc c&aacute;c thao t&aacute;c phổ biến như g&otilde; văn bản, lướt web, đọc t&agrave;i liệu,&hellip;</p>\r\n\r\n<p><img alt=\"Laptop nhỏ cũng có thể có chất lượng cao\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2021/07/laptop-mini-10-inch-phong-vu-1.jpg\" style=\"height:487px; width:800px\" title=\"Top 10 laptop mini 2023 nhỏ gọn, mang đi đâu cũng tiện 1\" /></p>\r\n\r\n<p>Laptop nhỏ cũng c&oacute; thể c&oacute; chất lượng cao</p>\r\n\r\n<h3>1.2 Thời lượng pin vừa đủ</h3>\r\n\r\n<p>V&igrave; với c&ocirc;ng nghệ sản xuất pin hiện tại th&igrave; pin vẫn lu&ocirc;n l&agrave; bộ phận chiếm kha kh&aacute; diện t&iacute;ch trong laptop. Thế n&ecirc;n tổng thể&nbsp;<a href=\"https://phongvu.vn/c/laptop-mong-nhe\" rel=\"noreferrer noopener\" target=\"_blank\">laptop mỏng nhẹ&nbsp;</a>cũng sẽ c&oacute; cục pin nhỏ, từ đ&oacute; dung lượng pin c&oacute; thể kh&ocirc;ng qu&aacute; ấn tượng.</p>\r\n\r\n<p>Nhưng hiện nay đ&atilde; c&oacute; những chiếc laptop mini cho thời gian hoạt động d&agrave;i l&ecirc;n đến 8 tiếng.</p>\r\n\r\n<h3>1.3 Cấu h&igrave;nh laptop mini kh&ocirc;ng yếu như mọi người lầm tưởng</h3>\r\n\r\n<p>Kh&ocirc;ng phải cứ m&aacute;y nhỏ th&igrave; mặc định cấu h&igrave;nh, RAM, ổ cứng cũng thấp hơn như nhiều người đang lầm tưởng. Ch&uacute;ng ta vẫn n&ecirc;n xem x&eacute;t cụ thể từng thiết bị.</p>\r\n\r\n<h3>1.4 Laptop mini n&ecirc;n gi&aacute; cũng &ldquo;mini&rdquo;</h3>\r\n\r\n<p>Với k&iacute;ch thước mini, chắc hẳn nhiều người sẽ thắc mắc laptop mini gi&aacute; bao nhi&ecirc;u? gi&aacute; th&agrave;nh để sản xuất ra laptop loại n&agrave;y cũng thấp hơn v&agrave; v&igrave; thế n&oacute; cũng c&oacute; gi&aacute; th&agrave;nh hấp dẫn. Laptop mini gi&aacute; bao nhi&ecirc;u tất nhi&ecirc;n cũng dao động mạnh mọi ph&acirc;n kh&uacute;c nhưng ở mức tối thiểu th&igrave; bạn chỉ cần đầu tư từ&nbsp;<strong>khoảng 5 triệu đồng</strong>&nbsp;trở l&ecirc;n l&agrave; đ&atilde; c&oacute; thể sở hữ một sản phẩm m&aacute;y t&iacute;nh.</p>\r\n\r\n<p>D&ograve;ng m&aacute;y laptop mini gi&aacute; rẻ c&ograve;n c&oacute; thể gọi l&agrave; netbook.</p>\r\n\r\n<h3>1.5 Laptop mini sinh ra d&agrave;nh cho người hay di chuyển</h3>\r\n\r\n<p>Đối tượng sử dụng th&iacute;ch hợp nhất với d&ograve;ng laptop n&agrave;y chắc chắn l&agrave; những người hay di chuyển. Việc mang theo một chiếc laptop 14, 15 inch b&ecirc;n m&igrave;nh chắc chắn khiến nhiều người thấy cồng kềnh v&agrave; phiền phức. Trong khi đ&oacute;, laptop mini th&igrave; chỉ như một cuốn s&aacute;ch hay nặng hơn m&aacute;y t&iacute;nh bảng một ch&uacute;t. N&oacute; c&oacute; thể dễ d&agrave;ng bỏ gọn v&agrave;o trong t&uacute;i x&aacute;ch thay v&igrave; phải d&ugrave;ng đến cặp, balo đựng laptop chuy&ecirc;n dụng.</p>\r\n\r\n<p>Nh&igrave;n chung, hiện nay c&aacute;c mẫu laptop mini tr&ecirc;n thị trường đều tập trung nhắm v&agrave;o nh&oacute;m sản phẩm gi&aacute; b&igrave;nh d&acirc;n. Thế n&ecirc;n đ&acirc;y c&ograve;n l&agrave; lựa chọn hấp dẫn d&agrave;nh cho những ai kh&ocirc;ng muốn đầu tư qu&aacute; nhiều, nhất l&agrave; c&aacute;c bạn học sinh, sinh vi&ecirc;n hay người kh&ocirc;ng c&oacute; nhu cầu d&ugrave;ng hiệu năng cao. Đối với người d&ugrave;ng m&aacute;y t&iacute;nh để l&agrave;m việc th&igrave; bạn c&oacute; thể y&ecirc;n t&acirc;m m&aacute;y phục vụ tốt c&aacute;c t&aacute;c vụ văn ph&ograve;ng quen thuộc, chỉ trừ nhu cầu l&agrave;m đồ họa.</p>\r\n\r\n<p><img alt=\"Vì kích thước đặc biệt, laptop mini cũng dành cho những người hay di chuyển\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2021/07/laptop-mini-10-inch-phong-vu-2.jpg\" style=\"height:465px; width:735px\" title=\"Top 10 laptop mini 2023 nhỏ gọn, mang đi đâu cũng tiện 2\" /></p>\r\n\r\n<p>V&igrave; k&iacute;ch thước đặc biệt, laptop mini cũng d&agrave;nh cho những người hay di chuyển</p>\r\n\r\n<p>Sau đ&acirc;y ch&uacute;ng ta h&atilde;y t&igrave;m hiểu 10 chiếc laptop mini gi&aacute; cả phải chăng m&agrave; vẫn đủ xịn để phục vụ nhu cầu l&agrave;m việc &ldquo;ngon l&agrave;nh&rdquo; nh&eacute;!</p>\r\n\r\n<h2>2. Top 10 laptop mini nhỏ gọn, cấu h&igrave;nh cao b&aacute;n chạy tại Phong Vũ</h2>\r\n\r\n<h3>2.1 Laptop HP Probook 430 G8</h3>\r\n\r\n<p>Thiết kế mang m&agrave;u sắc hiện đại, thời trang m&agrave; vẫn sang trọng với t&ocirc;ng m&agrave;u bạc vỏ l&agrave;m từ chất liệu cao cấp. Chiếc m&aacute;y n&agrave;y chỉ d&agrave;y 1.59 cm v&agrave; nặng 1.3 kg, gọn nhẹ thanh tho&aacute;t đủ để bạn cất vừa trong t&uacute;i x&aacute;ch.</p>\r\n\r\n<ul>\r\n	<li>CPU: Intel Core i5-1135G7</li>\r\n	<li>M&agrave;n h&igrave;nh: 13.3&Prime; (1920 x 1080)</li>\r\n	<li>RAM: 1 x 4GB DDR4 3200MHz</li>\r\n	<li>Đồ họa: Onboard Intel Iris Xe Graphics</li>\r\n	<li>Lưu trữ: 256GB SSD M.2 NVMe /</li>\r\n	<li>Hệ điều h&agrave;nh: Windows 11 Home SL</li>\r\n	<li>Pin: 3 cell 45 Wh</li>\r\n	<li>Khối lượng: 1.2kg</li>\r\n</ul>\r\n\r\n<p><img alt=\"laptop-mini-1\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/10/laptop-mini-1.jpg\" title=\"Top 10 laptop mini 2023 nhỏ gọn, mang đi đâu cũng tiện 3\" /></p>\r\n\r\n<p>Thiết kế si&ecirc;u ti&ecirc;u chuẩn hợp gu số đ&ocirc;ng</p>\r\n\r\n<p><a href=\"https://phongvu.vn/laptop-hp-probook-430-g8-614k8pa--s220300345\" rel=\"noreferrer noopener\" target=\"_blank\">MUA LAPTOP HP PROBOOK 430 G8 GI&Aacute; TỐT</a></p>\r\n\r\n<h3>2.2 Laptop HP ProBook 450 G9</h3>\r\n\r\n<p>ProBook 450 G9 sở hữu kiểu d&aacute;ng trang nh&atilde;, độ d&agrave;y 1,79 cm v&agrave; trọng lượng cực kỳ ấn tượng chỉ vỏn vẹn 1kg m&agrave; th&ocirc;i.</p>\r\n\r\n<ul>\r\n	<li>CPU: Intel Core i5-1235U</li>\r\n	<li>M&agrave;n h&igrave;nh: 15.6&Prime; IPS (1920 x 1080)</li>\r\n	<li>RAM: 1 x 8GB DDR4 3200MHz</li>\r\n	<li>Đồ họa: Onboard Intel Iris Xe Graphics</li>\r\n	<li>Lưu trữ: 256GB SSD M.2 NVMe /</li>\r\n	<li>Hệ điều h&agrave;nh: Windows 11 Home SL</li>\r\n	<li>Pin: 3 cell 51 Wh Pin liền</li>\r\n	<li>Khối lượng: 1.7kg</li>\r\n</ul>\r\n\r\n<p><img alt=\"laptop-mini-2\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/10/laptop-mini-2.jpg\" title=\"Top 10 laptop mini 2023 nhỏ gọn, mang đi đâu cũng tiện 4\" /></p>\r\n\r\n<p>Thiết kế của mẫu n&agrave;y c&oacute; hơi hướng như MacBook</p>\r\n\r\n<p><a href=\"https://phongvu.vn/may-tinh-xach-tay-laptop-hp-probook-450-g9-6m0y8pa-i5-1235u-bac--s221100545\" rel=\"noreferrer noopener\" target=\"_blank\">MUA LAPTOP HP PROBOOK 450 G9 GI&Aacute; TỐT</a></p>\r\n\r\n<h3>2.3 Laptop Lenovo IdeaPad Yoga 6 13ALC6</h3>\r\n\r\n<p>Nếu bạn đang t&igrave;m kiếm 1 chiếc m&aacute;y 2 trong 1, vừa l&agrave; laptop vừa l&agrave; m&aacute;y t&iacute;nh bảng c&oacute; thể gập lại gọn nhẹ th&igrave; đ&acirc;y l&agrave; lựa chọn ho&agrave;n hảo. Tổng trọng lượng m&aacute;y chỉ 1.3kg, khi d&ugrave;ng dưới chế độ m&aacute;y t&iacute;nh bảng vẫn đảm bảo si&ecirc;u nhẹ, linh động.</p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh: 13.3 inch IPS (1920 x 1080)</li>\r\n	<li>Chip: AMD Ryzen 7 5700U</li>\r\n	<li>RAM: 8GB DDR4 3200MHz</li>\r\n	<li>Đồ họa: AMD Radeon Graphics</li>\r\n	<li>Lưu trữ: 512GB SSD M.2 NVMe /</li>\r\n	<li>Hệ điều h&agrave;nh: Windows 11 Home</li>\r\n	<li>Pin: 60 Wh</li>\r\n</ul>\r\n\r\n<p><img alt=\"laptop-mini-3\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/10/laptop-mini-3.webp\" title=\"Top 10 laptop mini 2023 nhỏ gọn, mang đi đâu cũng tiện 5\" /></p>\r\n\r\n<p>M&agrave;n h&igrave;nh c&oacute; thể lật lại nếu bạn muốn</p>\r\n\r\n<p><a href=\"https://phongvu.vn/may-tinh-xach-tay-laptop-lenovo-ideapad-yoga-6-13alc6-82nd00bdvn-amd-ryzen-7-5700u-xanh--s211201605?sku=211201605&amp;utm_source=social&amp;utm_medium=technews&amp;utm_campaign=laptop-mini\" rel=\"noreferrer noopener\" target=\"_blank\">MUA LAPTOP LENOVO IDEAPAD YOGA 6 GI&Aacute; TỐT</a></p>\r\n\r\n<h3>2.4 Laptop ASUS UX363EA</h3>\r\n\r\n<p>Asus UX363EA-KG656W l&agrave; mẫu laptop mini nguy&ecirc;n khối với vỏ ngo&agrave;i kiểu đồng t&acirc;m sang chảnh v&agrave; độc đ&aacute;o. Độ mỏng của n&oacute; gần như l&agrave; v&ocirc; địch trong danh s&aacute;ch khi chỉ mỏng 1,39cm v&agrave; nặng chỉ 1.3 kg.</p>\r\n\r\n<ul>\r\n	<li>CPU: Intel Core i5-1135G7</li>\r\n	<li>M&agrave;n h&igrave;nh: 13.3&Prime; OLED (1920 x 1080)</li>\r\n	<li>RAM: 8GB Onboard LPDDR4X</li>\r\n	<li>Đồ họa: Onboard Intel Iris Xe Graphics</li>\r\n	<li>Lưu trữ: 512GB SSD M.2 NVMe /</li>\r\n	<li>Hệ điều h&agrave;nh: Windows 10 Home 64-bit</li>\r\n	<li>Pin: 4 cell 67 Wh</li>\r\n	<li>Khối lượng: 1.3kg</li>\r\n	<li>Chuẩn Intel EVO</li>\r\n</ul>\r\n\r\n<p><img alt=\"laptop-mini-4\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/10/laptop-mini-4-1024x683.webp\" style=\"height:512px; width:768px\" title=\"Top 10 laptop mini 2023 nhỏ gọn, mang đi đâu cũng tiện 6\" /></p>\r\n\r\n<p>Mẫu m&aacute;y n&agrave;y ph&ugrave; hợp với doanh nh&acirc;n, d&acirc;n văn ph&ograve;ng hay di chuyển</p>\r\n\r\n<p><a href=\"https://phongvu.vn/asus-zenbook-ux363ea-hp532t--s211106057\" rel=\"noreferrer noopener\" target=\"_blank\">MUA LAPTOP ASUS ZENBOOK 13 UX363EA GI&Aacute; TỐT</a></p>\r\n\r\n<h3>2.5 Laptop Asus Zenbook Flip 13 OLED</h3>\r\n\r\n<p>Th&ecirc;m một đại diện nữa đến từ nh&agrave; Asus Đ&agrave;i Loan nhưng n&oacute; l&agrave; chiếc m&aacute;y t&iacute;nh c&oacute; m&agrave;n h&igrave;nh cảm ứng v&agrave; bạn c&oacute; thể gập ngược lại để d&ugrave;ng như m&aacute;y t&iacute;nh bảng hay bảng vẽ. N&oacute; cũng chỉ c&oacute; độ mỏng 1,39 cm v&agrave; nặng 1,3kg.</p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh: 13.3 inch OLED(1920 x 1080)</li>\r\n	<li>Chip: Intel Core i5-1135G7</li>\r\n	<li>RAM: 8GB LPDDR4X</li>\r\n	<li>Đồ họa: Intel Iris Xe Graphics</li>\r\n	<li>Lưu trữ: 512GB SSD M.2 NVMe/</li>\r\n	<li>Hệ điều h&agrave;nh: Windows 11 Home</li>\r\n	<li>Pin: 4 cell 67 Wh</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tham khảo: 20.790.000</strong>&nbsp;<strong>đồng</strong></p>\r\n\r\n<p><img alt=\"laptop-mini-5\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/10/laptop-mini-5-1024x576.webp\" style=\"height:432px; width:768px\" title=\"Top 10 laptop mini 2023 nhỏ gọn, mang đi đâu cũng tiện 7\" /></p>\r\n\r\n<p>Vẻ hiện đại v&agrave; lịch l&atilde;m của laptop đa năng</p>\r\n\r\n<p><a href=\"https://phongvu.vn/asus-zenbook-flip-13-ux363ea-hp726w--s211104788\" rel=\"noreferrer noopener\" target=\"_blank\">MUA LAPTOP ASUS ZENBOOK FLIP 13 OLED GI&Aacute; TỐT</a></p>\r\n\r\n<h3>2.6 Laptop HP Elitebook 630 G9 6M142PA</h3>\r\n\r\n<p>Laptop HP Elitebook sở hữu thiết kế rất thời thượng v&agrave; trang nh&atilde;, lịch thiệp với vỏ bạc sang chảnh, tối giản. K&iacute;ch thước c&aacute;c chiều của laptop mini l&agrave; 30.69 x 20.84 x 1.59cm v&agrave; chỉ nặng 1,3kg.</p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh: 13.3 inch IPS(1920 x 1080)</li>\r\n	<li>Chip: Intel Core i5-1235U</li>\r\n	<li>RAM: 1 x 8GBDDR43200MHz</li>\r\n	<li>Đồ họa: Intel Iris Xe Graphics</li>\r\n	<li>Lưu trữ: 256GB SSD M.2 NVMe</li>\r\n	<li>Hệ điều h&agrave;nh: Windows 11 Home SL</li>\r\n	<li>Pin: 3 cell42 Wh</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tham khảo: 21.190.000</strong>&nbsp;<strong>đồng</strong></p>\r\n\r\n<p><img alt=\"laptop-mini-6\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/10/laptop-mini-6.jpg\" style=\"height:450px; width:800px\" title=\"Top 10 laptop mini 2023 nhỏ gọn, mang đi đâu cũng tiện 8\" /></p>\r\n\r\n<p>Vẻ sang chảnh của sản phẩm tr&ecirc;n b&agrave;n l&agrave;m việc</p>\r\n\r\n<p><a href=\"https://phongvu.vn/laptop-hp-elitebook-630-g9-6m142pa--s220800851?sku=220800851&amp;utm_source=social&amp;utm_medium=technews&amp;utm_campaign=laptop-mini\" rel=\"noreferrer noopener\" target=\"_blank\">MUA LAPTOP HP ELITEBOOK 630 G9 GI&Aacute; TỐT</a></p>\r\n\r\n<h3>2.7 Laptop ACER Swift 3 SF313</h3>\r\n\r\n<p>Vỏ m&aacute;y của chiếc Acer Swift 3 SF313-53-503A nhỏ xinh n&agrave;y được l&agrave;m từ chất liệu hợp kim nh&ocirc;m-magie cao cấp vừa nhẹ vừa sang trọng. Độ mỏng của n&oacute; l&agrave; 1.595 cm v&agrave; nặng 1,2kg.</p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh: 13.5 inch IPS (2556 x 1504)</li>\r\n	<li>Chip: Intel Core i5-1135G7</li>\r\n	<li>RAM: 8GB LPDDR4X 2666MHz</li>\r\n	<li>Đồ họa: Intel Iris Xe Graphics</li>\r\n	<li>Lưu trữ: 512GB SSD M.2 NVMe</li>\r\n	<li>Hệ điều h&agrave;nh: Windows 10 Home 64-bit</li>\r\n	<li>Pin: 3 cell 56 Wh</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tham khảo: 21.990.000</strong>&nbsp;<strong>đồng</strong></p>\r\n\r\n<p><img alt=\"laptop-mini-7\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/10/laptop-mini-7.jpg\" title=\"Top 10 laptop mini 2023 nhỏ gọn, mang đi đâu cũng tiện 9\" /></p>\r\n\r\n<p>Chiếc laptop mini c&ugrave;ng bạn đến l&agrave;m việc tại qu&aacute;n c&agrave; ph&ecirc; hay bất cứ đ&acirc;u</p>\r\n\r\n<p><a href=\"https://phongvu.vn/may-tinh-xach-tay-laptop-acer-swift-3-sf313-53-503a-nx-a4jsv-002-i5-1135g7-bac--s201100387?sku=201100387&amp;utm_source=social&amp;utm_medium=technews&amp;utm_campaign=laptop-mini\" rel=\"noreferrer noopener\" target=\"_blank\">MUA LAPTOP ACER SWIFT 3 SF313 GI&Aacute; TỐT</a></p>\r\n\r\n<h3>2.8 Laptop ASUS UX363EA</h3>\r\n\r\n<p>Asus UX3635EA l&agrave; chiếc m&aacute;y si&ecirc;u nhẹ, mỏng 1,39cm v&agrave; nặng 1,3kg. Sản phẩm được thiết kế nguy&ecirc;n khối với gam m&agrave;u bạc sang trọng, đ&uacute;ng kiểu ti&ecirc;u chuẩn hợp gu nhiều đối tượng sử dụng d&ugrave; l&agrave; d&acirc;n văn ph&ograve;ng hay sinh vi&ecirc;n.</p>\r\n\r\n<ul>\r\n	<li>CPU: Intel Core i5-1135G7</li>\r\n	<li>M&agrave;n h&igrave;nh: 13.3&Prime; OLED (1920 x 1080)</li>\r\n	<li>RAM: 8GB Onboard LPDDR4X</li>\r\n	<li>Đồ họa: Onboard Intel Iris Xe Graphics</li>\r\n	<li>Lưu trữ: 512GB SSD M.2 NVMe /</li>\r\n	<li>Hệ điều h&agrave;nh: Windows 10 Home 64-bit</li>\r\n	<li>Pin: 4 cell 67 Wh</li>\r\n	<li>Khối lượng: 1.3kg</li>\r\n	<li>Chuẩn Intel EVO</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tham khảo: 22.890.000</strong>&nbsp;<strong>đồng</strong></p>\r\n\r\n<p><img alt=\"laptop-mini-8\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/10/laptop-mini-8.jpg\" title=\"Top 10 laptop mini 2023 nhỏ gọn, mang đi đâu cũng tiện 10\" /></p>\r\n\r\n<p>Laptop 13 inch kh&ocirc;ng qu&aacute; nhỏ, vẫn đủ để giải tr&iacute;, l&agrave;m việc</p>\r\n\r\n<p><a href=\"https://phongvu.vn/asus-zenbook-ux363ea-hp532t--s211106057\" rel=\"noreferrer noopener\" target=\"_blank\">MUA LAPTOP ASUS UX363EA GI&Aacute; TỐT</a></p>\r\n\r\n<h3>9. Laptop Dell Vostro 13 5320</h3>\r\n\r\n<p>Chiếc m&aacute;y n&agrave;y c&oacute; ngoại h&igrave;nh kh&aacute;c biệt đ&aacute;ng kể với c&aacute;c m&aacute;y trong danh s&aacute;ch laptop mini n&agrave;y. Kh&ocirc;ng chỉ m&agrave;n h&igrave;nh cả b&agrave;n ph&iacute;m cũng theo kiểu tr&agrave;n viền tr&ocirc;ng rất hiện đại v&agrave; kh&ocirc;ng khiến c&aacute;c b&uacute;t bấm b&agrave;n ph&iacute;m bị qu&aacute; nhỏ. Khi mở m&aacute;y, phần cạnh dưới nghi&ecirc;ng một g&oacute;c nhỏ để hỗ trợ tản nhiệt v&agrave; tạo g&oacute;c đ&aacute;nh m&aacute;y thoải m&aacute;i, khoa học hơn.</p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh:13.3 inch WVA(1920 x 1200)</li>\r\n	<li>Chip: Intel Core i5-1240P</li>\r\n	<li>RAM: 8GB LPDDR54800MHz</li>\r\n	<li>Đồ họa: Intel Iris Xe Graphics</li>\r\n	<li>Lưu trữ: 256GB SSD M.2 NVMe</li>\r\n	<li>Hệ điều h&agrave;nh: Windows 11 Home SL + Office Home &amp; Student 2021</li>\r\n	<li>Pin: 4 cell54 Wh</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tham khảo: 22.990.000</strong>&nbsp;<strong>đồng</strong></p>\r\n\r\n<p><img alt=\"laptop-mini-9\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/10/laptop-mini-9.jpg\" title=\"Top 10 laptop mini 2023 nhỏ gọn, mang đi đâu cũng tiện 11\" /></p>\r\n\r\n<p>M&aacute;y 2 trong 1 m&agrave; gi&aacute; chỉ như laptop thường</p>\r\n\r\n<p><a href=\"https://phongvu.vn/may-tinh-xach-tay-laptop-dell-vostro-13-5320-i5-1240p-xam--s220920520?sku=220920520\" rel=\"noreferrer noopener\" target=\"_blank\">MUA LAPTOP DELL VOSTRO 13 5320 GI&Aacute; TỐT</a></p>\r\n\r\n<h3>2.10 Laptop Lenovo ThinkBook 13s G3</h3>\r\n\r\n<p>Laptop Lenovo ThinkBook 13s G3 sở hữu k&iacute;ch thước&nbsp;29.9 x 21 x 1.49 cm&nbsp;v&agrave; khối lượng&nbsp;1.2kg, bảo đảm độ gọn nhẹ, linh động cũng kh&ocirc;ng k&eacute;m đối thủ n&agrave;o.</p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh: 13.3 inch IPS (1920 x 1200)</li>\r\n	<li>Chip: AMD Ryzen 7 5800U</li>\r\n	<li>RAM: 8GB LPDDR4X 4266MHz</li>\r\n	<li>Đồ họa: Intel UHD Graphics</li>\r\n	<li>Lưu trữ: 512GB SSD M.2 NVMe /</li>\r\n	<li>Hệ điều h&agrave;nh: Windows 11 Home</li>\r\n	<li>Pin: 4 cell 56 Wh Pin liền</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute; tham khảo: 23.990.000</strong>&nbsp;<strong>đồng</strong></p>\r\n\r\n<p><img alt=\"laptop-mini-10\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/10/laptop-mini-10.jpg\" title=\"Top 10 laptop mini 2023 nhỏ gọn, mang đi đâu cũng tiện 12\" /></p>\r\n\r\n<p>T&ocirc;ng m&agrave;u trang nh&atilde; v&agrave; tối giản của sản phẩm</p>', '2023-02-14 04:45:09', 1, 0, '2023-02-14 04:46:23'),
(8, 'Laptop gaming ROG Strix SCAR 16/18 chạy Core i9 mới ra mắt tại Việt Nam', 'laptop-gaming-rog-strix-scar-1618-chay-core-i9-moi-ra-mat-tai-viet-nam', 1, 1, 2, 0, NULL, '2023-02-14__pre-order-asus-rog-strix-scar-16-18-300x300.jpg', '<h1>Laptop gaming ROG Strix SCAR 16/18 chạy Core i9 mới ra mắt tại Việt Nam</h1>\r\n\r\n<p><a href=\"https://phongvu.vn/cong-nghe/tin-tuc/\">Tin tức</a>&nbsp;<a href=\"https://phongvu.vn/cong-nghe/author/admin/\" rel=\"author\" title=\"Đăng bởi admin\">admin</a>&nbsp;&middot;&nbsp;Th&aacute;ng Hai 9, 2023&nbsp;&middot;&nbsp;Comments off</p>\r\n\r\n<p><strong>ROG Strix SCAR</strong>&nbsp;lu&ocirc;n l&agrave; đầu t&agrave;u trong dải sản phẩm Laptop Gaming của ROG, v&agrave; 2023 cũng kh&ocirc;ng kh&aacute;c biệt. ROG Strix SCAR 16 v&agrave; 18 với khung m&aacute;y ho&agrave;n to&agrave;n mới v&agrave; m&agrave;n h&igrave;nh tỷ lệ 16:10 thời thượng, trang bị tấm nền l&ecirc;n đ&ecirc;n 2K 240Hz, đạt chuẩn ROG Nebula. Bộ vi xử l&yacute; CPU Intel Core&trade; i9 13980HX cho hiệu năng chơi game tuyệt đỉnh, GPU l&ecirc;n đến NVIDIA GeForce RTX 4090 Laptop c&ugrave;ng hệ thống tản nhiệt t&acirc;n tiến mang đến trải nghiệm chơi game mượt m&agrave; nhất tr&ecirc;n nền tảng đồ họa đến từ tương lai.</p>\r\n\r\n<hr />\r\n<ul>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/laptop-rog-strix-scar-17-se/\" rel=\"noreferrer noopener\" target=\"_blank\">ROG Strix SCAR 17 SE, laptop gaming sử dụng chip Intel Alder Lake HX đầu ti&ecirc;n ra mắt tại Việt Nam</a></li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/asus-ra-mat-san-pham-tai-ces-2023/\" rel=\"noreferrer noopener\" target=\"_blank\">ASUS giới thiệu h&agrave;ng loạt sản phẩm mới đ&aacute;ng mong đợi tại sự kiện CES 2023</a></li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/asus-rog-strix-g15-advantage-edition-laptop-dau-tien-so-huu-gpu-rx-6800m/\" rel=\"noreferrer noopener\" target=\"_blank\">Asus ROG Strix G15 Advantage Edition &ndash; Laptop đầu ti&ecirc;n sở hữu GPU RX 6800M</a></li>\r\n</ul>\r\n\r\n<hr />\r\n<p>Mục lục</p>\r\n\r\n<p><a href=\"https://phongvu.vn/cong-nghe/laptop-asus-rog-strix-scar-16-18/#\"><input type=\"checkbox\" /></a></p>\r\n\r\n<ul>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/laptop-asus-rog-strix-scar-16-18/#1_Dat_truoc_ROG_Strix_Scar_1618_giam_den_6_trieu\" title=\"1. Đặt trước ROG Strix Scar 16/18 giảm đến 6 triệu\">1. Đặt trước ROG Strix Scar 16/18 giảm đến 6 triệu</a></li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/laptop-asus-rog-strix-scar-16-18/#2_Nhung_diem_dang_gia_cua_quai_vat_ROG_Strix_Scar_1618\" title=\"2. Những điểm đáng giá của quái vật ROG Strix Scar 16/18\">2. Những điểm đ&aacute;ng gi&aacute; của qu&aacute;i vật ROG Strix Scar 16/18</a>\r\n	<ul>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/laptop-asus-rog-strix-scar-16-18/#21_Cau_hinh_moi_nhat_chien_game_dinh_cao\" title=\"2.1 Cấu hình mới nhất, chiến game đỉnh cao\">2.1 Cấu h&igrave;nh mới nhất, chiến game đỉnh cao</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/laptop-asus-rog-strix-scar-16-18/#22_Man_hinh_chuan_Esport_chien_game_dinh_cao\" title=\"2.2 Màn hình chuẩn Esport chiến game đỉnh cao\">2.2 M&agrave;n h&igrave;nh chuẩn Esport chiến game đỉnh cao</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/laptop-asus-rog-strix-scar-16-18/#23_Tan_nhiet_ROG_Intelligent_Cooling_the_he_moi\" title=\"2.3 Tản nhiệt ROG Intelligent Cooling thế hệ mới\">2.3 Tản nhiệt ROG Intelligent Cooling thế hệ mới</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/laptop-asus-rog-strix-scar-16-18/#24_Thiet_ke_hien_dai_dam_chat_gaming\" title=\"2.4 Thiết kế hiện đại đậm chất gaming\">2.4 Thiết kế hiện đại đậm chất gaming</a></li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h2>1. Đặt trước ROG Strix Scar 16/18 giảm đến 6 triệu</h2>\r\n\r\n<p><img alt=\"pre order asus rog strix scar 16 18\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/pre-order-asus-rog-strix-scar-16-18.jpg\" style=\"height:800px; width:800px\" title=\"Laptop gaming ROG Strix SCAR 16/18 chạy Core i9 mới ra mắt tại Việt Nam 1\" /></p>\r\n\r\n<ul>\r\n	<li>Giảm trực tiếp&nbsp;<strong>6 triệu</strong>&nbsp;khi đặt trước tại Phong Vũ</li>\r\n	<li>Qu&agrave; tặng độc quyền từ nh&agrave; Asus: Gối ROG, B&igrave;nh nước ROG, T&uacute;i Canvas ROG</li>\r\n	<li>Qu&agrave; tặng độc quyền Phong Vũ: Tai nghe Asus Rog Delta Core trị gi&aacute; 1.999.000đ</li>\r\n</ul>\r\n\r\n<p>Gi&aacute; ch&iacute;nh thức từ:&nbsp;<strong>89.000.000đ</strong></p>\r\n\r\n<p>Thời gian đặt h&agrave;ng: 10-17/02/2023</p>\r\n\r\n<p>Nhanh tay order ngay v&agrave; đặt cọc 1.000.000đ để nhận tất cả ưu đ&atilde;i từ Phong Vũ bạn nh&eacute;!</p>\r\n\r\n<p><a href=\"https://phongvu.vn/p/pre-order?utm_source=social&amp;utm_medium=technews&amp;utm_campaign=rog-strix-scar-16-18\" rel=\"noreferrer noopener\" target=\"_blank\">ĐẶT TRƯỚC ASUS ROG STRIX SCAR GIẢM 6 TRIỆU VNĐ</a></p>\r\n\r\n<h2>2. Những điểm đ&aacute;ng gi&aacute; của qu&aacute;i vật ROG Strix Scar 16/18</h2>\r\n\r\n<h3>2.1 Cấu h&igrave;nh mới nhất, chiến game đỉnh cao</h3>\r\n\r\n<p>L&agrave; d&ograve;ng Laptop Gaming hiệu năng cao nhất của ASUS, ROG Strix SCAR 16/18 sở hữu những linh kiện phần cứng mạnh nhất thế giới ở thời điểm hiện tại, bao gồm CPU Intel<sup>&reg;</sup>&nbsp;Core<sup>&trade;</sup>&nbsp;i9-13980HX Processor với 24 nh&acirc;n v&agrave; 32 luồng xử l&yacute;, GPU l&ecirc;n đến NVIDIA<sup>&reg;</sup>&nbsp;GeForce RTX<sup>&trade;</sup>&nbsp;4090 với TGP l&ecirc;n đến 175W, cho hiệu suất tổng l&ecirc;n đến 240W (nhờ c&ocirc;ng nghệ Dynamic Boost v&agrave; chế độ tuỳ chỉnh tự do Manual Mode).</p>\r\n\r\n<p>Nhờ sự kết hợp giữa &ldquo;c&ocirc;ng tắc thần kỳ&rdquo; MUX Switch v&agrave; c&ocirc;ng nghệ th&ocirc;ng minh NVIDIA Advanced Optimus, hệ thống sẽ tự động ph&aacute;t hiện v&agrave; tối ưu hiệu năng khi chơi game v&agrave; chạy ứng dụng, khi cắm điện hoặc cần tiết kiệm pin, bằng c&aacute;ch điều chỉnh luồng xuất h&igrave;nh từ iGPU hoặc GPU rời l&ecirc;n m&agrave;n h&igrave;nh, m&agrave; kh&ocirc;ng cần sự can thiệp trực tiếp của người d&ugrave;ng.</p>\r\n\r\n<p><img alt=\"cau hinh ROG Strix Scar 16 18\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/cau-hinh-ROG-Strix-Scar-16-18.png\" style=\"height:800px; width:800px\" title=\"Laptop gaming ROG Strix SCAR 16/18 chạy Core i9 mới ra mắt tại Việt Nam 2\" /></p>\r\n\r\n<h3>2.2 M&agrave;n h&igrave;nh chuẩn Esport chiến game đỉnh cao</h3>\r\n\r\n<p>M&agrave;n h&igrave;nh của ROG Strix SCAR 16/18 kh&ocirc;ng chỉ lớn hơn nhờ tỷ lệ 16:10 thời thượng, m&agrave; c&ograve;n đạt chuẩn Rog Nebula với h&agrave;ng loạt th&ocirc;ng số ấn tượng như độ ph&acirc;n giải 2K, tần số qu&eacute;t 240Hz si&ecirc;u nhanh, tốc độ phản hồi chỉ 3ms, độ s&aacute;ng 500 nits v&agrave; độ phủ m&agrave;u 100% DCI-P3.</p>\r\n\r\n<p><img alt=\"man hinh ROG Strix Scar 16 18\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/man-hinh-ROG-Strix-Scar-16-18.jpg\" style=\"height:800px; width:800px\" title=\"Laptop gaming ROG Strix SCAR 16/18 chạy Core i9 mới ra mắt tại Việt Nam 3\" /></p>\r\n\r\n<h3><strong>2.3 Tản nhiệt ROG Intelligent Cooling thế hệ mới</strong></h3>\r\n\r\n<p>ROG cũng ph&aacute;t huy tối đa hiệu năng tản nhiệt nhờ khung m&aacute;y mới, với nhiều kh&ocirc;ng gian lưu th&ocirc;ng luồng kh&iacute; m&aacute;t hơn, gi&uacute;p đẩy giới hạn CPU v&agrave; GPU l&ecirc;n một tầm cao mới. Với hệ thống khe tho&aacute;t nhiệt bao quanh th&acirc;n m&aacute;y v&agrave; c&ocirc;ng nghệ tản nhiệt 3 quạt (Tri-Fan Technology), ROG Strix SCAR 16 v&agrave; 18 c&oacute; khả năng tho&aacute;t nhiệt tốt hơn hẳn thế hệ cũ. Kết hợp c&ugrave;ng keo tản nhiệt kim loại lỏng Thermal Grizzly&rsquo;s Conductonaut Extreme thế hệ mới &aacute;p dụng tr&ecirc;n cả CPU v&agrave; GPU c&ugrave;ng hệ thống tản nhiệt 7 ống đồng, ROG Strix SCAR 16 v&agrave; 18 trở th&agrave;nh d&ograve;ng Laptop Gaming c&oacute; hiệu năng đứng đầu thế giới.</p>\r\n\r\n<p><img alt=\"tan nhiet ROG Strix Scar 16 18\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/tan-nhiet-ROG-Strix-Scar-16-18.jpg\" style=\"height:800px; width:800px\" title=\"Laptop gaming ROG Strix SCAR 16/18 chạy Core i9 mới ra mắt tại Việt Nam 4\" /></p>\r\n\r\n<h3>2.4 Thiết kế hiện đại đậm chất gaming</h3>\r\n\r\n<p>D&ograve;ng ROG Strix SCAR kh&ocirc;ng chỉ nổi tiếng với hiệu năng mạnh mẽ, m&agrave; c&ograve;n sở hữu thiết kế c&aacute; t&iacute;nh nhờ hệ thống đ&egrave;n LED RGB trải d&agrave;i từ logo, b&agrave;n ph&iacute;m đến viền cạnh, v&agrave; ROG Strix SCAR 18 cũng kh&ocirc;ng phải l&agrave; ngoại lệ, với viền LED mặt sau ho&agrave;n to&agrave;n mới. Người d&ugrave;ng c&oacute; thể dễ d&agrave;ng tuỳ chỉnh hệ thống đ&egrave;n LED đa sắc m&agrave;u n&agrave;y th&ocirc;ng qua phần mềm Armoury Crate được c&agrave;i sẵn tr&ecirc;n m&aacute;y, hoặc thoả sức đẩy hiệu năng l&ecirc;n cao nhất với Manual Mode.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, ROG Strix SCAR 18 cũng được trang bị phụ kiện Armor Cap thế hệ mới gọn g&agrave;ng hơn, tinh tế hơn, c&ugrave;ng b&agrave;n r&ecirc; chuột lớn hơn 10% so với thế hệ cũ, cho người d&ugrave;ng thoải m&aacute;i sử dụng m&agrave; kh&ocirc;ng cần chuột rời.</p>\r\n\r\n<p><img alt=\"thiet ke ROG Strix Scar 16 18\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/thiet-ke-ROG-Strix-Scar-16-18.jpg\" style=\"height:800px; width:800px\" title=\"Laptop gaming ROG Strix SCAR 16/18 chạy Core i9 mới ra mắt tại Việt Nam 5\" /></p>', '2023-02-14 11:44:42', 0, 1, '2023-02-14 11:44:48');
INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(9, 'Top 5 bàn phím cơ xinh xắn dưới 2 triệu tặng bạn gái dịp Valentine', 'top-5-ban-phim-co-xinh-xan-duoi-2-trieu-tang-ban-gai-dip-valentine', 1, 1, 2, 0, NULL, '2023-02-14__ban-phim-co-akko-world-tour-tokyo-3087-phong-vu-2.jpg', '<h1>Top 5 b&agrave;n ph&iacute;m cơ xinh xắn dưới 2 triệu tặng bạn g&aacute;i dịp Valentine</h1>\r\n\r\n<p><a href=\"https://phongvu.vn/cong-nghe/danh-gia/\">Đ&aacute;nh gi&aacute;</a>&nbsp;<a href=\"https://phongvu.vn/cong-nghe/author/admin/\" rel=\"author\" title=\"Đăng bởi admin\">admin</a>&nbsp;&middot;&nbsp;Th&aacute;ng Hai 13, 2023&nbsp;&middot;&nbsp;Comments off</p>\r\n\r\n<p><a href=\"https://phongvu.vn/cong-nghe/5-mon-do-cong-nghe-danh-cho-phai-nu-vua-xinh-xan-lai-huu-dung/\" rel=\"noreferrer noopener\" target=\"_blank\">Qu&agrave; tặng valentine</a>&nbsp;kh&ocirc;ng chỉ l&agrave; h&igrave;nh thức gắn kết t&igrave;nh cảm m&agrave; c&ograve;n gi&uacute;p bạn v&agrave; người ấy h&acirc;m n&oacute;ng mối quan hệ. Gi&uacute;p cả hai c&ugrave;ng tiến l&ecirc;n một cung bậc kh&aacute;c của t&igrave;nh y&ecirc;u. V&agrave; valentine sắp đến, bạn đ&atilde; biết chọn qu&agrave; g&igrave; cho người bạn g&aacute;i y&ecirc;u thương của m&igrave;nh chưa? Ngo&agrave;i những m&oacute;n qu&agrave; valentine truyền thống như hoa, socola hay gấu b&ocirc;ng, bạn đ&atilde; nghĩ ra được m&oacute;n qu&agrave; đặc biệt g&igrave; cho dịp valentine năm nay chưa?&nbsp;</p>\r\n\r\n<p>Nếu chưa th&igrave; h&atilde;y c&ugrave;ng Phong Vũ xem qua những&nbsp;<a href=\"https://phongvu.vn/c/ban-phim-gaming?slug=ban-phim-gaming&amp;attributes.banphim_loai=5920\" rel=\"noreferrer noopener\" target=\"_blank\">b&agrave;n ph&iacute;m cơ</a>&nbsp;si&ecirc;u dễ thương c&oacute; thể trở th&agrave;nh m&oacute;n qu&agrave; để tặng bạn g&aacute;i nh&acirc;n dịp valentine năm nay nh&eacute;!</p>\r\n\r\n<hr />\r\n<ul>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/nhung-mau-smartphone-nho-gon-phu-hop-tang-chi-em-ngay-valentine/\" rel=\"noreferrer noopener\" target=\"_blank\">Những mẫu smartphone nhỏ gọn ph&ugrave; hợp tặng chị em ng&agrave;y Valentine</a></li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/game-pc-cho-cap-doi-mua-valentine/\" rel=\"noreferrer noopener nofollow\" target=\"_blank\">5 game PC cho cặp đ&ocirc;i m&ugrave;a Valentine th&uacute; vị v&agrave; ngọt ng&agrave;o</a></li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/5-mon-do-cong-nghe-danh-cho-phai-nu-vua-xinh-xan-lai-huu-dung/\" rel=\"noreferrer noopener\" target=\"_blank\">5 m&oacute;n đồ c&ocirc;ng nghệ d&agrave;nh cho ph&aacute;i nữ vừa xinh xắn lại hữu dụng</a></li>\r\n</ul>\r\n\r\n<hr />\r\n<p>Mục lục</p>\r\n\r\n<p><a href=\"https://phongvu.vn/cong-nghe/ban-phim-co-tang-ban-gai-valentine/#\"><input type=\"checkbox\" /></a></p>\r\n\r\n<ul>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/ban-phim-co-tang-ban-gai-valentine/#1_Tieu_chi_tang_qua_valentine\" title=\"1. Tiêu chí tặng quà valentine\">1. Ti&ecirc;u ch&iacute; tặng qu&agrave; valentine</a></li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/ban-phim-co-tang-ban-gai-valentine/#2_Ban_phim_co_nhu_the_nao_se_hop_voi_nu\" title=\"2. Bàn phím cơ như thế nào sẽ hợp với nữ?\">2. B&agrave;n ph&iacute;m cơ như thế n&agrave;o sẽ hợp với nữ?</a></li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/ban-phim-co-tang-ban-gai-valentine/#3_Top_5_ban_phim_co_cute_tang_ban_gai_dip_Valentine\" title=\"3. Top 5 bàn phím cơ cute tặng bạn gái dịp Valentine\">3. Top 5 b&agrave;n ph&iacute;m cơ cute tặng bạn g&aacute;i dịp Valentine</a>\r\n	<ul>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/ban-phim-co-tang-ban-gai-valentine/#31_Ban_phim_co_DareU_EK87_Blue_D_Switch_Trang_-_Hong\" title=\"3.1 Bàn phím cơ DareU EK87 Blue D Switch (Trắng – Hồng)\">3.1 B&agrave;n ph&iacute;m cơ DareU EK87 Blue D Switch (Trắng &ndash; Hồng)</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/ban-phim-co-tang-ban-gai-valentine/#32_Ban_phim_co_khong_day_Newmen_GM610_Red_Axis_Trang\" title=\"3.2 Bàn phím cơ không dây Newmen GM610 Red Axis (Trắng)\">3.2 B&agrave;n ph&iacute;m cơ kh&ocirc;ng d&acirc;y Newmen GM610 Red Axis (Trắng)</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/ban-phim-co-tang-ban-gai-valentine/#33_Ban_phim_co_AKKO_MG108_Doll_of_Princess_Akko_Switch_V3_-_Cream_Blue\" title=\"3.3 Bàn phím cơ AKKO MG108 Doll of Princess (Akko Switch V3 – Cream Blue)\">3.3 B&agrave;n ph&iacute;m cơ AKKO MG108 Doll of Princess (Akko Switch V3 &ndash; Cream Blue)</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/ban-phim-co-tang-ban-gai-valentine/#34_Ban_phim_co_AKKO_3087_Sailor_Moon_Crystal_AKKO_CS_Switch_Sakura\" title=\"3.4 Bàn phím cơ AKKO 3087 Sailor Moon Crystal (AKKO CS Switch Sakura)\">3.4 B&agrave;n ph&iacute;m cơ AKKO 3087 Sailor Moon Crystal (AKKO CS Switch Sakura)</a></li>\r\n		<li><a href=\"https://phongvu.vn/cong-nghe/ban-phim-co-tang-ban-gai-valentine/#35_Ban_phim_co_khong_day_Logitech_POP_Keys_920-010577_Vang_-_den\" title=\"3.5 Bàn phím cơ không dây Logitech POP Keys (920-010577) (Vàng – đen)\">3.5 B&agrave;n ph&iacute;m cơ kh&ocirc;ng d&acirc;y Logitech POP Keys (920-010577) (V&agrave;ng &ndash; đen)</a></li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<h2>1. Ti&ecirc;u ch&iacute; tặng qu&agrave; valentine</h2>\r\n\r\n<p>Việc lựa chọn qu&agrave; tặng cho dịp valentine sẽ phụ thuộc v&agrave;o một nửa th&acirc;n y&ecirc;u của bạn. Những m&oacute;n qu&agrave; sẽ c&oacute; &yacute; nghĩa v&agrave; mục đ&iacute;ch kh&aacute;c nhau ph&ugrave; hợp cho từng đối tượng, v&igrave; vậy việc lựa chọn qu&agrave; valentine giống nhau dường như l&agrave; điều kh&oacute; c&oacute; thể xảy ra. Do đ&oacute;, ti&ecirc;u ch&iacute; đầu ti&ecirc;n bạn cần phải để t&acirc;m ch&iacute;nh l&agrave; đối tượng bạn muốn tặng qu&agrave; l&agrave; ai, l&agrave; vợ, l&agrave; người y&ecirc;u hay l&agrave; bạn g&aacute;i để chọn ra những m&oacute;n qu&agrave; ph&ugrave; hợp.&nbsp;</p>\r\n\r\n<p>Với vợ hoặc chồng đ&atilde; kết h&ocirc;n với nhau th&igrave; những m&oacute;n qu&agrave; tặng valentine mang t&iacute;nh thiết thực vẫn l&agrave; ti&ecirc;u ch&iacute; h&agrave;ng đầu được lựa chọn. Bạn c&oacute; thể c&ugrave;ng người vợ của m&igrave;nh c&oacute; một bữa tối b&ecirc;n nhau hay một chuyến du lịch nghỉ ngơi sau những ng&agrave;y d&agrave;i l&agrave;m việc&hellip; Ngược lại, với với những cặp đ&ocirc;i đang y&ecirc;u th&igrave; những m&oacute;n qu&agrave; valentine l&atilde;ng mạn như thiệp handmade, b&aacute;nh socola, gấu b&ocirc;ng sẽ khiến bạn g&aacute;i của m&igrave;nh được hạnh ph&uacute;c.</p>\r\n\r\n<p><img alt=\"valentine\r\n\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/qua-valentine-cho-vo1.jpg\" style=\"height:600px; width:900px\" title=\"Top 5 bàn phím cơ xinh xắn dưới 2 triệu tặng bạn gái dịp Valentine 1\" /></p>\r\n\r\n<p>Th&ocirc;ng thường việc lựa chọn những m&oacute;n qu&agrave; valentine đẹp, độc v&agrave; lạ sẽ khiến nửa kia t&ograve; m&ograve; v&agrave; hấp dẫn hơn so với những m&oacute;n qu&agrave; th&ocirc;ng thường. Bạn cũng c&oacute; thể chọn một m&oacute;n qu&agrave; mang t&iacute;nh chất h&agrave;i hước v&agrave; th&uacute; vị cũng g&acirc;y đến bất ngờ cho nửa kia.&nbsp;</p>\r\n\r\n<p>Một m&oacute;n qu&agrave; valentine c&ocirc;ng nghệ đặc biệt mang cả &yacute; nghĩa v&agrave; t&iacute;nh thực dụng trong cuộc sống ng&agrave;y nay ch&iacute;nh l&agrave; b&agrave;n ph&iacute;m cơ. Với nhiều h&igrave;nh d&aacute;ng, m&agrave;u sắc cũng như l&agrave; độ đ&aacute;ng y&ecirc;u của những chiếc b&agrave;n ph&iacute;m n&agrave;y. Những ch&agrave;ng trai c&oacute; thể tham khảo m&oacute;n qu&agrave; n&agrave;y để d&agrave;nh tặng cho người bạn g&aacute;i của m&igrave;nh trong dịp lễ t&igrave;nh nh&acirc;n năm nay.</p>\r\n\r\n<h2>2. B&agrave;n ph&iacute;m cơ như thế n&agrave;o sẽ hợp với nữ?</h2>\r\n\r\n<p>Việc lựa chọn b&agrave;n ph&iacute;m cơ tặng qu&agrave; valentine ph&ugrave; hợp với nữ giới thường sẽ c&oacute; những ti&ecirc;u ch&iacute; đặc biệt dựa tr&ecirc;n sở th&iacute;ch c&aacute; nh&acirc;n. D&ugrave; vậy, những chiếc b&agrave;n ph&iacute;m cơ vẫn c&oacute; thể đ&aacute;p ứng ho&agrave;n to&agrave;n những y&ecirc;u cầu về sở th&iacute;ch đ&oacute; cho bạn.&nbsp;</p>\r\n\r\n<p>Đầu ti&ecirc;n l&agrave; ti&ecirc;u ch&iacute; về k&iacute;ch thước. Tr&ecirc;n thị trường hiện nay đang c&oacute; rất nhiều dạng b&agrave;n ph&iacute;m với từng k&iacute;ch thước kh&aacute;c nhau. Do đ&oacute;, bạn c&oacute; thể lựa chọn t&ugrave;y v&agrave;o sự t&ugrave;y biến của nh&agrave; sản xuất v&agrave; nhu cầu sử dụng của bản th&acirc;n. C&aacute;c loại size phổ biến v&agrave; được sử dụng nhiều nhất l&agrave; c&aacute;c loại b&agrave;n ph&iacute;m với k&iacute;ch thước 100% (full size), 80% (tenkeyless) v&agrave; 65% (compact). T&ugrave;y v&agrave;o nhu cầu sử dụng v&agrave; kh&ocirc;ng gian l&agrave;m việc để chọn k&iacute;ch thước ph&ugrave; hợp.</p>\r\n\r\n<p>Nếu bạn g&aacute;i l&agrave; người l&agrave;m việc văn ph&ograve;ng, bạn c&oacute; thể chọn b&agrave;n ph&iacute;m full size. C&ograve;n nếu phải thường xuy&ecirc;n di chuyển nhiều địa điểm kh&aacute;c nhau, bạn c&oacute; thể chọn c&aacute;c k&iacute;ch thước nhỏ hơn l&agrave; tenkeyless v&agrave; compact.&nbsp;</p>\r\n\r\n<p><img alt=\"valentine edited\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/valentine-edited.jpg\" style=\"height:774px; width:1238px\" title=\"Top 5 bàn phím cơ xinh xắn dưới 2 triệu tặng bạn gái dịp Valentine 2\" /></p>\r\n\r\n<p>Về m&agrave;u sắc, nữ giới thường c&oacute; xu hướng th&iacute;ch những m&agrave;u rực rỡ như hồng, xanh pastel. Những chiếc b&agrave;n ph&iacute;m cơ c&oacute; m&agrave;u pastel cũng rất được ưa chuộng v&igrave; sự đẹp đẽ của n&oacute;. B&ecirc;n cạnh đ&oacute;, phần led của b&agrave;n ph&iacute;m cũng rất quan trọng, n&oacute; chiếm phần lớn sự thẩm mỹ của một chiếc b&agrave;n ph&iacute;m cơ.</p>\r\n\r\n<p>Ti&ecirc;u ch&iacute; switch l&agrave; một trong những phần quan trọng v&igrave; ảnh hưởng trực tiếp đến trải nghiệm của người d&ugrave;ng b&agrave;n ph&iacute;m cơ. Mỗi loại switch sẽ c&oacute; độ nhạy v&agrave; độ ồn kh&aacute;c nhau. Phần switch tốt sẽ gi&uacute;p bạn giảm &aacute;p lực cho tay khi g&otilde; ph&iacute;m trong thời gian d&agrave;i. V&igrave; vậy, bạn h&atilde;y xem x&eacute;t sở th&iacute;ch của bạn g&aacute;i v&agrave; ưu ti&ecirc;n lựa chọn loại loại switch ph&ugrave; hợp nh&eacute;.</p>\r\n\r\n<h2>3. Top 5 b&agrave;n ph&iacute;m cơ cute tặng bạn g&aacute;i dịp Valentine</h2>\r\n\r\n<h3>3.1 B&agrave;n ph&iacute;m cơ DareU EK87 Blue D Switch (Trắng &ndash; Hồng)</h3>\r\n\r\n<p><img alt=\"Ban phim co DareU EK87 Blue D Switch\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/Ban-phim-co-DareU-EK87-Blue-D-Switch.jpg\" style=\"height:533px; width:800px\" title=\"Top 5 bàn phím cơ xinh xắn dưới 2 triệu tặng bạn gái dịp Valentine 3\" /></p>\r\n\r\n<p>Chiếc b&agrave;n ph&iacute;m cơ đầu ti&ecirc;n trong danh s&aacute;ch qu&agrave; tặng valentine n&agrave;y ch&iacute;nh l&agrave; B&agrave;n ph&iacute;m cơ&nbsp;<a href=\"https://www.dareu.com/\" rel=\"nofollow noopener\" target=\"_blank\">DareU</a>&nbsp;EK87 Blue D Switch. Với m&agrave;u trắng hồng v&ocirc; c&ugrave;ng nổi bật, bạn g&aacute;i của bạn chắc chắn sẽ v&ocirc; c&ugrave;ng th&iacute;ch th&uacute; khi nhận m&oacute;n qu&agrave; n&agrave;y tr&ecirc;n tay. B&agrave;n ph&iacute;m cơ n&agrave;y nổi bật với vẻ ngo&agrave;i đạt đến mức ho&agrave;n hảo về mặt thẩm mỹ khi sử dụng tone trắng hồng dịu mắt kết hợp c&ugrave;ng d&agrave;n led sinh động. C&aacute;c ph&iacute;m ấn Blue D switch Blue cho hiệu năng tốt, độ bền cao. Cảm gi&aacute;c khi ấn mang đến độ nảy tốt, &ecirc;m &aacute;i v&agrave; bền bỉ.&nbsp;</p>\r\n\r\n<p><a href=\"https://phongvu.vn/ban-phim-co-dareu-ek87-blue-d-switch-trang-hong--s210301153?utm_source=social&amp;utm_medium=technews&amp;utm_campaign=valentine-23\"><img alt=\"valentine\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/valentine.webp\" style=\"height:1000px; width:1000px\" title=\"Top 5 bàn phím cơ xinh xắn dưới 2 triệu tặng bạn gái dịp Valentine 4\" /></a></p>\r\n\r\n<p><strong>B&agrave;n ph&iacute;m cơ DareU EK87 Blue D Switch</strong></p>\r\n\r\n<p><strong><strong>589.000₫</strong></strong>&nbsp;<s><s>649.000₫</s></s></p>\r\n\r\n<ul>\r\n	<li>B&agrave;n ph&iacute;m cơ</li>\r\n	<li>Kết nối: USB 2.0</li>\r\n	<li>Switch: DareU Blue</li>\r\n</ul>\r\n\r\n<p><a href=\"https://phongvu.vn/ban-phim-co-dareu-ek87-blue-d-switch-trang-hong--s210301153?utm_source=social&amp;utm_medium=technews&amp;utm_campaign=valentine-23\" rel=\"noreferrer noopener\" target=\"_blank\">MUA NGAY</a></p>\r\n\r\n<h3>3.2 B&agrave;n ph&iacute;m cơ kh&ocirc;ng d&acirc;y Newmen GM610 Red Axis (Trắng)</h3>\r\n\r\n<p>B&agrave;n ph&iacute;m cơ thứ hai trong danh s&aacute;ch qu&agrave; tăng valentine ch&iacute;nh l&agrave; b&agrave;n ph&iacute;m cơ kh&ocirc;ng d&acirc;y Newmen GM610 Red Axis. Đến từ thương hiệu NEWMEN, đ&acirc;y l&agrave; chiếc b&agrave;n ph&iacute;m cơ kh&ocirc;ng d&acirc;y cao cấp. Thiết kế hiện đại, đẹp mắt v&agrave; sang trọng c&ugrave;ng nhiều t&iacute;nh năng mới lạ, đ&acirc;y l&agrave; chiếc b&agrave;n ph&iacute;m cơ th&iacute;ch hợp nhất để sử dụng l&agrave;m qu&agrave; tặng trong dịp valentine năm nay.</p>\r\n\r\n<p><img alt=\"ban phim co newmen gm610 1\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2/2022/10/ban-phim-co-newmen-gm610-1.jpg\" title=\"Top 5 bàn phím cơ xinh xắn dưới 2 triệu tặng bạn gái dịp Valentine 5\" /></p>\r\n\r\n<p>B&agrave;n ph&iacute;m cơ kh&ocirc;ng d&acirc;y Newmen GM610 Red Axis được thiết kế với cỡ compact nhỏ gọn, tinh tế đi k&egrave;m với t&ocirc;ng m&agrave;u trắng sang trọng. Chiếc b&agrave;n ph&iacute;m cơ n&agrave;y mang lại cho người d&ugrave;ng sự tiện lợi bởi sự nhỏ gọn của n&oacute;. Họ c&oacute; thể mang n&oacute; đi khắp nơi để l&agrave;m việc, soạn thảo văn thảo ở bất cứ nơi đ&acirc;u m&agrave; kh&ocirc;ng lo nặng nề, chiếm diện t&iacute;ch. Keycap của GM610 Red Axis được l&agrave;m từ chất liệu PBT mang đến độ b&oacute;ng tốt cho sản phẩm, chống vết bẩn v&agrave; đặc biệt ch&uacute;ng v&ocirc; c&ugrave;ng bền bỉ kh&ocirc;ng bị xuống cấp theo thời gian sử dụng.&nbsp;</p>\r\n\r\n<p><a href=\"https://phongvu.vn/ban-phim-co-khong-day-newmen-gm610-red-axis-trang--s210700024?utm_source=social&amp;utm_medium=technews&amp;utm_campaign=valentine-23\"><img alt=\"valentine 1\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/valentine-1.webp\" style=\"height:1000px; width:1000px\" title=\"Top 5 bàn phím cơ xinh xắn dưới 2 triệu tặng bạn gái dịp Valentine 6\" /></a></p>\r\n\r\n<p><strong>B&agrave;n ph&iacute;m cơ kh&ocirc;ng d&acirc;y Newmen GM610 Red Axis</strong></p>\r\n\r\n<p><strong><strong>999.000₫</strong></strong>&nbsp;<s><s>1.290.000₫</s></s></p>\r\n\r\n<ul>\r\n	<li>Keycap (N&uacute;t ph&iacute;m ) chất liệu PBT</li>\r\n	<li>C&oacute; phần mềm t&ugrave;y chỉnh LED, 3 Profiles</li>\r\n	<li>Layout: 61 ph&iacute;m (60% full size)</li>\r\n	<li>Trục b&agrave;n ph&iacute;m : OUTEMU, HotSwap</li>\r\n	<li>Dung lượng pin : 1600mAh</li>\r\n	<li>Chiều d&agrave;i d&acirc;y : &nbsp;1.6m Nilon bện, chống đứt</li>\r\n</ul>\r\n\r\n<p><a href=\"https://phongvu.vn/ban-phim-co-khong-day-newmen-gm610-red-axis-trang--s210700024?utm_source=social&amp;utm_medium=technews&amp;utm_campaign=valentine-23\" rel=\"noreferrer noopener\" target=\"_blank\">MUA NGAY</a></p>\r\n\r\n<h3>3.3 B&agrave;n ph&iacute;m cơ AKKO MG108 Doll of Princess (Akko Switch V3 &ndash; Cream Blue)</h3>\r\n\r\n<p>AKKO MonsGeek MG108 Doll of Princess&nbsp;l&agrave; d&ograve;ng b&agrave;n ph&iacute;m cơ hứa hẹn sẽ l&agrave; m&oacute;n qu&agrave; tặng valentine khiến mọi c&ocirc; g&aacute;i đều đổ gục bởi vẻ đẹp của n&oacute;. Bằng c&aacute;ch phối m&agrave;u độc đ&aacute;o v&agrave; v&ocirc; c&ugrave;ng ấn tượng, chiếc b&agrave;n ph&iacute;m cơ n&agrave;y mang tr&ecirc;n m&igrave;nh những điểm nổi bật tạo n&ecirc;n bởi sự kết hợp giữa xanh Jewel v&agrave; trắng. Khi nh&igrave;n v&agrave;o m&agrave;u sắc của b&agrave;n ph&iacute;m n&agrave;y, bạn sẽ dễ d&agrave;ng bị ch&uacute;ng thu h&uacute;t bởi cảm gi&aacute;c b&igrave;nh y&ecirc;n, thư gi&atilde;n v&agrave; thoải m&aacute;i. Đặt chiếc b&agrave;n ph&iacute;m n&agrave;y tr&ecirc;n b&agrave;n l&agrave;m việc, &aacute;nh nh&igrave;n sẽ bị ch&uacute;ng thu h&uacute;t bởi v&igrave; d&agrave;n led nền RGB nổi bật.&nbsp;</p>\r\n\r\n<p><img alt=\"AKKO MG108 Doll of Princess 1\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/AKKO-MG108-Doll-of-Princess-1.jpg\" style=\"height:450px; width:800px\" title=\"Top 5 bàn phím cơ xinh xắn dưới 2 triệu tặng bạn gái dịp Valentine 7\" /></p>\r\n\r\n<p>Sở hữu thiết kế Fullsize, b&agrave;n ph&iacute;m AKKO MonsGeek MG108 Doll of Princess được t&iacute;ch hợp bộ Switch độc quyền Akko switch v3. Điểm n&agrave;y mang đến cho người d&ugrave;ng cảm gi&aacute;c nhấn cực đ&atilde;, độ đ&agrave;n hồi v&agrave; độ nhạy cực tốt. Ngo&agrave;i ra, bạn c&oacute; thể thay đổi t&ugrave;y chọn d&ograve;ng switch theo sở th&iacute;ch c&aacute; nh&acirc;n với c&aacute;c phi&ecirc;n bản (Cream Blue / Cream Yellow) ph&ugrave; hợp với nhu cầu sử dụng v&agrave; sở th&iacute;ch của bạn g&aacute;i.</p>\r\n\r\n<p>T&iacute;nh tiện dụng của chiếc b&agrave;n ph&iacute;m n&agrave;y cũng được thể hiện th&ocirc;ng qua độ tương th&iacute;ch cao khi c&oacute; thể cất gọn trong balo v&agrave; sử dụng ở bất kỳ đ&acirc;u. C&aacute;c cổng kết nối được hỗ trợ th&ocirc;ng qua c&aacute;p Type-C to Type-A c&oacute; thể th&aacute;o rời. Nhờ đặc điểm n&agrave;y, người d&ugrave;ng c&oacute; thể kết nối v&agrave; sử dụng b&agrave;n ph&iacute;m cơ tr&ecirc;n những d&ograve;ng m&aacute;y t&iacute;nh chạy hệ điều h&agrave;nh Windows / MacOS / Linux.</p>\r\n\r\n<p><a href=\"https://phongvu.vn/ban-phim-co-akko-mg108-doll-of-princess-xanh-akko-cream-blue-v3--s221201321?utm_source=social&amp;utm_medium=technews&amp;utm_campaign=valentine-23\"><img alt=\"qua valentine 5 1\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/qua-valentine-5-1.webp\" style=\"height:1000px; width:1000px\" title=\"Top 5 bàn phím cơ xinh xắn dưới 2 triệu tặng bạn gái dịp Valentine 8\" /></a></p>\r\n\r\n<p><strong>B&agrave;n ph&iacute;m cơ AKKO MG108</strong></p>\r\n\r\n<ul>\r\n	<li>Kết nối: USB Type-C to Type-A (d&acirc;y c&oacute; thể th&aacute;o rời)</li>\r\n	<li>K&iacute;ch thước: 445.5 x 137.5 x 41.8mm | Trọng lượng ~ 1.15 kg</li>\r\n	<li>LED nền RGB / PCBA 1.6mm</li>\r\n	<li>T&iacute;ch hợp sẵn foam ti&ecirc;u &acirc;m PCB EVA</li>\r\n	<li>Tương th&iacute;ch: Windows / MacOS / Linux</li>\r\n</ul>\r\n\r\n<p><a href=\"https://phongvu.vn/ban-phim-co-akko-mg108-doll-of-princess-xanh-akko-cream-blue-v3--s221201321?utm_source=social&amp;utm_medium=technews&amp;utm_campaign=valentine-23\" rel=\"noreferrer noopener\" target=\"_blank\">MUA NGAY</a></p>\r\n\r\n<h3>3.4 B&agrave;n ph&iacute;m cơ AKKO 3087 Sailor Moon Crystal (AKKO CS Switch Sakura)</h3>\r\n\r\n<p>G&acirc;y ấn tượng với người d&ugrave;ng bởi m&agrave;u sắc bắt mắt, b&agrave;n ph&iacute;m cơ AKKO 3087 Sailor Moon Crystal sẽ chinh phục mọi tr&aacute;i tim của những người y&ecirc;u th&iacute;ch m&agrave;u hồng. Thiết kế trẻ trung nhưng kh&ocirc;ng k&eacute;m phần thanh lịch, AKKO 3087 Sailor Moon Crystal l&agrave; một trong những d&ograve;ng b&agrave;n ph&iacute;m cơ gi&aacute; rẻ so với những đối thủ ở c&ugrave;ng ph&acirc;n kh&uacute;c. Phong c&aacute;ch phối m&agrave;u đậm chất &ldquo;n&agrave;ng thơ&rdquo; dựa tr&ecirc;n bảng m&agrave;u pink pastel cực k&igrave; đ&aacute;ng y&ecirc;u. Sự lựa chọn b&agrave;n ph&iacute;m cơ AKKO 3087 Sailor Moon Crystal sẽ chiếm trọn t&igrave;nh cảm của những ai y&ecirc;u th&iacute;ch sự dịu d&agrave;ng của tone m&agrave;u pastel n&agrave;y.</p>\r\n\r\n<p><img alt=\"Ban phim co AKKO 3087 Sailor Moon Crystal\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/Ban-phim-co-AKKO-3087-Sailor-Moon-Crystal.jpg\" style=\"height:450px; width:800px\" title=\"Top 5 bàn phím cơ xinh xắn dưới 2 triệu tặng bạn gái dịp Valentine 9\" /></p>\r\n\r\n<p>B&agrave;n ph&iacute;m được thiết kế với k&iacute;ch thước Layout 75% &ndash; một Layout ph&iacute;m cơ kh&aacute; được ưa chuộng với những bạn nữ v&igrave; sự gọn nhẹ của n&oacute; m&agrave; c&ograve;n đem lại đầy đủ chức năng với d&agrave;n ph&iacute;m F. Với thiết kế n&agrave;y, bạn c&oacute; thể mang n&oacute; đi bất kỳ đ&acirc;u để l&agrave;m việc, giải tr&iacute; v&agrave; soạn thảo văn bản. Vỏ ph&iacute;m được l&agrave;m từ nhựa v&ocirc; c&ugrave;ng bền bỉ v&agrave; chắc chắn. Nh&agrave; sản xuất cũng đưa ra cam kết ch&uacute;ng chịu nhiệt v&agrave; chịu lực tốt.</p>\r\n\r\n<p>AKKO đ&atilde; trang bị Akko CS switch &ndash; Sakura cho chiếc b&agrave;n ph&iacute;m mang t&ecirc;n của &ldquo;thủy thủ mặt trăng&rdquo; trong sản phẩm lần n&agrave;y. B&agrave;n ph&iacute;m sẽ hạn chế ph&aacute;t ra tiếng ồn qu&aacute; lớn, lực nhấn chỉ đạt mức 35gr. Điều n&agrave;y sẽ mang lại cảm gi&aacute;c g&otilde; nhẹ nh&agrave;ng ph&ugrave; hợp với những bạn cần kỹ năng đ&aacute;nh m&aacute;y nhanh hoặc l&agrave;m việc văn ph&ograve;ng.&nbsp;</p>\r\n\r\n<p><a href=\"https://phongvu.vn/ban-phim-co-akko-3087-sailor-moon-crystal--s220500862?utm_source=social&amp;utm_medium=technews&amp;utm_campaign=valentine-23\"><img alt=\"qua valentine 5\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/qua-valentine-5.webp\" style=\"height:1000px; width:1000px\" title=\"Top 5 bàn phím cơ xinh xắn dưới 2 triệu tặng bạn gái dịp Valentine 10\" /></a></p>\r\n\r\n<p><strong>B&agrave;n ph&iacute;m cơ AKKO 3087</strong></p>\r\n\r\n<p><strong><strong>1.699.000₫</strong></strong>&nbsp;<s><s>1.899.000₫</s></s></p>\r\n\r\n<ul>\r\n	<li>B&agrave;n ph&iacute;m cơ</li>\r\n	<li>Kết nối: USB Type-C</li>\r\n	<li>Switch: Akko CS Switch</li>\r\n	<li>Ph&iacute;m chức năng: C&oacute;</li>\r\n</ul>\r\n\r\n<p><a href=\"https://phongvu.vn/ban-phim-co-akko-3087-sailor-moon-crystal--s220500862?utm_source=social&amp;utm_medium=technews&amp;utm_campaign=valentine-23\" rel=\"noreferrer noopener\" target=\"_blank\">MUA NGAY</a></p>\r\n\r\n<h3>3.5 B&agrave;n ph&iacute;m cơ kh&ocirc;ng d&acirc;y Logitech POP Keys (920-010577) (V&agrave;ng &ndash; đen)</h3>\r\n\r\n<p>Với những bạn nữ kh&ocirc;ng qu&aacute; ưa th&iacute;ch m&agrave;u hồng th&igrave; B&agrave;n ph&iacute;m cơ kh&ocirc;ng d&acirc;y Logitech POP Keys (920-010577) (V&agrave;ng &ndash; đen) chắc chắn sẽ l&agrave; m&oacute;n qu&agrave; valentine kh&ocirc;ng thể n&agrave;o ph&ugrave; hợp hơn. Đ&acirc;y l&agrave; kiểu b&agrave;n ph&iacute;m cơ học kh&ocirc;ng d&acirc;y với m&agrave;u sắc v&agrave;ng &ndash; đen bắt mắt c&ugrave;ng nhiều c&ocirc;ng nghệ hỗ trợ qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p><img alt=\"Logitech POP Keys\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/Logitech-POP-Keys.jpg\" style=\"height:450px; width:800px\" title=\"Top 5 bàn phím cơ xinh xắn dưới 2 triệu tặng bạn gái dịp Valentine 11\" /></p>\r\n\r\n<p>B&agrave;n ph&iacute;m cơ kh&ocirc;ng d&acirc;y c&oacute; được thiết kế nhỏ gọn với k&iacute;ch thước của b&agrave;n ph&iacute;m compact ph&ugrave; hợp với những nữ giới. B&ecirc;n cạnh đ&oacute;, k&iacute;ch thước gọn cũng gi&uacute;p tiết kiệm rất nhiều diện t&iacute;ch trong kh&ocirc;ng gian b&agrave;n l&agrave;m việc. Bạn c&oacute; thể bỏ t&uacute;i, balo hay cầm tay rồi mang đến bất cứ nơi đ&acirc;u để phục vụ nhu cầu l&agrave;m việc.&nbsp;</p>\r\n\r\n<p>B&agrave;n ph&iacute;m l&agrave; sự kết hợp h&agrave;i h&ograve;a giữa c&aacute;c gam m&agrave;u đen, x&aacute;m v&agrave; m&agrave;u v&agrave;ng của tr&ograve; chơi arcade. Kiểu switch của b&agrave;n ph&iacute;m l&agrave; TTC Tactile Switch Brown mang đến cảm gi&aacute;c g&otilde; ph&iacute;m nhanh khi c&oacute; thể cảm nhận từng c&uacute; nảy ng&oacute;n tay tr&ecirc;n ph&iacute;m. Đi k&egrave;m theo đ&oacute; ch&iacute;nh l&agrave; tiếng l&aacute;ch c&aacute;ch nhỏ v&ocirc; c&ugrave;ng hấp dẫn của ph&iacute;m switch trong b&agrave;n ph&iacute;m cơ mỗi lần nhấn. Đặc biệt, b&agrave;n ph&iacute;m kh&ocirc;ng d&acirc;y n&agrave;y c&ograve;n t&iacute;ch hợp th&ecirc;m 8 ph&iacute;m emoji như vui vẻ, giận dữ&hellip; v&ocirc; c&ugrave;ng th&uacute; vị gi&uacute;p người d&ugrave;ng thể hiện t&acirc;m trạng nhanh ch&oacute;ng.&nbsp;</p>', '2023-02-14 11:45:36', 0, 1, '2023-02-14 11:46:55'),
(10, 'Linh kiện build PC giảm mạnh đến 4 triệu, mua ngay kẻo lỡ!', 'linh-kien-build-pc-giam-manh-den-4-trieu-mua-ngay-keo-lo', 1, 1, 2, 0, NULL, '2023-02-14__linh-kien-laptop-va-nhung-dieu-ban-can-biet-anh-11-300x202.jpg', '<h1>Linh kiện build PC giảm mạnh đến 4 triệu, mua ngay kẻo lỡ!</h1>\r\n\r\n<p><a href=\"https://phongvu.vn/cong-nghe/thu-thuat/\">Thủ thuật</a>&nbsp;&middot;&nbsp;Th&aacute;ng Hai 6, 2023&nbsp;&middot;&nbsp;Comments off</p>\r\n\r\n<p>Trong mỗi chiếc&nbsp;<a href=\"https://phongvu.vn/c/pc\" rel=\"noreferrer noopener\" target=\"_blank\">PC</a>&nbsp;hay&nbsp;<a href=\"https://phongvu.vn/c/laptop\" rel=\"noreferrer noopener\" target=\"_blank\">laptop</a>&nbsp;ho&agrave;n chỉnh đều chứa nhiều loại linh kiện m&aacute;y t&iacute;nh kh&aacute;c nhau v&agrave; mỗi linh kiện n&agrave;y đều đảm nhiệm một vai tr&ograve; ri&ecirc;ng biệt gi&uacute;p PC hoạt động trơn tru, mượt m&agrave;. Để c&oacute; thể &ldquo;build&rdquo; được những bộ PC hay mua được những chiếc laptop c&oacute; cấu h&igrave;nh phần cứng ph&ugrave; hợp với nhu cầu sử dụng của c&aacute; nh&acirc;n th&igrave; người d&ugrave;ng n&agrave;o cũng n&ecirc;n hiểu biết về c&aacute;c linh kiện PC n&agrave;y. Trong b&agrave;i viết n&agrave;y, Phong Vũ sẽ giới thiệu cho bạn những&nbsp;<a href=\"https://phongvu.vn/c/linh-kien-may-tinh\" rel=\"noreferrer noopener\" target=\"_blank\">linh kiện m&aacute;y t&iacute;nh</a>&nbsp;quan trọng v&agrave; chức năng của ch&uacute;ng. C&ugrave;ng t&igrave;m hiểu nh&eacute;!</p>\r\n\r\n<hr />\r\n<ul>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/pc-build-san-phong-vu/\" rel=\"noreferrer noopener\" target=\"_blank\">4 bộ PC build sẵn từ 10 triệu cực hấp dẫn tại Phong Vũ</a></li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/cach-chon-pc-choi-game/\" rel=\"noreferrer noopener\" target=\"_blank\">Hướng dẫn ti&ecirc;u ch&iacute; chọn mua m&aacute;y t&iacute;nh PC chơi game</a></li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/build-pc-cho-hoc-sinh/\" rel=\"noreferrer noopener\" target=\"_blank\">PC cho học sinh học online gi&aacute; chỉ 5 triệu</a></li>\r\n</ul>\r\n\r\n<hr />\r\n<p>Mục lục</p>\r\n\r\n<p><a href=\"https://phongvu.vn/cong-nghe/linh-kien-pc-va-nhung-dieu-ban-can-biet/#\"><input type=\"checkbox\" /></a></p>\r\n\r\n<ul>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/linh-kien-pc-va-nhung-dieu-ban-can-biet/#1_Card_man_hinh\" title=\"1. Card màn hình\">1.&nbsp;Card m&agrave;n h&igrave;nh</a></li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/linh-kien-pc-va-nhung-dieu-ban-can-biet/#2_Bo_vi_xu_ly_-_CPU\" title=\"2. Bộ vi xử lý – CPU \">2. Bộ vi xử l&yacute; &ndash; CPU&nbsp;</a></li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/linh-kien-pc-va-nhung-dieu-ban-can-biet/#3_Mainboard\" title=\"3. Mainboard\">3. Mainboard</a></li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/linh-kien-pc-va-nhung-dieu-ban-can-biet/#4_Bo_nho_RAM\" title=\"4. Bộ nhớ RAM\">4. Bộ nhớ RAM</a></li>\r\n	<li><a href=\"https://phongvu.vn/cong-nghe/linh-kien-pc-va-nhung-dieu-ban-can-biet/#5_O_cung_luu_tru_HDD_SSD\" title=\"5. Ổ cứng lưu trữ HDD, SSD \">5. Ổ cứng lưu trữ HDD, SSD&nbsp;</a></li>\r\n</ul>\r\n\r\n<h2><strong>1.&nbsp;Card m&agrave;n h&igrave;nh</strong></h2>\r\n\r\n<p><a href=\"https://phongvu.vn/c/vga-card-man-hinh\" rel=\"noreferrer noopener\" target=\"_blank\">Card m&agrave;n h&igrave;nh</a>&nbsp;hay c&ograve;n gọi l&agrave; card đồ họa viết tắt l&agrave; &ldquo;VGA&rdquo; (Video Graphics Adaptor) c&oacute; nhiệm vụ xử l&yacute; h&igrave;nh ảnh trong m&aacute;y t&iacute;nh như m&agrave;u sắc, độ ph&acirc;n giải, độ tương phản, chất lượng h&igrave;nh ảnh hiển thị tr&ecirc;n m&agrave;n h&igrave;nh&hellip;th&ocirc;ng qua kết nối với m&agrave;n h&igrave;nh để hiển thị h&igrave;nh ảnh gi&uacute;p người d&ugrave;ng c&oacute; thể thao t&aacute;c, giao tiếp tr&ecirc;n m&aacute;y t&iacute;nh hay laptop.</p>\r\n\r\n<p>M&aacute;y t&iacute;nh n&agrave;o cũng đều phải c&oacute; card m&agrave;n h&igrave;nh (VGA) để xử l&yacute; h&igrave;nh ảnh, độ ph&acirc;n giải.GPU (Graphic Processing Unit) ch&iacute;nh l&agrave; bộ n&atilde;o của VGA n&oacute; sẽ đảm nhiệm nhiệm vụ xử l&yacute; tất cả c&aacute;c vấn đề li&ecirc;n quan đến h&igrave;nh ảnh. Card m&agrave;n h&igrave;nh l&agrave; một trong những bộ phận về phần cứng rất quan trọng, n&oacute; quyết định đến sức mạnh xử l&yacute; đồ họa v&agrave; hiển thị của chiếc m&aacute;y t&iacute;nh n&oacute;i chung v&agrave; chiếc laptop n&oacute;i ri&ecirc;ng.</p>\r\n\r\n<p><img alt=\"Card-man-hinh-choi-game-tot-gia-re\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/sites/2//sites/2/2022/12/Card-man-hinh-choi-game-tot-gia-re.png\" style=\"height:450px; width:800px\" title=\"Linh kiện build PC giảm mạnh đến 4 triệu, mua ngay kẻo lỡ! 1\" /></p>\r\n\r\n<p>Với những anh em game thủ chuy&ecirc;n nghiệp th&igrave; c&aacute;i t&ecirc;n ASUS TUF Gaming đ&atilde; l&agrave; một thương hiệu kh&ocirc;ng qu&aacute; xa lạ v&igrave; độ chất chơi v&agrave; hiệu suất đ&aacute;ng ngưỡng mộ m&agrave; t&ecirc;n tuổi n&agrave;y đem đến. Mẫu card đồ họa cao cấp ASUS TUF Gaming GeForce RTX&trade; 3060 V2 OC Edition 12GB GDDR6 chắc chắn sẽ l&agrave;m h&agrave;i l&ograve;ng anh em với hiệu năng mạnh mẽ v&agrave; tối ưu nhiệt độ tuyệt vời.&nbsp;</p>\r\n\r\n<p>Đầu ti&ecirc;n đ&oacute; ch&iacute;nh l&agrave; thiết kế qu&aacute; hầm hố v&agrave; gaming đến từ mẫu card m&agrave;n h&igrave;nh ASUS TUF Gaming RTX&trade; 3060 V2 nhờ được ho&agrave;n thiện từ hợp kim nh&ocirc;m, đồng thời chiếc card đồ họa n&agrave;y cũng được t&iacute;ch hợp đ&egrave;n LED RGB đẹp mắt.&nbsp;</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh ASUS TUF Gaming GeForce RTX&trade; 3060 V2 OC Edition 12GB GDDR6 mang đến một hiệu suất cực ấn tượng nhờ v&agrave;o sức mạnh đến từ kiến tr&uacute;c&nbsp;<a href=\"https://www.nvidia.com/en-us/data-center/ampere-architecture/\" rel=\"noopener\" target=\"_blank\">NVIDIA Ampere</a>&nbsp;ho&agrave;n to&agrave;n mới, đồng thời n&oacute; cũng được trang bị ASUS GPU Tweak II cho ph&eacute;p bạn tinh chỉnh c&aacute;c th&ocirc;ng số quan trọng tr&ecirc;n card.&nbsp;</p>\r\n\r\n<p>Hỗ trợ l&agrave;m m&aacute;t tối ưu với hệ thống 3 quạt ch&iacute;nh &aacute;p dụng c&ocirc;ng nghệ Axial tăng cường khả năng l&agrave;m m&aacute;t hiệu quả.&nbsp;</p>', '2023-02-14 11:46:50', 0, 1, '2023-02-14 11:46:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

DROP TABLE IF EXISTS `attributes`;
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT '0',
  `atb_category_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  KEY `attributes_atb_category_id_index` (`atb_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(14, 'Thái Lan', 'thai-lan', 1, 1, '2023-02-15 06:03:25', '2023-02-15 06:03:52'),
(15, 'Việt Nam', 'viet-nam', 1, 1, '2023-02-15 06:04:21', NULL),
(16, 'Kingston', 'kingston', 2, 1, '2023-02-15 06:08:42', NULL),
(17, '12 Tháng', '12-thang', 3, 1, '2023-02-15 06:08:58', NULL),
(18, '24 Tháng', '24-thang', 3, 1, '2023-02-15 06:09:11', NULL),
(19, '36 Tháng', '36-thang', 3, 1, '2023-02-15 06:09:21', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT '0',
  `c_hot` tinyint(4) NOT NULL DEFAULT '0',
  `c_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  KEY `categories_c_parent_id_index` (`c_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Ram', 'ram', '2023-02-14__1.png', NULL, NULL, 0, 0, 1, '2020-04-12 02:16:06', '2023-02-14 03:25:10'),
(2, 'Ổ Cứng', 'o-cung', '2023-02-14__2.png', NULL, NULL, 0, 0, 1, '2020-04-12 02:16:09', '2023-02-14 03:25:55'),
(3, 'Chuột', 'chuot', '2023-02-14__3.png', NULL, NULL, 0, 0, 1, '2020-04-12 02:16:19', '2023-02-14 03:26:41'),
(4, 'Bàn phím', 'ban-phim', '2023-02-14__4.png', NULL, NULL, 0, 0, 1, '2020-04-16 16:50:02', '2023-02-14 03:27:13'),
(5, 'CPU', 'cpu', '2023-02-14__5.png', NULL, NULL, 0, 0, 1, '2020-04-16 16:53:53', '2023-02-14 03:28:27'),
(7, 'Mainboard', 'mainboard', '2023-02-14__6.png', NULL, NULL, 0, 0, 1, '2020-04-17 03:12:48', '2023-02-14 03:29:20'),
(8, 'Nguồn', 'nguon', '2023-02-14__7.png', NULL, NULL, 0, 1, 1, '2020-04-17 03:23:35', '2023-02-14 03:29:51'),
(9, 'Tản nhiệt', 'tan-nhiet', '2023-02-14__8.png', NULL, NULL, 0, 0, 1, '2020-04-17 05:27:05', '2023-02-14 03:30:49'),
(10, 'VGA', 'vga', '2023-02-14__9.png', NULL, NULL, 0, 0, 1, '2020-04-17 05:31:53', '2023-02-14 03:31:34'),
(12, 'Case', 'case', '2023-02-14__11.png', NULL, NULL, 0, 0, 1, '2020-04-18 11:49:08', '2023-02-14 03:32:15'),
(14, 'Màn hình', 'man-hinh', '2023-02-14__10.png', NULL, NULL, 0, 0, 1, '2023-02-14 03:32:53', NULL),
(15, 'USB JS', 'usb-js', NULL, NULL, NULL, 0, 0, 1, '2023-02-14 13:18:49', NULL),
(16, 'BALO', 'balo', NULL, NULL, NULL, 0, 0, 1, '2023-02-14 13:18:59', NULL),
(17, 'Tai Nghe', 'tai-nghe', NULL, NULL, NULL, 0, 0, 1, '2023-02-14 13:20:03', NULL),
(18, 'Pin LapTop', 'pin-laptop', NULL, NULL, NULL, 0, 0, 1, '2023-02-15 14:33:49', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci,
  `cmt_parent_id` int(11) NOT NULL DEFAULT '0',
  `cmt_product_id` int(11) NOT NULL DEFAULT '0',
  `cmt_admin_id` int(11) NOT NULL DEFAULT '0',
  `cmt_user_id` int(11) NOT NULL DEFAULT '0',
  `cmt_like` int(11) NOT NULL DEFAULT '0',
  `cmt_disk_like` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  KEY `comments_cmt_user_id_index` (`cmt_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `c_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_code`
--

DROP TABLE IF EXISTS `discount_code`;
CREATE TABLE IF NOT EXISTS `discount_code` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `d_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_number_code` int(11) NOT NULL DEFAULT '0',
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `discount_code_d_code_unique` (`d_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `e_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_3` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_4` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'Giảm giá toàn bộ sản phẩm sách nhân ngày 30/4-1/5 (sale off 20-49%)', '2023-02-14__20-apr50726dde2040fd91b47b296177a2c227.jpg', 'https://thanhnien.vn/van-hoa/nha-sach-online-bung-no-giam-gia-sach-1193285.html', 0, 1, 0, 0, '2023-02-14 07:31:22', '2023-02-14 07:31:22'),
(2, 'Chào mừng năm học mới ưu đãi cho tất cả sinh viên giảm giá lên tới 40% tất cả các loại sách', '2023-02-14__05-janc4c95589fc20ecbef9bd5db6303c1cfd.png', 'https://omegaplus.vn/giam-gia-tu-50-70-tai-hoi-sach-nua-gia.html', 0, 0, 1, 0, '2023-02-14 07:32:10', '2023-02-14 07:32:10'),
(3, 'Giảm giá mùa dịch, khuyến mại 30% cùng nhau đẩy lùi covid19', '2023-02-14__firolcicuolskavrzptr-24-dec4f4bb80c911c865986552c6f47e862f5.jpg', 'http://pnc.com.vn/pnc_info.php?id=421&mode=print', 1, 0, 0, 0, '2023-02-14 07:30:45', '2023-02-14 07:30:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exports`
--

DROP TABLE IF EXISTS `exports`;
CREATE TABLE IF NOT EXISTS `exports` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `w_order_id` int(11) NOT NULL,
  `w_price` int(11) NOT NULL DEFAULT '0',
  `w_qty` int(11) NOT NULL DEFAULT '0',
  `w_time_exports` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exports_w_order_id_index` (`w_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `exports`
--

INSERT INTO `exports` (`id`, `w_order_id`, `w_price`, `w_qty`, `w_time_exports`, `created_at`, `updated_at`) VALUES
(1, 14, 1000000, 30, NULL, '2021-05-25 17:32:53', '2021-05-25 17:40:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

DROP TABLE IF EXISTS `keywords`;
CREATE TABLE IF NOT EXISTS `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keywords_k_slug_unique` (`k_slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT '0',
  `mn_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(2, 'Tin công nghệ', 'tin-cong-nghe', NULL, NULL, NULL, 0, 1, '2020-04-12 03:03:58', '2023-02-14 04:43:49'),
(3, 'Bài viết mới nhất', 'bai-viet-moi-nhat', NULL, NULL, NULL, 0, 1, '2020-04-17 04:04:30', '2023-02-14 04:44:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_02_02_041429_create_categories_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_03_24_201555_alter_column_c_parent_id_in_table_categories', 1),
(31, '2020_03_25_214331_create_list_table_system_pay_table', 1),
(32, '2020_03_27_181534_alter_column_type_pay_in_table_transaction', 1),
(33, '2020_04_14_164245_create_supplieres_table', 2),
(34, '2020_04_15_003305_alter_column_pro_supplier_id_in_table_products', 2),
(35, '2020_04_16_234410_after_column_tst_admin_id_in_table_transaction', 2),
(36, '2021_05_25_233939_create_kho_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `od_transaction_id` int(11) NOT NULL DEFAULT '0',
  `od_product_id` int(11) NOT NULL DEFAULT '0',
  `od_sale` int(11) NOT NULL DEFAULT '0',
  `od_qty` tinyint(4) NOT NULL DEFAULT '0',
  `od_price` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(27, 23, 60, 5, 3, 1234050, '2023-02-15 14:31:59', NULL),
(28, 23, 59, 10, 2, 495000, '2023-02-15 14:31:59', NULL),
(29, 23, 58, 10, 3, 16199100, '2023-02-15 14:31:59', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('phuongnguyen70680@gmail.com', '$2y$10$4YLsBYTs1t.WW4q7u4oYKOQB4xAHGSVkIzdvTq.uQ1DM7tC6NJLM.', '2020-04-25 02:57:21'),
('phuongnguyen70680@gmail.com', '$2y$10$Kht/eKi4SAE8TGSlg9ZzjuXL3PRVOhg5DKs5u.Cy.ejbtA/F0OXIi', '2020-04-25 03:09:18'),
('phuongnguyen70680@gmail.com', '$2y$10$GRFriqGnlA6pgCH7Y59rTeX8VbSx0cOe93MaU/UNqSw2qRPSzhXmS', '2020-05-02 03:07:21'),
('phuongnguyen70680@gmail.com', '$2y$10$4OkOzMtbGv/bPah2VxIxxuW3IeSWwHxFrQ1dbpQ.j4xXLfQtT0O9G', '2020-05-02 03:07:50'),
('phuongnguyen70680@gmail.com', '$2y$10$UHxD4fVm884w4gx65gkHRuoYt5t0lbvfTpHw83UJdqFTf..mh769.', '2020-05-02 03:11:10'),
('phuongnguyen70680@gmail.com', '$2y$10$7bcSsst/vWUYl1A5dkdgqek6GeaVuXKXVKVBzaJEVa3jayfkbCtVK', '2020-05-03 01:59:48'),
('bthuan490@gmail.com', '$2y$10$FcoMADBhwsQxLTar/w9ZE.ReH7dVZKPmR8ua0J7RzoQlxqs6UOK8C', '2020-06-19 11:31:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_histories`
--

DROP TABLE IF EXISTS `pay_histories`;
CREATE TABLE IF NOT EXISTS `pay_histories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ph_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ph_user_id` int(10) UNSIGNED NOT NULL,
  `ph_credit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ph_debit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ph_balance` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ph_meta_detail` text COLLATE utf8mb4_unicode_ci,
  `ph_status` tinyint(4) NOT NULL DEFAULT '0',
  `ph_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `ph_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  KEY `pay_histories_ph_user_id_index` (`ph_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pay_histories`
--

INSERT INTO `pay_histories` (`id`, `ph_code`, `ph_user_id`, `ph_credit`, `ph_debit`, `ph_balance`, `ph_meta_detail`, `ph_status`, `ph_month`, `ph_year`, `created_at`, `updated_at`) VALUES
(1, 'PAYOUT1', 16, 0, 255200, 0, NULL, 1, 2, 2023, '2023-02-06 14:21:41', NULL),
(2, 'PAYOUT2', 17, 0, 107360, 0, NULL, 1, 2, 2023, '2023-02-06 14:37:29', NULL),
(3, 'PAYOUT3', 18, 0, 53289450, 0, NULL, 1, 2, 2023, '2023-02-15 14:31:59', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_ins`
--

DROP TABLE IF EXISTS `pay_ins`;
CREATE TABLE IF NOT EXISTS `pay_ins` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pi_user_id` int(10) UNSIGNED NOT NULL,
  `pi_admin_id` int(10) UNSIGNED NOT NULL,
  `pi_provider` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pi_money` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pi_fee` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pi_amount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pi_meta_detail` text COLLATE utf8mb4_unicode_ci,
  `pi_status` tinyint(4) NOT NULL DEFAULT '0',
  `pi_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `pi_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_outs`
--

DROP TABLE IF EXISTS `pay_outs`;
CREATE TABLE IF NOT EXISTS `pay_outs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `po_user_id` int(10) UNSIGNED NOT NULL,
  `po_transaction_id` int(10) UNSIGNED NOT NULL,
  `po_money` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `po_meta_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_status` tinyint(4) NOT NULL DEFAULT '0',
  `po_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `po_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay_outs_po_user_id_index` (`po_user_id`),
  KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pay_outs`
--

INSERT INTO `pay_outs` (`id`, `po_user_id`, `po_transaction_id`, `po_money`, `po_meta_detail`, `po_status`, `po_month`, `po_year`, `created_at`, `updated_at`) VALUES
(1, 16, 21, 255200, '', 1, 2, 2023, '2023-02-06 14:21:41', NULL),
(2, 17, 22, 107360, '', 1, 2, 2023, '2023-02-06 14:37:29', NULL),
(3, 18, 23, 53289450, '', 1, 2, 2023, '2023-02-15 14:31:59', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT '0',
  `pro_price_entry` int(11) NOT NULL DEFAULT '0' COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT '0',
  `pro_supplier_id` int(11) NOT NULL DEFAULT '0',
  `pro_admin_id` int(11) NOT NULL DEFAULT '0',
  `pro_sale` tinyint(4) NOT NULL DEFAULT '0',
  `pro_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT '0',
  `pro_hot` tinyint(4) NOT NULL DEFAULT '0',
  `pro_active` tinyint(4) NOT NULL DEFAULT '1',
  `pro_pay` int(11) NOT NULL DEFAULT '0',
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `pro_content` text COLLATE utf8mb4_unicode_ci,
  `pro_review_total` int(11) NOT NULL DEFAULT '0',
  `pro_review_star` int(11) NOT NULL DEFAULT '0',
  `pro_age_review` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT '0',
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `pro_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  KEY `products_pro_hot_index` (`pro_hot`),
  KEY `products_pro_active_index` (`pro_active`),
  KEY `products_pro_supplier_id_index` (`pro_supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_file`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `pro_link`) VALUES
(48, 'Ổ cứng SSD Kingston A400 480GB SA400S37/480G', 'o-cung-ssd-kingston-a400-480gb-sa400s37480g', 1668000, 0, 2, 2, 0, 40, '', '2023-02-14__250-22503-image.jpg', 1, 1, 1, 0, NULL, 'Thông số kĩ thuật\r\nNhà sản xuất	Kingston (USA)\r\nModel	SA400S37/480G\r\nChuẩn giao tiếp	Sata III 6 Gbps\r\nKích thước	2.5 inch, 6.8 mm\r\nDung lượng	480 GB\r\nRandom 4k	 \r\nĐọc tuần tự	500 MB/s\r\nGhi tuần tự	450 MB/s\r\nMTBF	1.000.000 h\r\nNAND Flash	TLC\r\nBảo hành	36 tháng', 0, 0, 0, '2023-02-14 07:36:08', 30, NULL, NULL, 0, '2023-02-14 08:19:31', NULL),
(49, 'Ram laptop Kingston 4GB DDR4 3200 MHz', 'ram-laptop-kingston-4gb-ddr4-3200-mhz', 700000, 0, 1, 2, 0, 10, '', '2023-02-14__250-38390-17478-kingston-4gb-3200mhz-ddr4-non-ecc-cl22-sodimm-1rx16.jpg', 0, 0, 1, 0, NULL, 'Sản Phẩm\r\n\r\nBộ nhớ trong RAM\r\n\r\nHãng sản xuất\r\n\r\nKingston \r\n\r\nModel\r\n\r\nfor Notebook\r\n\r\nLoại RAM\r\n\r\nDDR4\r\n\r\nDung lượng\r\n\r\n4GB\r\n\r\nBus\r\n\r\n3200Mhz\r\n\r\nĐộ trễ\r\n\r\nCL22\r\n\r\nĐiện áp\r\n\r\n1.2V\r\n\r\nTản nhiệt\r\n\r\nKhông\r\n\r\nCông nghệ RAM', 0, 0, 0, '2023-02-14 07:38:32', 20, NULL, NULL, 0, NULL, NULL),
(50, 'Mainboard Asus PRIME B660M-A D4', 'mainboard-asus-prime-b660m-a-d4', 2500000, 0, 7, 2, 0, 25, '', '2023-02-14__250-42519-mainboard-asus-prime-b660m-a-d4-1.jpg', 1, 1, 1, 0, NULL, 'Sản phẩm\r\n\r\nBo mạch chủ\r\n\r\nTên Hãng\r\n\r\nAsus\r\n\r\nModel\r\n\r\nPRIME B660M-A D4\r\n\r\nCPU hỗ trợ\r\n\r\nIntel\r\n\r\nChipset\r\n\r\nB660\r\n\r\nRAM hỗ trợ\r\n\r\n4 x DIMM, Tối đa 128GB, DDR4\r\n5333 (OC) / 5000 (OC) / 4800 (OC) / 4600 (OC) / 4400 (OC) / 4266 (OC) / 4000 (OC) / 3733 (OC) / 3600 (OC) / 3466 (OC) / 3400 (OC) / 3333 (OC) / 3200/3000/2933/2800/2666/2400/22133 Non-ECC, Un-buffer Memory *\r\nKhe cắm mở rộng\r\n\r\nBộ xử lý thế hệ thứ 12 của Intel ®\r\n1 x khe cắm PCIe 4.0 / 3.0 x16\r\nBộ chip Intel ® B660 *\r\n1 x khe cắm PCIe 3.0 x16 (hỗ trợ chế độ x4)\r\n1 x khe cắm PCIe 3.0 x16 (hỗ trợ chế độ x1)\r\n* Hỗ trợ Bộ nhớ Intel ® Optane Dòng H trên khe cắm PCIe gắn PCH\r\n \r\nỔ cứng hỗ trợ\r\n\r\nHỗ trợ 2 khe cắm x M.2 và 4 x cổng SATA 6Gb / s\r\n\r\nTotal hỗ trợ 2 khe cắm x M.2 và 4 cổng SATA 6Gb / s *\r\nBộ xử lý thế hệ thứ 12 của Intel ®\r\nKhe cắm M.2_1 (Phím M), loại 2242/2260/2280\r\n- Bộ xử lý thế hệ thứ 12 của Intel hỗ trợ chế độ PCIe 4.0 x4.\r\nBộ chip Intel ® B660 **\r\nKhe cắm M.2_2 (Phím M), kiểu 2242/2260/2280 (hỗ trợ chế độ PCIe 4.0 x4) *\r\n4 x cổng SATA 6Gb / s\r\n* Công nghệ lưu trữ nhanh Intel ® hỗ trợ SATA RAID 0/1/5/10.\r\n** Công nghệ Lưu trữ Nhanh Intel ® hỗ trợ Bộ nhớ Intel ® Optane Dòng H trên các khe cắm M.2 được gắn PCH.\r\nCổng kết nối (Internal)\r\n\r\nLiên quan đến Quạt và Làm mát\r\nĐầu cắm quạt CPU 1 x 4 chân\r\n1 x đầu cắm Quạt OPT CPU 4 chân\r\nĐầu cắm Quạt khung gầm 2 x 4 chân\r\nLiên quan đến quyền lực\r\n1 x đầu nối Nguồn chính 24 chân\r\nĐầu nối nguồn 1 x 8 chân + 12V\r\nLiên quan đến lưu trữ\r\n2 x khe cắm M.2 (Phím M)\r\n4 x cổng SATA 6Gb / s\r\nUSB\r\n2 x đầu cắm USB 3.2 Gen 1 hỗ trợ thêm 4 cổng USB 3.2 Gen 1\r\n1 x đầu nối USB 3.2 Gen 1 (hỗ trợ USB Type-C®)\r\n2 đầu cắm USB 2.0 hỗ trợ thêm 4 cổng USB 2.0\r\n1 x đầu cắm USB 2.0 hỗ trợ 1 cổng USB 2.0\r\nĐiều khoản khác\r\n3 x tiêu đề AURA Addressable Gen 2\r\n1 x đầu cắm AURA RGB\r\n1 x Xóa tiêu đề CMOS\r\n1 x tiêu đề Cổng COM\r\n1 x Đầu cắm âm thanh bảng điều khiển phía trước (AAFP)\r\n1 x tiêu đề LPT\r\n1 x đầu ra S / PDIF\r\n1 x tiêu đề SPI TPM (14-1pin)\r\n1 x 20-3 pin Tiêu đề bảng điều khiển hệ thống với chức năng xâm nhập khung\r\nCổng kết nối (Back Panel)\r\n\r\n2 x cổng USB 3.2 Gen 2 (2 x Type-A)\r\n4 x cổng USB 2.0 (4 x Type-A)\r\n1 x DisplayPort\r\n2 x cổng HDMI ®\r\n1 x Cổng Ethernet Intel ® 1Gb\r\n3 x giắc cắm âm thanh\r\n1 x Cổng kết hợp bàn phím / chuột PS / 2\r\nLAN / Wireless\r\n\r\n1 x Intel® 1Gb Ethernet\r\n\r\nKích cỡ\r\n\r\nmicroATX 24,4cm\r\nx 24,4cm', 0, 0, 0, '2023-02-14 07:39:45', 30, NULL, NULL, 0, '2023-02-14 08:19:33', NULL),
(51, 'Thùng máy/ Case Sama S1 (No Power) - Hỗ trợ mainboard: Micro-ATX, ATX - Khay mở rộng tối đa: 2 x 3.5\", - USB: , 2 x USB 2.0 Thùng máy/ Case Sama S1 (No Power)', 'thung-may-case-sama-s1-no-power-ho-tro-mainboard-micro-atx-atx-khay-mo-rong-toi-da-2-x-35-usb-2-x-usb-20-thung-may-case-sama-s1-no-power', 420000, 0, 12, 2, 0, 0, '', '2023-02-14__vc.png', 0, 0, 1, 0, NULL, '<h2>Đ&aacute;nh gi&aacute; Th&ugrave;ng m&aacute;y/ Case Sama S1 (No Power).</h2>\r\n\r\n<p>C&aacute;c sản phẩm của Sama gồm c&oacute; vỏ case v&agrave; PSU với c&aacute;c loại sản phẩm c&oacute; chất lượng v&agrave; gi&aacute; th&agrave;nh từ thấp tới cao. Để hướng tới đối tượng người d&ugrave;ng ph&acirc;n kh&uacute;c phổ th&ocirc;ng h&atilde;ng đ&atilde; tr&igrave;nh l&agrave;ng d&ograve;ng sản phẩm th&ugrave;ng m&aacute;y / Case Sama S series với bộ 6 sản phẩm S1, S2, S3, S4, S5, S6. Trong b&agrave;i viết n&agrave;y Phong vũ xin giới thiệu đến c&aacute;c bạn&nbsp;th&ugrave;ng m&aacute;y/ Case Sama S1.</p>\r\n\r\n<p><img alt=\"Thùng máy/ Case Sama S1 (No Power)\" src=\"https://tmp.phongvu.vn/wp-content/uploads/2018/12/2353_1496304431-5.jpg\" /></p>\r\n\r\n<h3>Chi tiết sản phẩm:</h3>\r\n\r\n<p>Case Sama S1 c&oacute; thiết kế tương đối hầm hố với những nh&aacute;t xẻ khiến th&acirc;n th&ugrave;ng m&aacute;y v&agrave; mặt nạ trở n&ecirc;n gai g&oacute;c hơn với mọi người d&ugrave;ng n&ecirc;n rất dễ thao t&aacute;c v&agrave; sử dụng. Th&ecirc;m v&agrave;o đ&oacute; đ&egrave;n LED xanh lập l&ograve;e nửa dưới th&ugrave;ng m&aacute;y cũng khiến kh&ocirc;ng gian l&agrave;m việc giải tr&iacute; kh&ocirc;ng c&ograve;n tẻ nhạt. Tuy vậy bề mặt m&aacute;y vẫn đen nh&aacute;m truyền thống hướng tới những kh&aacute;ch h&agrave;ng ưa th&iacute;ch sử đơn giản v&agrave; kh&ocirc;ng c&oacute; y&ecirc;u cầu cao với bộ phận case m&aacute;y t&iacute;nh n&agrave;y.</p>\r\n\r\n<p><img alt=\"Thùng máy/ Case Sama S1 (No Power)\" src=\"https://tmp.phongvu.vn/wp-content/uploads/2018/12/2353_1496205930-3.jpg\" /></p>\r\n\r\n<ul>\r\n	<li>Được l&agrave;m từ chất liệu th&eacute;p chống rỉ cao cấp, độ bền cao, chống trầy xước, va đập, bảo vệ tốt nhất c&oacute; c&aacute;c linh kiện m&aacute;y t&iacute;nh b&ecirc;n trong.</li>\r\n	<li>K&iacute;ch thước gọn nhẹ (Mid Tower) , gi&uacute;p người d&ugrave;ng c&oacute; thể di chuyển dễ d&agrave;ng, kh&ocirc;ng chiếm nhiều kh&ocirc;ng gian b&agrave;n m&aacute;y t&iacute;nh, giảm tối đa khối lượng khi lắp th&ecirc;m những linh kiện b&ecirc;n trong.</li>\r\n	<li>Được trang bị đầy đủ cổng kết nối ở mặt trước như cổng USB 2.0, jack cắm tai nghe, micro.</li>\r\n	<li>C&aacute;c mặt c&ograve;n lại của Case Sama S1 được thiết kế dạng lưới kết hợp c&ugrave;ng quạt PC cho khả năng tản nhiệt, l&agrave;m m&aacute;t c&aacute;c linh kiện b&ecirc;n trong, gi&uacute;p m&aacute;y t&iacute;nh hoạt động với hiệu năng cao nhất.</li>\r\n	<li>Tuy được thiết kế kh&aacute; nhỏ gọn nhưng b&ecirc;n trong của Case Sama S1 lại kh&aacute; rộng. C&aacute;c chi tiết được l&agrave;m kh&eacute;o l&eacute;o v&agrave; khoa học để tận dụng tối đa được kh&ocirc;ng gian b&ecirc;n trong sản phẩm, gi&uacute;p cho người d&ugrave;ng c&oacute; thể n&acirc;ng cấp chiếc PC của m&igrave;nh l&ecirc;n cao hơn ph&ugrave; hợp với nhu cầu sử dụng của từng người.</li>\r\n	<li>Với gi&aacute; cả rất phải chăng l&agrave; kh&aacute;ch h&agrave;ng c&oacute; cho m&igrave;nh một sản phẩm c&oacute; chất lượng cao, thiết kế v&ocirc; c&ugrave;ng đẹp mắt.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Thùng máy/ Case Sama S1 (No Power)\" src=\"https://tmp.phongvu.vn/wp-content/uploads/2018/12/2353_1496205930-4.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>M&ocirc;̣t s&ocirc;́ kinh nghi&ecirc;̣m chọn mua vỏ case :</h3>\r\n\r\n<ul>\r\n	<li>Kích thước vỏ c&acirc;y phải vừa vặn với những linh ki&ecirc;̣n bạn x&acirc;y dựng cho chi&ecirc;́c PC của mình. M&ocirc;̣t chi&ecirc;́c case quá nhỏ khi k&ecirc;́t hợp với m&ocirc;̣t chi&ecirc;́c VGA cỡ lớn 3Fan là đi&ecirc;̀u kh&ocirc;ng th&ecirc;̉.</li>\r\n	<li>Case c&acirc;̀n phải có đủ các c&ocirc;̉ng ăn chơi như USB 3.0, USB 2.0, jack 3.5mm</li>\r\n	<li>&rdquo; Phải mát &rdquo; : bạn n&ecirc;n nghi&ecirc;n cứu kỹ chiếc Case định mua xem thiết kế đối lưu c&oacute; tốt kh&ocirc;ng, lắp đặt them quạt tản nhiệt v&agrave;, tản CPU c&oacute; thuận tiện kh&ocirc;ng với mục đ&iacute;ch nhiệt độ linh kiện c&agrave;ng thấp c&agrave;ng tốt.</li>\r\n	<li>Kh&ocirc;ng nhất thiết phải đẹp nhưng &rdquo; n&ecirc;n&rdquo; đẹp. Chắc chắn rồi, kh&ocirc;ng ai muốn chọn mua 1 vỏ case xấu cả. Sau khi đ&aacute;p ứng được cả 3 nguy&ecirc;n tắc kể tr&ecirc;n để tối đa t&iacute;nh thực dụng của th&ugrave;ng m&aacute;y, h&atilde;y bắt đầu nghĩ tới một thiết kế độc đ&aacute;o, m&agrave;u sắc ph&ugrave; hợp với g&oacute;c c&aacute; nh&acirc;n.</li>\r\n</ul>', 0, 0, 0, '2023-02-14 08:19:13', 10, NULL, NULL, 0, NULL, NULL),
(52, 'Card màn hình ASUS TUF Gaming GeForce', 'card-man-hinh-asus-tuf-gaming-geforce', 6500000, 0, 10, 2, 0, 17, '', '2023-02-14__vga.png', 1, 0, 1, 0, NULL, '<h2><strong>Tản nhiệt hiệu quả với 2 quạt</strong></h2>\r\n\r\n<p>Card đồ họa&nbsp;<strong>ASUS TUF Gaming GeForce GTX 1660 SUPER OC Edition</strong>&nbsp;với kết cấu đơn giản v&agrave; c&aacute;c t&iacute;nh năng được tinh giản những v&acirc;̃n kh&ocirc;ng ảnh hưởng đ&ecirc;́n hi&ecirc;̣u năng, hai quạt tản nhiệt chống bụi mạnh mẽ cùng với c&aacute;c linh kiện PCB được lắp r&aacute;p bằng qu&aacute; tr&igrave;nh sản xuất tự động h&oacute;a. Do đ&oacute; chiếc card đồ họa n&agrave;y được lựa chọn&nbsp;để trở th&agrave;nh thế hệ mới nh&acirc;́t của cạc đồ họa hi&ecirc;̣u năng, với mục đ&iacute;ch tạo ra một cỗ m&aacute;y c&oacute; hiệu suất bền bỉ.</p>\r\n\r\n<p><img alt=\"Asus-TUF-GTX-1660-Super-OC\" src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/11/Asus-TUF-GTX-1660-Super-OC.jpg\" /></p>\r\n\r\n<h2><strong>C&ocirc;ng nghệ chống bụi&nbsp;IP5X</strong></h2>\r\n\r\n<p>Bụi được xem l&agrave; t&aacute;c nh&acirc;n g&acirc;y giảm hiệu suất v&agrave; l&agrave;m hỏng quạt. Đối với hệ thống quạt tản nhiệt th&ocirc;ng thường th&igrave; việc phải th&aacute;o quạt ra để vệ sinh phần cứng b&ecirc;n trong dường như l&agrave; một điều bất khả thi. Quạt tản nhiệt mới được chứng nhận IP5X từ c&aacute;c chuy&ecirc;n gia cho ph&eacute;p&nbsp;giữ cho c&aacute;c hạt bụi lu&ocirc;n ở b&ecirc;n ngo&agrave;i vỏ. V&igrave; thế việc vệ sinh quạt sẽ trở n&ecirc;n đơn giản hơn với bạn.</p>\r\n\r\n<p><img alt=\"ASUS-TUF-Gaming-GeForce-GTX-1650-4GB-GDDR5-1\" src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/11/ASUS-TUF-Gaming-GeForce-GTX-1650-4GB-GDDR5-1.jpg\" /></p>\r\n\r\n<h2><strong>C&ocirc;ng nghệ sản xuất Auto&minus;Extreme</strong></h2>\r\n\r\n<p>T&acirc;́t cả các m&acirc;̃u card đ&ocirc;̀ họa của ASUS đ&ecirc;̀u được sản xu&acirc;́t tr&ecirc;n d&acirc;y chuy&ecirc;̀n hi&ecirc;̣n đại (tự đ&ocirc;̣ng hóa) theo ti&ecirc;u chuẩn c&ocirc;ng nghệ&nbsp;Auto-Extreme, nhằm đem lại đ&ocirc;̣ chính xác cao trong quá trình gia c&ocirc;ng.&nbsp;Điều n&agrave;y giảm được biến dạng do nhiệt l&ecirc;n c&aacute;c linh kiện v&agrave; tr&aacute;nh được việc phải sử dụng c&aacute;c h&oacute;a chất tẩy rửa mạnh, do vậy &iacute;t g&acirc;y ra t&aacute;c động tới m&ocirc;i trường, giảm ti&ecirc;u thụ điện năng sản xuất v&agrave; sản phẩm đạt độ tin cậy cao hơn.</p>\r\n\r\n<p><img alt=\"ASUS-TUF-Gaming-GeForce-GTX-1650-4GB-GDDR5-3\" src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/11/ASUS-TUF-Gaming-GeForce-GTX-1650-4GB-GDDR5-3.jpg\" /></p>\r\n\r\n<h2><strong>Độ bền v&agrave; độ ổn đinh cao</strong></h2>\r\n\r\n<p>Mỗi card đồ họa&nbsp;<strong>ASUS TUF Gaming GeForce GTX 1660 SUPER OC Edition</strong>&nbsp;trước khi được b&agrave;n giao v&agrave; đưa tới cho người sử dụng đều phải đ&aacute;p ứng ti&ecirc;u chuẩn hiệu năng v&agrave; độ tin cậy cực kỳ nghi&ecirc;m ngặt. C&aacute;c b&agrave;i thử nghiệm về kiểm tra hiệu năng v&agrave; sức chịu đựng được thực hiện tr&ecirc;n c&aacute;c tựa game phổ biến hiện nay như PlayerUnknown&#39;s Battlegrounds, Fortnite, Li&ecirc;n minh huyền thoại v&agrave; Overwatch. Ngo&agrave;i ra, ASUS cũng thực hiện c&aacute;c thử nghiệm độ tin cậy gồm thử nghiệm độ ổn định 144 giờ v&agrave; chạy một loạt thử nghiệm 3Dmark nhằm đảm bảo card vận h&agrave;nh tốt khi được &eacute;p chạy tới c&aacute;c giới hạn.</p>', 0, 0, 0, '2023-02-14 08:22:46', 20, NULL, NULL, 0, NULL, NULL),
(53, 'Chuột HP M160 Gaming RGB (Đen)', 'chuot-hp-m160-gaming-rgb-den', 150000, 0, 3, 2, 0, 10, '', '2023-02-14__c.png', 0, 0, 1, 0, NULL, '<h2><strong>Giới thiệu Chuột HP M160 Gaming RGB (Đen)</strong></h2>\r\n\r\n<p>Chuột Gaming M160 l&agrave; d&ograve;ng chuột chơi Game được sản xuất từ h&atilde;ng HP danh tiếng, với thiết kế chuột vừa vặn th&iacute;ch hợp cho cả chơi game v&agrave; d&ugrave;ng văn ph&ograve;ng c&ugrave;ng t&ocirc;n m&agrave;u đen, bề mặt chuột l&agrave;m từ chất liệu nhựa cầm nắm v&ocirc; c&ugrave;ng chắc tay v&agrave; ph&ugrave; hợp với nhiều dạng tay người.</p>\r\n\r\n<p><img alt=\"Chuột HP M160 Gaming RGB (Đen)\" src=\"https://product.hstatic.net/200000420363/product/hp-m160-5_713d75cc1b5d424d984955fa74988b8d.jpg\" style=\"height:467px; width:700px\" /></p>\r\n\r\n<p>Chuột Gaming M160 được t&iacute;ch hợp hệ thống led RGB nhiều m&agrave;u tự thay đổi, led được bố tr&iacute; tại nhiều vị tr&iacute; kh&aacute;c nhau tr&ecirc;n th&acirc;n chuột, con lăn v&agrave; đu&ocirc;i chuột, tạo cảm gi&aacute;c đặc biệt v&agrave; kh&aacute;c biệt so với nhiều d&ograve;ng chuột chơi Game c&ugrave;ng tầm gi&aacute;</p>\r\n\r\n<p><img alt=\"Chuột HP M160 Gaming RGB (Đen)\" src=\"https://product.hstatic.net/200000420363/product/hp-m160-7_21fdcc0504234a429cca0dbe38ad2864.jpg\" style=\"height:467px; width:700px\" /></p>\r\n\r\n<p>L&agrave; d&ograve;ng chuột quang được tạo n&ecirc;n từ h&atilde;ng, với độ nhạy v&agrave; khả năng sử dụng tốt trong nhiều nhu cầu kh&aacute;c nhau, đặc biết l&agrave; chơi Game. Chiều d&agrave;i 1.3m tạo kh&ocirc;ng gian thoải m&aacute;i v&agrave; c&oacute; thể kết nối với những thiết bị ở khoangr c&aacute;ch ca. Kết nối qua cổng USB v&ocirc; c&ugrave;ng th&ocirc;ng dụng hiện nay.</p>\r\n\r\n<p><img alt=\"Chuột HP M160 Gaming RGB (Đen)\" src=\"https://product.hstatic.net/200000420363/product/hp-m160-6_0d672cc3455d4ec5bb6b24100c1b731a.jpg\" style=\"height:467px; width:700px\" /></p>\r\n\r\n<p>Được t&iacute;ch hợp độ ph&acirc;n giải DPI với mức cố định 1000, đảm bảo 1 mức sử dụng v&ocirc; c&ugrave;ng ph&ugrave; hợp với đa số người d&ugrave;ng. Khả năng tương th&iacute;ch của chuột khi c&oacute; hỗ trợ đ&atilde; số nhiều hệ điều h&agrave;nh kh&aacute;c nhau, n&oacute;i c&aacute;ch kh&aacute;c th&igrave; chuột chỉ cần cắm v&agrave; sử dụng, kh&ocirc;ng phải qua bất kỳ phần mềm n&agrave;o kh&aacute;c.</p>\r\n\r\n<p><img alt=\"Chuột HP M160 Gaming RGB (Đen)\" src=\"https://product.hstatic.net/200000420363/product/hp-m160-8_8d0b7f4f34964d8ebc39dbdc392a9f2b.jpg\" style=\"height:467px; width:700px\" /></p>\r\n\r\n<p>Chuột HP M160 Gaming RGB trang bị Led nhiều khu vực</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Chuột HP M160 Gaming RGB (Đen)\" src=\"https://product.hstatic.net/200000420363/product/hp-m160-9_5d14146397794dedae28f2e3d1907d20.jpg\" style=\"height:467px; width:700px\" /></p>\r\n\r\n<p>Chuột HP M160 Gaming RGB hỗ trợ kết nối USB th&ocirc;ng dụng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Số n&uacute;t bấm: 3 ph&iacute;m</p>\r\n\r\n<p>C&acirc;n nặng: 110 gam</p>\r\n\r\n<p>K&iacute;ch thước: 118.5 x 64 x 37mm</p>', 0, 0, 0, '2023-02-14 08:27:34', 20, NULL, NULL, 0, NULL, NULL),
(54, 'Màn hình LCD 27” Samsung Odyssey G3 LF27G35TFWEXXV FHD VA 144Hz 1ms Gaming Chính Hãng', 'man-hinh-lcd-27-samsung-odyssey-g3-lf27g35tfwexxv-fhd-va-144hz-1ms-gaming-chinh-hang', 4700000, 0, 14, 2, 0, 0, '', '2023-02-14__mh.png', 0, 0, 1, 0, NULL, '<ul>\r\n	<li>Hãng sản xu&acirc;́t Samsung</li>\r\n	<li>K&iacute;ch thước 27 inch</li>\r\n	<li>Tỷ lệ khung h&igrave;nh 16:9</li>\r\n	<li>Tấm nền VA</li>\r\n	<li>Độ s&aacute;ng 250cd/m2</li>\r\n	<li>Contrast Ratio 4000:1(Typical)</li>\r\n	<li>Độ ph&acirc;n giải: Full HD 1920 x 1080@144Hz</li>\r\n	<li>Thời gian đ&aacute;p ứng 1ms (GTG)</li>\r\n	<li>Cổng kết nối: 1x HDMI (1.4) 2x Display Port (DP)</li>\r\n</ul>', 0, 0, 0, '2023-02-14 08:29:04', 10, NULL, NULL, 0, NULL, NULL),
(55, 'Tai nghe RKX 7.1 Gaming Không hộp(Đen)', 'tai-nghe-rkx-71-gaming-khong-hopden', 220000, 0, 17, 2, 0, 0, '', '2023-02-14__t.png', 0, 0, 1, 0, NULL, '<ul>\r\n	<li>T&iacute;ch hợp &acirc;m thanh th&ocirc;ng qua usb 7.1 gi&uacute;p người d&ugrave;ng cảm nhận s&acirc;u hơn, chắc hơn &acirc;m thanh khi đang chơi game, nghe nhạc, xem phim,&hellip;</li>\r\n	<li>V&ograve;ng led 7 m&agrave;u nằm tr&ecirc;n mỗi b&ecirc;n tai nghe, bao quanh logo v&agrave; dải đ&egrave;n led chạy v&ograve;ng tr&ograve;n tr&ecirc;n tai nghe t&ocirc; th&ecirc;m vẻ sang trọng.</li>\r\n	<li>Ốp tai nghe kh&aacute; bền, bao được hết tai gi&uacute;p ch&uacute;ng ta đeo l&acirc;u kh&ocirc;ng bị đau v&agrave; n&oacute;ng tai bởi độ đ&agrave;n hồi b&ecirc;n trong.</li>\r\n	<li>Micro d&agrave;i gi&uacute;p người d&ugrave;ng c&oacute; thể t&ugrave;y chỉnh nếu muốn</li>\r\n	<li>Khung tai nghe được cố định bởi 2 thanh sắt bọc cao su rất chắc chắn v&agrave; đệm dưới l&agrave; lớp xốp để tr&aacute;nh bị đau khi sử dụng l&acirc;u.</li>\r\n</ul>', 0, 0, 0, '2023-02-14 13:24:03', 200, NULL, NULL, 0, NULL, NULL),
(56, '(16GB DDR4 2x8G 3333) AORUS RGB Memory RAM', '16gb-ddr4-2x8g-3333-aorus-rgb-memory-ram', 3400000, 0, 1, 2, 0, 25, '', '2023-02-15__ram1.png', 1, 0, 1, 0, NULL, '<h2><strong>Th&ocirc;ng số kỹ thuật</strong></h2>\r\n\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>H&atilde;ng sản xuất&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Gigabyte</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Model&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>AORUS RGB DDR4 16GB (2&times; 8GB) 3333 MHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Dung Lượng&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>16GB Kit (2 x 8GB)&nbsp;3333 MHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Loại Ram&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>DDR4</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><br />\r\n			<strong>SPD&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>19-19-19-43 Cho nền tảng Intel<br />\r\n			20-19-19-43 Cho nền tảng AMD<br />\r\n			Tốc độ SPD : 2666 MHz<br />\r\n			Điện &aacute;p SPD :1.2 V</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Pin&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>288</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Điểm tốc độ&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>PC4 26600 (3333 MHz)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Độ trễ&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>18-20-20-40</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>BUS&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>3333 MHz</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Điện &aacute;p&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>1.35 V</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>XMP 2.0&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute; hỗ trợ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Tản nhiệt&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute; - AORUS X&aacute;m</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>LED&nbsp;</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>C&oacute; RGB Fusion 2.0</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2><strong>Đ&aacute;nh gi&aacute; chi tiết (16GB DDR4 2x8G 3333) AORUS RGB Memory RAM</strong></h2>\r\n\r\n<p>Thiết kế ti&ecirc;u chuẩn, độ bền kinh ngạc v&agrave; tương th&iacute;ch ho&agrave;n hảo tr&ecirc;n hầu hết c&aacute;c d&ograve;ng&nbsp;<a href=\"https://gearvn.com/collections/mainboard-bo-mach-chu\" target=\"_blank\">main m&aacute;y t&iacute;nh</a>&nbsp;c&oacute; tr&ecirc;n thị trương như&nbsp;Mainboard&nbsp;Intel 100 Series,Intel 200 Series,Intel 300 Series,Intel 400 Series,Intel X299 Series tr&ecirc;n thị trường.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-16gb-ddr4-2x8g-3333-aorus-rgb-memory-ram-1_dcad7eca0e504490b697fc663caba6a5_grande.jpg\" /></p>\r\n\r\n<h3><strong>Khả năng &eacute;p xung cực tốt, hỗ trợ XMP 2.0</strong></h3>\r\n\r\n<p>Mọi ứng dụng trở n&ecirc;n mượt m&agrave; v&agrave; tăng tốc tối đa khi sử dụng kit ram n&agrave;y. Hỗ trợ XMP 2.0 tối ưu nhất cho hệ thống của bạn.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-16gb-ddr4-2x8g-3333-aorus-rgb-memory-ram-2_54db2a7b16454eb4b6f7967283018494_grande.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Nhiều t&iacute;nh năng, LED RGB đẹp mắt</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chip nhớ chất lượng cao đi k&egrave;m khả năng vận h&agrave;nh bền bỉ đ&atilde; trải qua kiểm tra nghi&ecirc;m ngặt của c&aacute;c kĩ sư. Sản phẩm c&ograve;n nổi trội bởi khả năng điều chỉnh Led RGB Fusion khiến bộ m&aacute;y của bạn đẹp hơn bao giờ hết.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-16gb-ddr4-2x8g-3333-aorus-rgb-memory-ram-3_e259997027df45cfabadd495516a0d02_grande.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000026716/file/gearvn-16gb-ddr4-2x8g-3333-aorus-rgb-memory-ram-5_ed99bcd58db647f795ff00db8f4de934_grande.png\" /></p>\r\n\r\n<h3><strong>K&iacute;ch thước ti&ecirc;u chuẩn dễ d&agrave;ng ph&ugrave; hợp với nhiều Case m&aacute;y , tối ưu khả năng tản nhiệt cho PC của bạn&nbsp;</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>K&iacute;ch thước cực k&igrave; nhỏ gọn , nh&agrave; sản xuất đ&atilde; tối ưu gi&uacute;p bạn lắp vừa v&agrave;o nhiều Case m&aacute;y cũng như y&ecirc;n t&acirc;m về khả năng tản nhiệt cho PC của bạn.</p>', 0, 0, 0, '2023-02-15 05:48:16', 100, NULL, NULL, 0, NULL, NULL),
(57, 'SSD Kingston KC3000 512GB M.2 PCIe gen 4 NVMe', 'ssd-kingston-kc3000-512gb-m2-pcie-gen-4-nvme', 3559000, 0, 2, 2, 0, 30, '', '2023-02-15__ssd.png', 1, 0, 1, 0, NULL, '<h2><strong>SSD Kingston KC3000 512GB M.2 PCIe gen 4 NVMe</strong></h2>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"3\" cellspacing=\"0\" id=\"tblGeneralAttribute\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Chuẩn kết nối</strong></td>\r\n			<td>NVMe PCIe 4.0</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Dung lượng</strong></td>\r\n			<td>512GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Bộ điều khiển</strong></td>\r\n			<td>Phison E18</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>NAND</strong></td>\r\n			<td>3D TLC</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tốc độ đọc ghi tuần tự</strong></td>\r\n			<td>7.000/3.900MB/gi&acirc;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Tốc độ đọc ghi 4K</strong></td>\r\n			<td>L&ecirc;n đến 450.000/900.000 IOPS</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>TBW</strong></td>\r\n			<td>400TBW</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Điện năng ti&ecirc;u thụ</strong></td>\r\n			<td>Nghỉ 5W / Trung b&igrave;nh 0,34mW / Đọc 2,7W (TỐI ĐA) / Ghi 4,1W (TỐI ĐA)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nhiệt độ bảo quản</strong></td>\r\n			<td>-40&deg;C~85&deg;C</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Nhiệt độ vận h&agrave;nh</strong></td>\r\n			<td>0&deg;C~70&deg;C</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>K&iacute;ch thước</strong></td>\r\n			<td>80mm x 22mm x 2,21mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Trọng lượng</strong></td>\r\n			<td>7g</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ rung hoạt động</strong></td>\r\n			<td>Tối đa 2,17G (7-800Hz)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Độ rung khi kh&ocirc;ng hoạt động</strong></td>\r\n			<td>Tối đa 20G (20-1000Hz)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>MTBF (Tuổi thọ trung b&igrave;nh)</strong></td>\r\n			<td>1.800.000 giờ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2><strong>Đ&aacute;nh gi&aacute; chi tiết&nbsp;</strong><strong>SSD Kingston KC3000 512GB M.2 PCIe gen 4 NVMe</strong></h2>\r\n\r\n<h3><strong>Chuẩn mới đem lại tốc độ mới</strong></h3>\r\n\r\n<p>Được trang bị chuẩn NVMe PCIe 4.0 mới nhất, SSD&nbsp;<strong>Kingston KC3000</strong>&nbsp;cho tốc độ đọc/ghi lần lượt l&ecirc;n đến 7000/7000 MB/s đem lại khả năng đọc, truyền tải tệp tin vượt trội với những&nbsp;<a href=\"https://gearvn.com/collections/ssd-o-cung-the-ran\">SSD</a>&nbsp;chuẩn cũ.</p>\r\n\r\n<p><img alt=\"GEARVN.COM - SSD Kingston KC3000 512GB M.2 PCIe gen 4 NVMe (SKC3000S/512G)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ssd-kingston-kc3000-m-2-pcie-gen-4-nvme-3_8abd8f48aa3b4a65ba9d584696f23837_1024x1024.jpg\" /></p>\r\n\r\n<h3><strong>Thiết kế nhỏ gọn, linh hoạt</strong></h3>\r\n\r\n<p>SSD Kingston&nbsp;KC3000 sở hữu thiết kế M.2 nhỏ gọn gi&uacute;p cho chiếc SSD c&oacute; thể ph&ugrave; hợp với c&aacute;c mainboard c&oacute; k&iacute;ch thước nhỏ (SFF) tr&ecirc;n&nbsp;<a href=\"https://gearvn.com/pages/pc-gvn\">PC Gaming</a>&nbsp;hay bao gồm cả&nbsp;<a href=\"https://gearvn.com/pages/laptop\">laptop</a>.</p>\r\n\r\n<p><img alt=\"GEARVN.COM - SSD Kingston KC3000 512GB M.2 PCIe gen 4 NVMe (SKC3000S/512G)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ssd-kingston-kc3000-m-2-pcie-gen-4-nvme-4_4bbb4c8daec44978a0aadd76e97367e2_1024x1024.jpg\" /></p>\r\n\r\n<h3><strong>Bề mặt tản nhiệt tối ưu</strong></h3>\r\n\r\n<p>Bề mặt của&nbsp;<a href=\"https://gearvn.com/collections/ssd-480-512gb\" target=\"_blank\">SSD 512GB</a>&nbsp;Kingston KC3000 được l&agrave;m từ chất liệu nh&ocirc;m graphene mỏng nhẹ, gi&uacute;p cho khả năng tho&aacute;t nhiệt vượt trội cho hiệu suất bền bỉ với hiệu năng tối đa.</p>\r\n\r\n<p><img alt=\"GEARVN.COM - SSD Kingston KC3000 512GB M.2 PCIe gen 4 NVMe (SKC3000S/512G)\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ssd-kingston-kc3000-m-2-pcie-gen-4-nvme-5_e9155ac4b2c547ffbd0dcbddeaf60b18_1024x1024.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<form action=\"https://gearvn.com/account/contact\" method=\"post\">\r\n<p>Mua h&agrave;ng online với nhiều ưu đ&atilde;i hơn tại GEARVN</p>\r\n</form>', 0, 0, 0, '2023-02-15 05:50:23', 20, NULL, NULL, 0, NULL, NULL),
(58, 'Intel Core i9 13900K / 3.0GHz Turbo 5.8GHz / 24 Nhân 32 Luồng / 36MB / LGA 1700', 'intel-core-i9-13900k-30ghz-turbo-58ghz-24-nhan-32-luong-36mb-lga-1700', 17999000, 0, 5, 2, 0, 10, '', '2023-02-15__cpu1.png', 2, 0, 1, 1, NULL, '<h3><strong>Tổng quan thiết kế</strong></h3>\r\n\r\n<p><a href=\"https://gearvn.com/collections/cpu-bo-vi-xu-ly\" target=\"_blank\">CPU</a>&nbsp;<strong>Intel Core i9 13900K</strong>&nbsp;l&agrave;&nbsp;<a href=\"https://gearvn.com/collections/cpu-intel-13th-gen\" target=\"_blank\">CPU thế hệ thứ 13</a>&nbsp;của Intel. L&agrave; đứa con mạnh mẽ v&agrave; cao cấp nhất&nbsp;n&ecirc;n i9 13900K được ưu &aacute;i dựa tr&ecirc;n Socket LGA 1700 v&agrave; &aacute;p dụng kiến ​​tr&uacute;c mới v&agrave; c&oacute; hiệu năng vượt trội so với c&aacute;c sản phẩm thế hệ trước. Intel Core i9 13900K sẽ l&agrave; sự lựa chọn tuyệt vời nếu bạn muốn x&acirc;y dựng một d&agrave;n&nbsp;<a href=\"https://gearvn.com/pages/pc-gvn\" target=\"_blank\">PC gaming</a>&nbsp;tốt nhất hiện nay. Với số nh&acirc;n, số luồng v&agrave; tốc độ xung nhịp cao, n&oacute; sẽ ph&ugrave; hợp với c&aacute;c thiết bị cao cấp, dịch vụ&nbsp;ph&aacute;t trực tuyến, tr&ograve; chơi hoặc sử dụng phần mềm chuy&ecirc;n nghiệp.</p>\r\n\r\n<p><img alt=\"GEARVN - Intel Core i9 13900K / 3.0GHz Turbo 5.8GHz / 24 Nhân 32 Luồng / 36MB / LGA 1700\" src=\"https://file.hstatic.net/1000026716/file/gearvn-intel-core-i9-13900k-1_3fe44acd82da4cebb15df131ae91c84f.png\" /></p>\r\n\r\n<h3><strong>Sự cải tiến&nbsp;của&nbsp;Intel Core i9 13900K</strong></h3>\r\n\r\n<p>Intel Core i9 13900K c&oacute; thể đạt được sự gia tăng đ&aacute;ng kể về hiệu suất đa l&otilde;i, chủ yếu l&agrave; nhờ v&agrave;o 8 l&otilde;i E-core bổ sung m&agrave; d&ograve;ng&nbsp;<a href=\"https://gearvn.com/collections/cpu-intel-12th-gen\" target=\"_blank\">Alder Lake</a>&nbsp;thế hệ trước chưa c&oacute; được. Tiếp theo l&agrave; một loạt c&aacute;c cải tiến chung (IPC) cho mỗi chu kỳ. Raptor Lake-S sở hữu&nbsp;24 l&otilde;i v&agrave; 32 luồng. Sự đầu tư hẳn hoi của h&atilde;ng đ&atilde; hiển nhi&ecirc;n đưa&nbsp;Intel Core i9 13900K l&ecirc;n&nbsp;vị tr&iacute; dẫn đầu hiện nay.</p>\r\n\r\n<p><img alt=\"GEARVN - Intel Core i9 13900K / 3.0GHz Turbo 5.8GHz / 24 Nhân 32 Luồng / 36MB / LGA 1700\" src=\"https://file.hstatic.net/1000026716/file/gearvn-intel-core-i9-13900k-6_f22d25d984eb45b7a2cf3d0cba781ee7.png\" /></p>\r\n\r\n<p>Nhiều trường hợp c&ograve;n ghi nhận Intel Core i9 13900K thậm ch&iacute; c&ograve;n đạt tần số 6GHz th&ocirc;ng qua&nbsp;thử nghiệm đơn nh&acirc;n của phần mềm&nbsp;<a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/cach-tai-va-su-dung-cpu-z-de-kiem-tra-cau-hinh-may-tinh\" target=\"_blank\">CPU-Z</a>. Người d&ugrave;ng cũng&nbsp;kh&ocirc;ng cần&nbsp;<a href=\"https://gearvn.com/collections/tan-nhiet-khi\" target=\"_blank\">tản nhiệt</a>&nbsp;đặc biệt để đạt được xung nhịp 6085 MHz. Một bộ&nbsp;<a href=\"https://gearvn.com/collections/tan-nhiet-nuoc-240mm\" target=\"_blank\">tản nhiệt&nbsp;AIO</a>&nbsp;l&agrave; đủ, nhưng nhiệt độ v&agrave; mức ti&ecirc;u thụ điện năng cho thấy CPU kh&ocirc;ng qu&aacute; nặng để chạy hết c&ocirc;ng suất.</p>\r\n\r\n<p><img alt=\"GEARVN - Intel Core i9 13900K / 3.0GHz Turbo 5.8GHz / 24 Nhân 32 Luồng / 36MB / LGA 1700\" src=\"https://file.hstatic.net/1000026716/file/gearvn-intel-core-i9-13900k-10_76aa96cfea504b408fda9e81dde63abb.png\" /></p>\r\n\r\n<h3><strong>N&acirc;ng cấp hiệu năng</strong></h3>\r\n\r\n<p>Intel x&aacute;c nhận d&ograve;ng CPU n&agrave;y sẽ sử dụng tiến tr&igrave;nh Intel 7, l&ecirc;n đến 24 nh&acirc;n v&agrave; 32 luồng, tức l&agrave; 8 nh&acirc;n P + 16 nh&acirc;n E, khả năng &eacute;p xung si&ecirc;u khủng, tương th&iacute;ch với nền tảng Intel Core gen 12. Do đ&oacute;, hiệu năng tr&ecirc;n Intel Core i9 13900K được n&acirc;ng cao đ&aacute;ng kể. Song song đ&oacute;,&nbsp;<a href=\"https://gearvn.com/collections/mainboard-intel-z790-raptor-lake\" target=\"_blank\">bo mạch chủ Z790</a>&nbsp;cũng sẽ được ph&aacute;t h&agrave;nh c&ugrave;ng thời điểm. V&agrave; c&aacute;c&nbsp;<a href=\"https://gearvn.com/collections/mainboard-bo-mach-chu\" target=\"_blank\">bo mạch chủ</a>&nbsp;d&ograve;ng B760 v&agrave; H710 cũng dự kiến ra mắt v&agrave;o năm sau để người d&ugrave;ng c&oacute; nhiều sự lựa chọn hơn.</p>', 0, 0, 0, '2023-02-15 05:52:21', 7, NULL, NULL, 0, NULL, NULL),
(59, 'Loa máy tính Havit SK212', 'loa-may-tinh-havit-sk212', 550000, 0, 17, 2, 0, 10, '', '2023-02-15__loa.png', 2, 1, 1, 1, NULL, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết loa m&aacute;y t&iacute;nh Havit SK212</strong></h2>\r\n\r\n<p>Havit lu&ocirc;n l&agrave; sự lựa chọn tốt nhất cho những d&ograve;ng sản phẩm&nbsp;<a href=\"https://gearvn.com/pages/tai-nghe-may-tinh\" target=\"_blank\">tai nghe m&aacute;y t&iacute;nh</a>&nbsp;v&agrave; loa vi t&iacute;nh trong ph&acirc;n kh&uacute;c gi&aacute; rẻ. Trong đ&oacute;, loa m&aacute;y t&iacute;nh Havit Sk212 ch&iacute;nh l&agrave; sự lựa chọn ho&agrave;n hảo về &acirc;m thanh v&agrave; thiết kế độc đ&aacute;o.</p>\r\n\r\n<h3><strong>&Acirc;m thanh 2.0 mạnh mẽ, chất lượng</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN-loa-may-tinh-havit-sk212\" src=\"https://file.hstatic.net/1000026716/file/gearvn-loa-may-tinh-havit-sk212_66b444dfaf8c48408cec8f7684575498_grande.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đắm ch&igrave;m c&ugrave;ng dải &acirc;m thanh được xử l&yacute; v&ocirc; c&ugrave;ng gọn g&agrave;ng. Loa m&aacute;y t&iacute;nh với chất &acirc;m mạnh mẽ, c&acirc;n bằng v&agrave; l&ocirc;i cuốn ch&iacute;nh l&agrave; những g&igrave; bạn c&oacute; thể cảm nhận được khi sử dụng&nbsp;Havit SK212. Trang bị c&ocirc;ng nghệ xử l&yacute; &acirc;m thanh 2.0 đ&aacute;p ứng tốt mọi nhu cầu trải nghiệm &acirc;m thanh từ nghe nhạc giải tr&iacute; cho đến chơi game.</p>\r\n\r\n<p>B&ecirc;n cạnh một chất lượng &acirc;m thanh tuyệt vời th&igrave; c&ocirc;ng suất của Havit SK212 cũng được nh&agrave; ph&aacute;t h&agrave;nh thiết kế cực k&igrave; kĩ lưỡng để người chơi c&oacute; thể sử dụng ở những kh&ocirc;ng gian lớn hơn.</p>\r\n\r\n<h3><strong>Thiết kế nhỏ gọn, tinh tế</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN-loa-may-tinh-havit-sk212\" src=\"https://file.hstatic.net/1000026716/file/gearvn-loa-may-tinh-havit-sk212-2_ba537af68dc34e9591fa653ffdd681c9_grande.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sở hữu kiểu d&aacute;ng nhỏ gọn nhất trong đại gia đ&igrave;nh loa m&aacute;y t&iacute;nh Havit, với k&iacute;ch thước 86x86x165mm v&agrave; trọng lượng 955g sẽ kh&ocirc;ng chiếm qu&aacute; nhiều diện t&iacute;ch tr&ecirc;n b&agrave;n l&agrave;m việc cho d&ugrave; bạn đang sử dụng&nbsp;<a href=\"https://gearvn.com/collections/ban-gaming\" target=\"_blank\">b&agrave;n Gaming</a>&nbsp;rộng lớn hay b&agrave;n m&aacute;y t&iacute;nh nhỏ.</p>\r\n\r\n<h3><strong>Hệ thống chiếu s&aacute;ng LED RGB độc đ&aacute;o</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN-loa-may-tinh-havit-sk212\" src=\"https://file.hstatic.net/1000026716/file/gearvn-loa-may-tinh-havit-sk212-1_c1444744ba61441d8d23e6d0f6bc8e87_grande.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i việc sở hữu thiết kế nhỏ gọn v&agrave; v&ocirc; c&ugrave;ng tinh tế, hệ thống &acirc;m thanh của bạn sẽ v&ocirc; c&ugrave;ng nổi bật với hệ thống chiếu s&aacute;ng LED RGB. Điều n&agrave;y đồng nghĩa với việc kh&ocirc;ng gian vui chơi giải tr&iacute; v&agrave; l&agrave;m việc của bạn sẽ đầy sắc m&agrave;u khi kết hợp loa m&aacute;y t&iacute;nh Havit SK212 c&ugrave;ng c&aacute;c thiết bị&nbsp;<a href=\"https://gearvn.com/collections/ban-phim-may-tinh\" target=\"_blank\">b&agrave;n ph&iacute;m</a>,&nbsp;<a href=\"https://gearvn.com/pages/chuot-may-tinh\" target=\"_blank\">chuột m&aacute;y t&iacute;nh</a>,.....</p>\r\n\r\n<h3><strong>Kết nối tiện lợi qua c&aacute;p USB Type-C</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN-loa-may-tinh-havit-sk212\" src=\"https://file.hstatic.net/1000026716/file/gearvn-loa-may-tinh-havit-sk212-3_f78782d8244b4b4d9c956ec88bfbf273_grande.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kết nối theo ti&ecirc;u chuẩn &Acirc;u Ch&acirc;u qua c&aacute;p USB Type-C v&agrave; c&ocirc;ng nghệ kh&ocirc;ng d&acirc;y Bluetooth với độ trễ cực thấp, phạm vi kết nối rộng dễ d&agrave;ng tương th&iacute;ch với c&aacute;c thiết bị ph&aacute;t c&oacute; tr&ecirc;n thị trường từ điện thoại th&ocirc;ng minh, m&aacute;y t&iacute;nh bảng cho đến&nbsp;<a href=\"https://gearvn.com/pages/pc-gvn\" target=\"_blank\">PC</a>, Laptop.&nbsp;</p>', 0, 0, 0, '2023-02-15 06:06:40', 18, NULL, NULL, 0, '2023-02-15 14:38:01', NULL),
(60, 'RAM Kingston Fury Beast 8GB 3200 DDR4 RGB (KF432C16BBA/8)', 'ram-kingston-fury-beast-8gb-3200-ddr4-rgb-kf432c16bba8', 1299000, 0, 1, 2, 0, 5, '', '2023-02-15__ram2.png', 2, 1, 1, 1, NULL, '<h2><strong>Đ&aacute;nh gi&aacute; chi tiết Ram Kingston Fury RGB 1x8GB 3200 Beast (KF432C16BBAK2/16)</strong></h2>\r\n\r\n<p><a href=\"https://gearvn.com/collections/ram-pc-kingston\">RAM Kingston</a>&nbsp;Fury RGB 1x8GB 3200 Beast đ&atilde; c&oacute; sự trở lại ngoạn mục với thanh&nbsp;<a href=\"https://gearvn.com/collections/ram-pc\">RAM PC</a>&nbsp;si&ecirc;u chất lượng. Với dung lượng 8GB chuẩn&nbsp;<a href=\"https://gearvn.com/collections/ddr4-8gb\">DDR4</a>, Fury Beast RGB hứa hẹn sẽ đẩy hiệu suất d&agrave;n&nbsp;<a href=\"https://gearvn.com/pages/pc-gvn\">PC gaming</a>&nbsp;của bạn đạt mức cao nhất. Hệ thống đ&egrave;n LED RGB nổi bật cũng sẽ l&agrave;m s&aacute;ng kh&ocirc;ng gian chơi game tuyệt vời.&nbsp;</p>\r\n\r\n<p><img alt=\"GEARVN - RAM Kingston Fury Beast RGB 1x8G 3200\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ram_kingston_fury_beast_rgb_1x8g_3200-1_5b902480602b4f55bab4b5c4612f667e.png\" /></p>\r\n\r\n<blockquote>\r\n<p><strong>&gt;&gt;Xem th&ecirc;m:&nbsp;<a href=\"https://gearvn.com/blogs/thu-thuat-giai-dap/ram-la-gi\" target=\"_blank\">Lưu &yacute; khi chọn RAM</a>.</strong></p>\r\n</blockquote>\r\n\r\n<h3><strong>Hệ thống RGB hiện đại</strong></h3>\r\n\r\n<p>RAM Kingston Fury Beast RGB l&agrave; d&ograve;ng RAM PC phổ th&ocirc;ng nhắm đến nhiều đối tượng ti&ecirc;u d&ugrave;ng kh&aacute;c nhau. V&igrave; vậy, thiết kế của Fury Beast RGB cũng được gia c&ocirc;ng đặc biệt để đ&aacute;p ứng nhu cầu đa dạng người d&ugrave;ng. Thiết kế đ&egrave;n RGB l&agrave;m bừng s&aacute;ng cả một hệ thống PC gaming m&agrave; kh&ocirc;ng cần th&ecirc;m một&nbsp;<a href=\"https://gearvn.com/collections/gaming-gear\">gaming gear</a>&nbsp;n&agrave;o kh&aacute;c. Ngo&agrave;i ra, hệ thống LED RGB c&ograve;n c&oacute; thể điều khiển bằng phần mềm, tương th&iacute;ch với nhiều hệ thống sync của c&aacute;c h&atilde;ng sản xuất&nbsp;<a href=\"https://gearvn.com/collections/mainboard-bo-mach-chu\">bo mạch chủ</a>.</p>\r\n\r\n<p><img alt=\"GEARVN - RAM Kingston Fury Beast RGB 1x8G 3200\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ram_kingston_fury_beast_rgb_1x8g_3200-2_4ca0ed31812c4433bf07e253558bc099.png\" /></p>\r\n\r\n<h3><strong>Plug N Play v&agrave; khả năng tương th&iacute;ch</strong></h3>\r\n\r\n<p>Kingston Fury Beast RGB được trang bị c&ocirc;ng nghệ Plug N Play, một c&ocirc;ng nghệ tự động &eacute;p xung l&ecirc;n tốc độ cao nhất m&agrave; hệ thống cho ph&eacute;p. B&ecirc;n cạnh đ&oacute;, RAM Kingston c&ograve;n sở hữu thiết kế&nbsp;<a href=\"https://gearvn.com/collections/fan-rgb-tan-nhiet-pc\">tản nhiệt</a>&nbsp;nh&ocirc;m đơn giản nhưng đem lại hiểu quả tốt cho hầu hết c&aacute;c t&aacute;c vụ từ cơ bản đến n&acirc;ng cao.</p>\r\n\r\n<p><img alt=\"GEARVN - RAM Kingston Fury Beast RGB 1x8G 3200\" src=\"https://file.hstatic.net/1000026716/file/gearvn-ram_kingston_fury_beast_rgb_1x8g_3200-3_49ee6b917a7f493e9a2a44a8847fe79b.png\" /></p>\r\n\r\n<p>Kingston Fury Beast RGB sẽ l&agrave; bản n&acirc;ng cấp ho&agrave;n hảo cho bất kỳ hệ thống m&aacute;y t&iacute;nh n&agrave;o, gi&uacute;p m&aacute;y t&iacute;nh của bạn tho&aacute;t khỏi t&igrave;nh trạng chậm, lag do thiếu RAM. Một trong những d&ograve;ng RAM PC được thiết kế để tương th&iacute;ch ho&agrave;n hảo với c&ocirc;ng nghệ Intel XMP v&agrave; cả AMD.</p>', 0, 0, 0, '2023-02-15 06:11:05', 17, NULL, NULL, 0, '2023-02-15 14:38:00', NULL),
(61, 'Mainboard Asus ROG STRIX X670E-I GAMING WIFI DDR5', 'mainboard-asus-rog-strix-x670e-i-gaming-wifi-ddr5', 15999000, 0, 7, 2, 0, 12, '', '2023-02-15__250-43796-mainboard-asus-rog-strix-x670e-i-gaming-wifi-ddr5-1.jpg', 0, 1, 1, 0, NULL, '<p>M&Ocirc; TẢ SẢN PHẨM</p>\r\n\r\n<h2>Mainboard Asus ROG STRIX X670E-I GAMING WIFI DDR5</h2>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://anphat.com.vn/media/lib/04-02-2023/mainboardasusrogstrixx670e-igamingwifiddr51.png\" style=\"width:700px\" /></p>\r\n\r\n<p><strong>ASUS ROG STRIX X670E-I GAMING WIFI (DDR5)</strong>&nbsp;ch&iacute;nh l&agrave; d&ograve;ng sản phẩm d&agrave;nh cho người chơi th&iacute;ch build PC cấu h&igrave;nh mạnh với thiết kế nhỏ gọn. D&ograve;ng mainboard sử dụng chipset mới nhất X670 với hiệu năng được cải tiếng mạnh mẽ để khai th&aacute;c to&agrave;n bộ sức mạnh của CPU AMD Ryzen 7000 Series. Ngo&agrave;i hiệu năng ấn tượng, thiết kế nhỏ gọn c&ugrave;ng t&ocirc;ng m&agrave;u đen &ldquo;huyền b&iacute;&rdquo; ch&iacute;nh l&agrave; điểm nhấn tr&ecirc;n d&ograve;ng mainboard&nbsp;<strong>ASUS</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Thiết kế nhỏ gọn &iacute;t chiếm diện t&iacute;ch</strong></h3>\r\n\r\n<p><img alt=\"\" src=\"https://anphat.com.vn/media/lib/04-02-2023/mainboardasusrogstrixx670e-igamingwifiddr53.png\" style=\"width:700px\" /></p>\r\n\r\n<p>Điểm ấn tượng đầu ti&ecirc;n tr&ecirc;n d&ograve;ng main ASUS b&ecirc;n cạnh sức mạnh v&agrave; hiệu năng ch&iacute;nh l&agrave; sở hữu thiết kế v&ocirc; c&ugrave;ng độc đ&aacute;o, nhỏ gọn &iacute;t chiếm diện t&iacute;ch. Người chơi ho&agrave;n to&agrave;n c&oacute; thể nhận thấy được sự tinh tế trong thiết kế đậm chất gaming với c&aacute;c chi tiết nhỏ nhất được gia c&ocirc;ng v&ocirc; c&ugrave;ng tỉ mỉ. Bạn ho&agrave;n to&agrave;n c&oacute; thể Build bộ PC với cấu h&igrave;nh khủng nhưng lại kh&aacute; nhỏ gọn, thuận tiện cho việc di chuyển hay setup g&oacute;c m&aacute;y gọn g&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Khai th&aacute;c hết sức mạnh của CPU AMD Ryzen 7000 Series</strong></h3>\r\n\r\n<p><img alt=\"\" src=\"https://anphat.com.vn/media/lib/04-02-2023/mainboardasusrogstrixx670e-igamingwifiddr55.png\" style=\"width:700px\" /></p>\r\n\r\n<p>Để gi&uacute;p người chơi c&oacute; thể khai th&aacute;c hết sức mạnh của CPU AMD Ryzen 7000 Series,&nbsp;<strong>ROG STRIX X670E-I</strong>&nbsp;cung cấp năng lượng mạnh mẽ, c&ocirc;ng cụ &eacute;p xung s&aacute;ng tạo v&agrave; kiểm so&aacute;t l&agrave;m m&aacute;t to&agrave;n diện mang đến cho bạn mọi thứ cần thiết để x&acirc;y dựng hệ thống PC Gaming mạnh mẽ.</p>\r\n\r\n<ul>\r\n	<li>ROG Strix X670E-I tăng khả năng mở rộng mini-ITX một c&aacute;ch gọn g&agrave;ng với c&aacute;c khe cắm PCIe 5.0 v&agrave; PCIe 4.0 M.2 xếp chồng theo chiều dọc. Hỗ trợ PCIe 5.0 cũng mở rộng đến khe x16, được gia cố chắc chắn bằng SafeSlot cung cấp hỗ trợ cấu tr&uacute;c v&agrave; băng th&ocirc;ng để xử l&yacute; c&aacute;c GPU thế hệ tiếp theo.</li>\r\n	<li>&Eacute;p xung AI: Điều chỉnh giờ đ&acirc;y nhanh hơn v&agrave; th&ocirc;ng minh hơn bao giờ hết th&ocirc;ng qua c&ocirc;ng nghệ &eacute;p xung th&ocirc;ng minh ASUS AI Overclocking.</li>\r\n	<li>DIGI+ Power Control: 10 + 2 đ&aacute;p ứng nhanh ch&oacute;ng với những thay đổi nhằm khai th&aacute;c hết sức mạnh của bộ vi xử l&yacute; Ryzen 7000 trong mọi nhu cầu sử dụng.</li>\r\n	<li>Hỗ trợ tối đa RAM DDR5: Để dễ d&agrave;ng khai th&aacute;c to&agrave;n bộ sức mạnh của RAM DDR5, Strix X670E-A được trang bị sẵn cấu h&igrave;nh AMD EXtended để &eacute;p xung (EXPO).</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Tối ưu khả năng l&agrave;m m&aacute;t cho hệ thống</strong></h3>\r\n\r\n<p><img alt=\"\" src=\"https://anphat.com.vn/media/lib/04-02-2023/mainboardasusrogstrixx670e-igamingwifiddr54.png\" style=\"width:700px\" /></p>\r\n\r\n<p>Hai tản nhiệt VRM HEATSINKS, một tản nhiệt mở rộng b&ecirc;n dưới tấm che I / O để xử l&yacute; nhu cầu điện năng của bộ vi xử l&yacute; AMD Ryzen 7000 Series hiệu năng cao.</p>\r\n\r\n<p>Ngo&agrave;i ra, với c&aacute;c tấm tản nhiệt được sử dụng giữa c&aacute;c tầng nguồn v&agrave; bộ tản nhiệt, gi&uacute;p cải thiện khả năng truyền nhiệt v&agrave; giảm nhiệt độ hoạt động của VRM.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Sự kết hợp ho&agrave;n hảo cho c&aacute;c sản phẩm kh&aacute;c từ hệ sinh th&aacute;i ROG</strong></h3>\r\n\r\n<p><img alt=\"\" src=\"https://anphat.com.vn/media/lib/04-02-2023/mainboardasusrogstrixx670e-igamingwifiddr52.png\" style=\"width:700px\" /></p>\r\n\r\n<p>Ngo&agrave;i việc&nbsp;<strong>ASUS ROG STRIX X670E-I GAMING WIFI</strong>&nbsp;thiết kế nhỏ gọn tinh tế, ASUS c&ograve;n thiết kế lưới kim loại đục lỗ tr&ecirc;n tấm chắn I / O v&agrave; bộ tản nhiệt M.2 hỗ trợ bắt s&aacute;ng c&aacute;c linh kiện PC c&oacute; LED RGB tạo n&ecirc;n kh&ocirc;ng gian chơi game độc đ&aacute;o.</p>\r\n\r\n<p>&nbsp;</p>', 0, 0, 0, '2023-02-15 14:37:10', 20, NULL, NULL, 0, '2023-02-15 14:37:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

DROP TABLE IF EXISTS `products_attributes`;
CREATE TABLE IF NOT EXISTS `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pa_product_id` int(11) NOT NULL DEFAULT '0',
  `pa_attribute_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(134, 59, 15),
(135, 60, 14),
(136, 60, 16),
(137, 60, 18),
(138, 61, 15),
(139, 61, 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

DROP TABLE IF EXISTS `products_keywords`;
CREATE TABLE IF NOT EXISTS `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pk_product_id` int(11) NOT NULL DEFAULT '0',
  `pk_keyword_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE IF NOT EXISTS `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `r_user_id` int(11) NOT NULL DEFAULT '0',
  `r_product_id` int(11) NOT NULL DEFAULT '0',
  `r_number` tinyint(4) NOT NULL DEFAULT '0',
  `r_status` tinyint(4) NOT NULL DEFAULT '0',
  `r_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE IF NOT EXISTS `slides` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT '1',
  `sd_active` tinyint(4) NOT NULL DEFAULT '1',
  `sd_sort` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'Banner1', 'http://google.com.vn', '2023-02-14__bg1.png', 1, 1, 0, '2023-02-14 04:36:14', '2023-02-14 04:36:14'),
(2, 'Banner2', 'https://vouchercode.vn/ma-giam-gia-sach-voucher-sach-tot-nhat-hien-nay/', '2023-02-14__bg2.png', 1, 1, 0, '2023-02-14 04:37:04', '2023-02-14 04:37:04'),
(3, 'Banner3', 'https://sachvui.com/', '2023-02-14__bg4.png', 1, 1, 0, '2023-02-14 04:38:35', '2023-02-14 04:38:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
CREATE TABLE IF NOT EXISTS `social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

DROP TABLE IF EXISTS `statics`;
CREATE TABLE IF NOT EXISTS `statics` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `s_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT '0',
  `s_md5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Mua 1 doi 1', NULL, 2, NULL, '<p>k dung yeu cau thi tra lai va boi thuong hoan tien 100%</p>', '2020-04-20 12:03:25', '2020-04-20 12:03:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplieres`
--

DROP TABLE IF EXISTS `supplieres`;
CREATE TABLE IF NOT EXISTS `supplieres` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sl_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(2, 'Việt Nam', '0988366423', 'sdk@gmail.com', 'Thái Bình', '2020-04-17 09:53:15', NULL),
(3, 'Test', '0343754517', 'thanhduy@gmail.com', 'TP Hồ Chí Minh', '2023-02-06 08:04:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tst_user_id` int(11) NOT NULL DEFAULT '0',
  `tst_admin_id` int(11) NOT NULL DEFAULT '0',
  `tst_total_money` int(11) NOT NULL DEFAULT '0',
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT '1',
  `tst_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_tst_user_id_index` (`tst_user_id`),
  KEY `transactions_tst_admin_id_index` (`tst_admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(23, 18, 1, 53289450, 'Võ Hưng', 'vohung@gmail.com', '099836532', 'Pasteur Hồ Chí Minh', 'OK', 3, 2, '2023-02-15 14:31:59', '2023-02-15 14:32:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `log_login` text COLLATE utf8mb4_unicode_ci,
  `count_comment` tinyint(4) NOT NULL DEFAULT '0',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  KEY `users_balance_index` (`balance`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(16, 'Nguyễn Thành Trung', 'thanhtrung@gmail.com', NULL, '$2y$10$hozIbsHEulBz/vDbnNzBaedChWJxKb3ZX17f5/cSwlRk8FVyWjLQS', '0999999999', -255200, NULL, 2, NULL, NULL, NULL, '2023-02-06 14:18:17', NULL),
(17, 'Nguyễn Thành Công', 'ntc1105@gmail.com', NULL, '$2y$10$0FeCgGVU9MdIWtmi/zMhf.KkZ4GZUyOGI08sb3lNTduCMfPzE35fy', '0123456789', -107360, NULL, 1, NULL, NULL, NULL, '2023-02-06 14:33:32', NULL),
(18, 'Võ Hưng', 'vohung@gmail.com', NULL, '$2y$10$0VXhDCP2rYzALy7BH5Houu51JlMgnGkD5o3C8oISGqXbLx0A6/CBO', '099836532', -53289450, NULL, 0, NULL, NULL, NULL, '2023-02-15 14:30:30', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

DROP TABLE IF EXISTS `user_favourite`;
CREATE TABLE IF NOT EXISTS `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uf_product_id` int(11) NOT NULL DEFAULT '0',
  `uf_user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(6, 1, 11),
(8, 1, 12),
(9, 6, 14),
(5, 21, 8),
(2, 22, 2),
(1, 23, 1),
(7, 28, 10),
(12, 60, 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
CREATE TABLE IF NOT EXISTS `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `w_product_id` int(11) NOT NULL,
  `w_price` int(11) NOT NULL DEFAULT '0',
  `w_qty` int(11) NOT NULL DEFAULT '0',
  `w_time_warehouse` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouses_w_product_id_index` (`w_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `warehouses`
--

INSERT INTO `warehouses` (`id`, `w_product_id`, `w_price`, `w_qty`, `w_time_warehouse`, `created_at`, `updated_at`) VALUES
(1, 2, 20000, 30, NULL, '2021-05-25 17:06:46', '2021-05-25 17:18:19'),
(2, 8, 250000, 5, NULL, '2023-02-06 14:28:45', '2023-02-06 14:28:45');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
