-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 06:47 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `applestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `username` varchar(256) NOT NULL,
  `action` varchar(256) NOT NULL,
  `lv` int(11) NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`username`, `action`, `lv`, `create_time`) VALUES
('admin', 'View detail order', 1, '2020-10-19 07:17:27'),
('admin', 'Edit Category', 1, '2020-10-19 08:26:48'),
('admin', 'Edit Category', 1, '2020-10-19 08:27:30'),
('admin', 'Edit Category', 1, '2020-10-19 08:28:50'),
('admin', 'Edit Category', 1, '2020-10-19 08:29:43'),
('admin', 'Add product', 1, '2020-10-19 08:59:28'),
('admin', 'Add product', 1, '2020-10-19 09:04:49'),
('admin', 'Add product', 1, '2020-10-19 09:13:03'),
('admin', 'Add product', 1, '2020-10-19 09:16:50'),
('admin', 'Add product', 1, '2020-10-19 09:20:21'),
('admin', 'Add product', 1, '2020-10-19 09:24:11'),
('admin', 'Add product', 1, '2020-10-19 09:26:42'),
('admin', 'Add product', 1, '2020-10-19 09:30:10'),
('admin', 'Add product', 1, '2020-10-19 09:32:59'),
('admin', 'Add product', 1, '2020-10-19 09:36:02'),
('admin', 'Add product', 1, '2020-10-19 09:40:25'),
('admin', 'Add product', 1, '2020-10-19 09:44:03'),
('admin', 'Add product', 1, '2020-10-19 09:46:46'),
('admin', 'Add product', 1, '2020-10-19 09:49:29'),
('admin', 'Edit product', 1, '2020-10-19 09:50:07'),
('admin', 'Edit product', 1, '2020-10-19 09:50:35'),
('admin', 'Edit product', 1, '2020-10-19 09:52:02'),
('admin', 'Accept order', 1, '2020-10-19 09:59:51'),
('admin', 'View detail order', 1, '2020-10-19 09:59:58'),
('admin', 'View detail order', 1, '2020-10-19 10:00:08'),
('admin', 'Completed order', 1, '2020-10-19 10:07:58'),
('admin', 'View detail order', 1, '2020-10-19 10:08:02'),
('admin', 'View detail order', 1, '2020-10-19 10:11:41'),
('admin', 'View detail order', 1, '2020-10-19 10:11:48'),
('admin', 'Completed order', 1, '2020-10-19 10:11:53'),
('admin', 'View detail order', 1, '2020-10-19 10:12:53'),
('admin', 'Completed order', 1, '2020-10-19 10:13:02'),
('admin', 'View detail order', 1, '2020-10-19 10:13:04'),
('admin', 'View detail order', 1, '2020-10-19 10:13:47'),
('admin', 'Accept order', 1, '2020-10-19 10:13:53'),
('admin', 'View detail order', 1, '2020-10-19 10:15:53'),
('admin', 'View detail order', 1, '2020-10-19 10:15:59'),
('admin', 'Add notifications', 1, '2020-10-19 10:16:23'),
('admin', 'Add notifications', 1, '2020-10-19 10:16:23'),
('admin', 'Add notifications', 1, '2020-10-19 10:16:23'),
('admin', 'Accept order', 1, '2020-10-19 10:33:38'),
('admin', 'Completed order', 1, '2020-10-19 10:33:40'),
('admin', 'View detail order', 1, '2020-10-19 10:33:45'),
('admin', 'Add Category', 1, '2020-10-19 10:34:28'),
('admin', 'Add product', 1, '2020-10-19 10:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `management_image_banner`
--

CREATE TABLE `management_image_banner` (
  `id` int(11) NOT NULL,
  `url` varchar(256) NOT NULL,
  `header` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `management_image_banner`
--

INSERT INTO `management_image_banner` (`id`, `url`, `header`, `title`, `content`) VALUES
(1, 'bg1.jpg', 'Breakthrough product', 'Iphone - 13 Pro Max 2021', 'The iPhone 13 series was officially opened for sale on September 15, 2021. iPhone 13 Series appears with 4 versions including iPhone 13 mini - iPhone 13 - iPhone 13 Pro and iPhone 13 Pro Max'),
(5, 'bg2.jpg', 'Featured Product', 'MacBook Pro M1 2020 ', 'MacBook Pro M1 was in the \"One More Thing\" event held on the morning of 11/11/2020. The new Apple product has the same price, but comes with a more powerful Apple M1 chip and an additional cooling fan'),
(6, 'bg3.jpg', 'Featured Product', 'iPad Air 5th generation', 'On March 9, 2022. In the event called Peek Performance, Apple officially introduced the 5th generation iPad Air. The new iPad product will use the same Apple Silicon M1 chip as the iPad Pro. In particular, iPad Air also has up to 5 colors for users to choose from.'),
(7, 'bg4.jpg', 'Featured Product', 'Apple Watch Series 7', 'After announcing two new iPads, Apple officially introduced the Apple Watch Series 7 at a big event on September 14. The smartwatch generation 7 with a large screen and the device will support watchOS 8 with fall detection when cycling, optimizing exercise tracking by e-bike'),
(8, 'bg5.jpg', 'Featured Product', 'Apple TV 4K ', 'At the Apple Spring Loaded event in April 2021. Apple introduced the Apple TV 4K product with outstanding upgrades on the product including the A12 Bionic processor chip, support for HDR content with high frame rate, the ability to using an iPhone (using a light sensor called the Color balance feature).');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `content` varchar(256) NOT NULL,
  `lv` int(11) NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `content`, `lv`, `create_time`) VALUES
(5, 'New order fromLương Văn Như', 1, '2020-10-19 02:02:48'),
(6, 'New order fromLương Văn Như', 15, '2020-10-19 02:02:48'),
(7, 'New order from Lương Văn Như', 1, '2020-10-19 09:53:51'),
(8, 'New order from Lương Văn Như', 15, '2020-10-19 09:53:51'),
(9, 'New order from Lương Văn Như', 1, '2020-10-19 09:57:51'),
(10, 'New order from Lương Văn Như', 15, '2020-10-19 09:57:51'),
(11, 'New order from Lương Văn Như', 1, '2020-10-19 10:13:38'),
(12, 'New order from Lương Văn Như', 15, '2020-10-19 10:13:38'),
(13, 'Test', 1, '2020-10-19 10:16:23'),
(14, 'Test', 15, '2020-10-19 10:16:23'),
(15, 'Test', 100, '2020-10-19 10:16:23'),
(16, 'New order from Lương Văn Như', 1, '2020-10-19 10:32:16'),
(17, 'New order from Lương Văn Như', 15, '2020-10-19 10:32:16'),
(18, 'New order from Lương Văn Như', 1, '2020-10-19 10:32:22'),
(19, 'New order from Lương Văn Như', 15, '2020-10-19 10:32:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `id_order`, `id_product`, `price`, `qty`) VALUES
(130, 162, 72, 299, 3),
(131, 162, 59, 899, 3),
(132, 162, 61, 1599, 2),
(133, 163, 64, 499, 1),
(134, 163, 63, 799, 1),
(142, 168, 66, 2099, 1),
(143, 168, 68, 1299, 1),
(144, 169, 66, 2099, 2),
(145, 169, 68, 1299, 1),
(146, 170, 67, 3000, 6),
(147, 170, 59, 899, 1),
(148, 170, 63, 799, 2),
(149, 171, 67, 3000, 6),
(150, 171, 59, 899, 1),
(151, 171, 63, 799, 2),
(152, 172, 67, 3000, 4),
(153, 172, 59, 899, 1),
(154, 172, 63, 799, 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `username` varchar(256) NOT NULL,
  `id_order` int(11) NOT NULL,
  `fullname` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone_number` int(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `total_price` float NOT NULL,
  `address` varchar(256) NOT NULL,
  `payment_method` varchar(256) NOT NULL,
  `note` text NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`username`, `id_order`, `fullname`, `email`, `phone_number`, `status`, `total_price`, `address`, `payment_method`, `note`, `created_at`, `updated_at`) VALUES
('hyung', 162, 'hung', 's2@gmail.com', 899305432, 1, 6792, 'hanoi', 'on', '', '2022-05-18 08:50:41', '2022-05-18 08:50:41'),
('KK', 163, 'Nguyễn Đăng Khánh', 'khanh42869@gmail.com', 899305432, 1, 1298, 'Thai Nguyen', 'cashOnDelivery', '', '2022-05-18 08:58:29', '2022-05-18 08:58:29'),
('khanhxz', 168, 'Nguyễn Đăng Khánh', 'sss@gmail.com', 123345123, 1, 3398, 'Thai Nguyen', 'Visa', '', '2022-05-18 11:30:01', '2022-05-18 11:30:01'),
('gutboykeoconvoi', 169, 'Vy Văn Hùng', 'sef123@gmail.com', 123654231, 1, 5497, 'Bac Giang', 'Visa', '', '2022-05-18 11:32:31', '2022-05-18 11:32:31'),
('hung', 170, 'Vy Văn Hùng', 'vyvanhung2882001bg@gmail.com', 879519709, 1, 20497, 'Bắc Giang', 'cashOnDelivery', 'Bùng', '2022-05-24 04:21:55', '2022-05-24 04:21:55'),
('hung', 171, 'Vy Văn Hùng', 'vyvanhung2882001bg@gmail.com', 879519709, 1, 20497, 'Bắc Giang', 'paypal', '\"BÙng lần 2', '2022-05-24 04:23:19', '2022-05-24 04:23:19'),
('hung', 172, 'Vy Văn Hùng', 'vyvanhung2882001bg@gmail.com', 879519709, 1, 14497, 'Bắc Giang', 'cashOnDelivery', 'Bùng3', '2022-05-24 04:28:52', '2022-05-24 04:28:52');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL COMMENT 'category',
  `image` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 la hidden, 1 la show',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `sold` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `type`, `image`, `price`, `quantity`, `description`, `status`, `created_at`, `updated_at`, `view`, `sold`) VALUES
(59, 'iPhone 11 64GB', 1, 'iphone-11-pro-hai-phong-01.jpg', 899, 197, 'Apple iPhone 11 is powered by the Apple A13 Bionic processor. The smartphone comes with a 6.1 inches Liquid Retina IPS LCD capacitive touchscreen and 828 x 1792 pixels resolution. The screen of the device is protected by Scratch-resistant glass and oleophobic coating.\r\n\r\nThe rear camera consists of a 12 MP (wide) + 12 MP (ultrawide) lenses.\r\n\r\nThe front camera has a 12 MP + TOF 3D camera sensor. The phone’s sensors include Face ID, accelerometer, gyro, proximity, compass, and barometer.\r\n\r\nThe smartphone is fueled by a Non-removable Li-Ion 3110 mAh battery + Fast battery charging 18W: 50% in 30 min + USB Power Delivery 2.0 + Qi wireless charging.\r\n\r\nThe phone runs on iOS 13.\r\n\r\nThe Apple iPhone 11 comes in different colors like, Black, Green, Yellow, Purple, Red, and White. It features 2.0, proprietary reversible connector.', 1, '2020-10-19 08:59:28', '2022-05-24 04:28:52', 0, 3),
(60, 'Iphone 11 Pro Max', 1, '637037687763926758_11-pro-max-xanh.png', 1099, 200, 'Apple iPhone 11 Pro Max is powered by the Apple A13 Bionic processor. The smartphone comes with a 6.5 inches Super Retina XDR OLED capacitive touchscreen and 1242 x 2688 pixels resolution. The screen of the device is protected by Scratch-resistant glass and oleophobic coating.\r\n\r\nThe rear camera consists of a 12 MP (wide) + 12 MP (telephoto) 2x optical zoom + 12 MP (ultrawide) lenses.\r\n\r\nThe front camera has a 12 MP + TOF 3D camera sensor. The phone’s sensors include Face ID, accelerometer, gyro, proximity, compass, and barometer.\r\n\r\nThe smartphone is fueled by a Non-removable Li-Ion 3500 mAh battery + Fast battery charging 18W: 50% in 30 min + USB Power Delivery 2.0 + Qi wireless charging.\r\n\r\nThe phone runs on iOS 13.\r\n\r\nThe Apple iPhone 11 Pro Max comes in different colors like, Space Gray, Silver, Gold, and Midnight Green. It features 2.0, proprietary reversible connector.', 1, '2020-10-19 09:04:49', '0000-00-00 00:00:00', 1, 0),
(61, 'iPhone 12', 1, 'iPhone-12-concept-conceptes-iphone.jpg', 1599, 200, 'Apple iPhone 12 was officially released on October 13, 2020.\r\n\r\nThe phone is powered by the new Apple A14 Bionic processor. The smartphone comes with a 6.1 inches Super Retina XDR OLED capacitive touchscreen, 1170 x 2532 pixels resolution and HDR10 display, Wide color gamut, Dolby Vision, and True-tone.\r\n\r\nAdditionally, the screen of the device is protected by Scratch-resistant glass and oleophobic coating. The rear camera consists of 12 MP (wide) + 12 MP (ultrawide) with Quad-LED dual-tone flash, and HDR (photo/panorama).\r\n\r\nThe front camera consists of 12 MP (wide) + SL 3D, (depth/biometrics sensor) with HDR. The phone’s sensors include Face ID, accelerometer, gyro, proximity, compass, barometer + Siri natural language commands, and dictation.\r\n\r\nThe smartphone is fueled by a non-removable Li-Ion battery + Fast charging 18W, 50% in 30 min (advertised) + USB Power Delivery 2.0 + Qi fast wireless charging 15W. The phone runs on the iOS 14 operating system.\r\n\r\nThe Apple iPhone 12 comes in different colors like Black, White, Red, Green, and Blue. The dimension of the smartphone is 146.7 x 71.5 x 7.4 mm and it weighs 164 grams. It is IP68 dust/water resistant and supports Single SIM (Nano-SIM and/or eSIM)', 1, '2020-10-19 09:13:02', '2020-10-19 09:50:35', 1, 0),
(62, 'iPhone X', 1, 'iphone-x-1-min-compressor.jpg', 599, 0, 'iPhone X Release\r\nThe Apple iPhone X was officially announced on September 12th 2017 at Steve Job’s Theater, Apple Campus II. The smartphone is available for pre-order on September 15th and available on September 22nd.\r\n\r\nDevice Characteristics\r\nThe iPhone X feature Apple’s first attempt at an all-screen smartphone covering the majority of the device’s footprint. The display reserves space on the top rig to accommodate the front-facing camera that functions as a facial-scanner that unlocks the device when a registered face is detected; this function is named “FaceID”.\r\n\r\nApple have removed the TouchID sensor completely providing the “all-screen” experience. The screen is Apple’s largest smartphone display, at 5.8-inches, with an 18:9 screen ratio. The screen also features an OLED HDR display with a pixel density of 458 ppi, this display is Apple’s first OLED device and also highest pixel density.\r\n\r\nThe dual-camera setup has been re-orientated to a vertical layout, the components are a near-replica of the iPhone 8, the major difference being a dual optical image stabilisation support of the iPhone X instead of a single on the other. The device comes with a 7-megapixel camera that features Apple’s Portrait mode and Animoji.', 1, '2020-10-19 09:16:50', '2020-10-19 09:52:02', 1, 0),
(63, 'iPhone XS Max', 1, 'xs-max-trang-cd80a8a5-8d7c-42ec-9e1d-eafee23470a4.png', 799, 194, 'iPhone XS Max Release\r\nThe Apple iPhone X was officially announced on September 12th 2017 at Steve Job’s Theater, Apple Campus II. The smartphone is available for pre-order on September 15th and available on September 22nd.\r\n\r\nDevice Characteristics\r\nThe iPhone X feature Apple’s first attempt at an all-screen smartphone covering the majority of the device’s footprint. The display reserves space on the top rig to accommodate the front-facing camera that functions as a facial-scanner that unlocks the device when a registered face is detected; this function is named “FaceID”.\r\n\r\nApple have removed the TouchID sensor completely providing the “all-screen” experience. The screen is Apple’s largest smartphone display, at 5.8-inches, with an 18:9 screen ratio. The screen also features an OLED HDR display with a pixel density of 458 ppi, this display is Apple’s first OLED device and also highest pixel density.\r\n\r\nThe dual-camera setup has been re-orientated to a vertical layout, the components are a near-replica of the iPhone 8, the major difference being a dual optical image stabilisation support of the iPhone X instead of a single on the other. The device comes with a 7-megapixel camera that features Apple’s Portrait mode and Animoji.', 1, '2020-10-19 09:20:21', '2022-05-24 04:28:52', 0, 6),
(64, 'iPhone 8 Plus', 1, 'iphone-8-plus-red_0ef9f18c7adc499a82af3cdbc45b9ecc_grande.jpg', 499, 198, 'iPhone 8 Plus Release\r\nThe Apple iPhone 8 Plus was officially announced on September 12th 2017 at Steve Job’s Theater, Apple Campus II. The smartphone is available for pre-order on September 15th and available on September 22nd.\r\n\r\nThe iPhone 8 and iPhone X were also announced on the same day.', 1, '2020-10-19 09:24:10', '0000-00-00 00:00:00', 0, 2),
(65, 'iPhone 7 Plus', 1, '10035346-dien-thoai-iphone-7-plus-128gb-black-1.jpg', 399, 200, 'Video Playback of iphone 7 plus\r\nH.264 video up to 4K, 30 frames per second, High Profile level 4.2 with AAC‑LC audio up to 160 Kbps, 48kHz, stereo audio or Dolby Audio up to 1008 Kbps, 48kHz, stereo or multichannel audio, in .m4v, .mp4, and .mov file formats; MPEG‑4 video up to 2.5 Mbps, 640 by 480 pixels, 30 frames per second, Simple Profile with AAC‑LC audio up to 160 Kbps per channel, 48kHz, stereo audio or Dolby Audio up to 1008 Kbps, 48kHz, stereo or multichannel audio, in .m4v, .mp4, and .mov file formats; Motion JPEG (M‑JPEG) up to 35 Mbps, 1280 by 720 pixels, 30 frames per second, audio in ulaw, PCM stereo audio in .avi file format', 1, '2020-10-19 09:26:42', '0000-00-00 00:00:00', 0, 0),
(66, 'iPad Air 4', 2, 'air_2_silver_master.jpg', 2099, 91, 'Apple iPad Air (2019) is the product launched by Apple quietly which is 10.5 inches. The device is launched in the month of March 2019.\r\n\r\nApple iPad Air (2019) works with the Pencil released by Apple. The new tablet is all set to boost the performance by 70 percent compared to its predecessor.\r\n\r\nThe device is powered by Apple A12 Bionic APL1W81 processor and the display comes with additional features like Retina display, True Tone display, 500 cd/m², Antireflective coating, Oleophobic (lipophobic) coating, and Wide Color display (P3).\r\n\r\nThe Apple iPad Air (2019) is pack with 2 GB RAM and 64GB and 256 GB of internal storage. The screen of the phone is using the technology of IPS which great.\r\n\r\nThe tablet has a big screen  10.5 inches that give a resolution of 1920 x 1080 pixels, 24 bit. The pixel density is 324 PPI (pixels per inch).\r\n\r\nThe phone is fueled with Li-Polymer battery capacity which is Non-removable. The Apple iPad Air (2019) runs on iOS 12 operating system.\r\n\r\nThe dimension of the tablet is 250.6 x 174.1 x 6.1 mm and 464 grams with battery. The model alias is iPad mini (2019). The body of the tablet is made out of Aluminium alloy.', 1, '2020-10-19 09:30:10', '2022-05-18 11:32:31', 0, 9),
(67, 'iPad Pro 2021', 2, 'ipad-pro-12-select-wifi-silver-202003_FMT_WHH.png', 3000, 84, 'Apple iPad Pro 11 (2021) is officially announced on April 20, 2021.\r\n\r\nThe tablet is enabled with sensors such as Face ID, accelerometer, gyro, proximity, barometer along with Siri natural language commands and dictation.\r\n\r\nThe device is powered by the Apple M1 Octa-core processor and runs on iPad 14.5 operating system. The device is pack with various internal storage options such as 128 GB, 256 GB, 512 GB, 1 TB, and 2 TB while it has 8 GB and 16 GB RAM.\r\n\r\nThe size of the tablet is 11 inches that provide a resolution of 1668 x 2388 pixels. The screen of the tablet is using the technology of Liquid Retina IPS LCD and protected by Scratch-resistant glass and oleophobic coating.\r\n\r\nThe phone is fueled with a non-removable Li-Po 7538 mAh (28.65 Wh) + Fast charging 18W. The Apple iPad Pro 11 (2021) comes in a dimension of 247.6 x 178.5 x 5.9 mm and weighs 466 grams.\r\n\r\nThe body of the tablet is made out of a glass front, aluminum back, and aluminum frame. It supports Nano-SIM and eSIM along with Stylus support (Bluetooth integration; magnetic).', 1, '2020-10-19 09:32:58', '2022-05-24 04:28:52', 0, 16),
(68, 'iPad Mini 2021', 2, '34921_ipad_mini_5_gold_1.png', 1299, 95, 'Apple iPad mini (2021) is officially announced on Sept. 14, 2021.\r\n\r\nThe tablet is powered by an Apple A15 Bionic Hexa-core processor and Apple GPU (5-core) GPU. The dimension of the tablet is 195.4 x 134.8 x 6.3 mm and it weighs 293 grams.\r\n\r\nThe device is built with a glass front, aluminum back, and aluminum frame. It supports Nano-SIM, eSIM, Stylus support (2nd gen only).\r\n\r\nThe display size of the tablet is 8.3 inches Liquid Retina IPS LCD and the resolution is 1488 x 2266 pixels. The screen is protected by Scratch-resistant glass, oleophobic coating and comes with a Wide color gamut and True-tone.\r\n\r\nIt runs on the iPadOS 15 operating system and is packed with 4 GB RAM. As for internal storage, it comes in two options: 64 GB and 256 GB. The camera features 12 MP (wide) on the rear side while on the front, there is a single camera: 12 MP (ultrawide).\r\n\r\nThe sensors include Fingerprint (side-mounted), accelerometer, gyro, compass, barometer, and Siri natural language commands and dictation. The device comes in Space Gray, Pink, Purple, and Starlight.', 1, '2020-10-19 09:36:02', '2022-05-18 11:32:31', 1, 5),
(69, 'Macbook Pro', 3, '01.jpg', 3499, 98, 'MacBook Pro and the Environment\r\nThe 13-inch MacBook Pro is designed with the following features to reduce its environmental impact:5\r\nSee the 13-inch MacBook Pro Product Environmental Report\r\n\r\nMade with better materials\r\n100% recycled tin in the solder of the main logic board\r\nEnclosure made with recyclable, low‑carbon aluminum\r\n35% or more recycled plastic in multiple components\r\nEnergy efficient\r\nENERGY STAR® certified6\r\nSmarter chemistry7\r\nArsenic-free display glass\r\nMercury-free\r\nBFR-, PVC-, and beryllium-free\r\nGreen manufacturing\r\nApple’s Zero Waste Program helps suppliers eliminate waste sent to landfill\r\nAll final assembly supplier sites are transitioning to 100% renewable energy for Apple production\r\nResponsible packaging\r\n100% of virgin wood fiber comes from responsibly managed forests\r\nRecyclable, majority-fiber packaging', 1, '2020-10-19 09:40:25', '0000-00-00 00:00:00', 0, 2),
(70, 'Macbook Air', 3, 'Macbook-Air-2020-MWTL2-MWTJ2_fmcw-b3.png', 3599, 100, 'Should You Buy the MacBook Air?\r\nThe MacBook Air was among the first of Apple\'s Macs to make the transition to Apple silicon, featuring significantly improved performance and battery life in a slim, fanless design. Announced in November of 2020, the MacBook Air is now over a year old, with a new model being expected to arrive later this year.\r\n\r\nApple has updated the MacBook Air erratically in recent years, releasing two new models in 2020 and with no clear pattern prior to that, although the device has been updated every year since 2017. Now that Apple controls its own custom silicon for the MacBook Air, as opposed to using Intel processors, it is likely that the MacBook Air will see updates on a more regular basis in years to come.\r\nThere have been clear signs that an updated MacBook Air with a number of upgrades and improvements is on the way, and rumors suggest that the model will arrive in mid to late 2022.\r\n\r\nUpdated MacBook Air models are believed to be just months away, meaning that it is only advisable to buy a MacBook Air if you urgently need a new machine. For most people, it will likely be better to wait until new models arrive, especially as the next-generation model is shaping up to be a significant upgrade.\r\n\r\nWhile the MacBook Air seems to be the best Apple laptop for portability and price, users who require slightly better performance and battery life, as well as the Touch Bar, should consider the M1 MacBook Pro, which starts at $1,299.\r\n', 1, '2020-10-19 09:44:02', '0000-00-00 00:00:00', 0, 0),
(71, 'AirPods Pro', 4, 'MWP22.jpg', 499, 496, 'The Apple AirPods Pro comes with active noise cancellation for immersive sound. It provides quick access to Siri by saying “Hey Siri”.\r\n\r\nThe Wireless Charging Case delivers more than 24 hours of battery life and the Transparency mode for hearing and connecting with the world around you.\r\n\r\nApple AirPods Pro is easily one of the best wire-free headphones for iOS owners. Unlike other AirPods, the pro version is water-resistant as it comes with an IPX4 rating that makes you worry less about breaking them because of your sweat.', 1, '2020-10-19 09:46:46', '2020-10-19 09:50:06', 1, 4),
(72, 'AirPods 2', 4, 'tai-nghe-bluetooth-airpods-2-apple-mv7n2-trang-avatar-1-600x600.jpg', 299, 500, 'The Apple AirPods 2 (with charging case) are equipped with the new Apple H1 headphone chip. Whether you use AirPods with both ears or only one of them, the H1 chip can automatically transmit audio and activate the microphone.', 1, '2020-10-19 09:49:29', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`) VALUES
(1, 'iPhone'),
(2, 'iPad'),
(3, 'Macbook'),
(4, 'Airpods'),
(12, 'Apple Watch');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `url` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `id_product`, `url`) VALUES
(1, 59, '11-green.jpg'),
(2, 59, '36944_iphone11_white_select_2019.jpg'),
(3, 59, '637037652457717299_11-den.png'),
(4, 60, '637037652457717299_11-den.png'),
(5, 60, '637037687763926758_11-pro-max-xanh.png'),
(6, 61, 'iphone-11-pro-hai-phong-01.jpg'),
(7, 62, '4512fe9898661b5f3746f91370a22158.jpg'),
(8, 62, 'ip12-6.jpg'),
(9, 62, 'iphone-x-silver-2.jpg'),
(10, 63, '4512fe9898661b5f3746f91370a22158.jpg'),
(11, 63, 'ip12-2.jpg'),
(12, 63, 'xs-max-vang-86d20f37-92ab-4803-9b02-1ba2726618bf.png'),
(13, 64, 'iphone-8-plus-128gb-082720-052716-600x600.jpg'),
(14, 64, 'iphone-8-plus-red_0ef9f18c7adc499a82af3cdbc45b9ecc_grande.jpg'),
(15, 65, '636836609818617272_ip7-plus-hong-1.png'),
(16, 65, 'ip7p-32.jpg'),
(17, 66, '61AK3IeXApL._AC_SX466_.jpg'),
(18, 66, '61is5y-+MeL._AC_SL1500_.jpg'),
(19, 67, '61AK3IeXApL._AC_SX466_.jpg'),
(20, 67, '61is5y-+MeL._AC_SL1500_.jpg'),
(21, 68, 'ipadmini5-jpeg-e0657da8-586e-4978-bd63-12022162a565.jpg'),
(22, 68, 'silver_wifi.png'),
(23, 69, '1573663014_1520445.jpg'),
(24, 69, 'apple-macbook-air-2020-vântay-220173-600x600.jpg'),
(25, 70, '726b328e-be3b-4df3-8f27-339819336fb6.jpg'),
(26, 70, '38257_apple_macbook_air_mvh52_1_1.jpg'),
(27, 70, 'apple-macbook-air-2020-vântay-220173-600x600.jpg'),
(28, 71, '600_thumb_airpodpro.jpg'),
(29, 71, 'MWP22.jpg'),
(30, 72, 'apple-airpods-2-with-wireless-charging-case-mrxj2zm-a-white-21032019-01-p.jpg'),
(31, 72, 'MWP22.jpg'),
(32, 71, ''),
(33, 61, 'ip12-4 (1).jpg'),
(34, 62, '');

-- --------------------------------------------------------

--
-- Table structure for table `product_information`
--

CREATE TABLE `product_information` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `display` varchar(256) DEFAULT '0' COMMENT 'Màn hình',
  `operating_system` varchar(256) DEFAULT '0' COMMENT 'Hệ điều hành',
  `front_camera` varchar(256) DEFAULT '0' COMMENT 'Cam trước',
  `rear_camera` varchar(256) DEFAULT '0' COMMENT 'Cam sau',
  `cpu` varchar(256) DEFAULT '0' COMMENT 'CPU',
  `ram` varchar(256) DEFAULT '0' COMMENT 'RAM',
  `rom` varchar(256) DEFAULT '0' COMMENT 'ROM',
  `battery` varchar(256) DEFAULT '0' COMMENT 'Pin',
  `security` varchar(256) DEFAULT '0' COMMENT 'Bảo mật',
  `charging_port` varchar(256) DEFAULT '0' COMMENT 'Cổng sạc',
  `compatible` varchar(256) DEFAULT '0' COMMENT 'Tương thích',
  `sound_technology` varchar(256) DEFAULT '0' COMMENT 'Công nghệ âm thnah',
  `used_time` varchar(256) DEFAULT '0' COMMENT 'Thời gian sử dụng',
  `connect` varchar(256) DEFAULT '0' COMMENT 'Kết nối',
  `weight` varchar(256) DEFAULT '0' COMMENT 'Trọng lượng',
  `brand` varchar(256) DEFAULT '0' COMMENT 'Thương hiệu',
  `made_in` varchar(256) DEFAULT '0' COMMENT 'Sản xuất tại',
  `hard_drive` varchar(256) DEFAULT '0' COMMENT 'Ổ cứng',
  `graphic_card` varchar(256) DEFAULT '0' COMMENT 'Card đồ hoạ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_information`
--

INSERT INTO `product_information` (`id`, `id_product`, `display`, `operating_system`, `front_camera`, `rear_camera`, `cpu`, `ram`, `rom`, `battery`, `security`, `charging_port`, `compatible`, `sound_technology`, `used_time`, `connect`, `weight`, `brand`, `made_in`, `hard_drive`, `graphic_card`) VALUES
(1, 59, 'IPS LCD, 6.1\", Liquid Retina ', 'IOS 13', '12', '2 Camera 12MP', 'Apple A13', '4GB', '64', '3110', '0', 'Lightning', '0', '0', '0', '0', '194 g', '0', 'Viet Nam', '0', '0'),
(2, 60, 'OLED, 6.5\" Super Retina XDR', 'IOS 13', '12', '3 Camera 12 MP', 'Apple A13', '4GB', '256', '3969', '0', 'Lightning', '0', '0', '0', '0', '226g', '0', 'Viet Nam', '0', '0'),
(3, 61, '6.1', 'IOS 13', '12', '2 camera 12 MP', 'Apple A14', '6GB', '128', '4000', '0', 'Lightning', '0', '0', '0', '0', '200g', '0', 'Viet Nam', '0', '0'),
(4, 62, 'OLED 5.1\" Super Retina', 'IOS 12', '7', '2 camera 12MP', 'Apple A12', '4GB', '64', '2658', '0', 'Lightning', '0', '0', '0', '0', '177g', '0', 'Viet Nam', '0', '0'),
(5, 63, 'OLED 6.4\" Super Retina', 'IOS 12', '7', '2 camera 12MP', 'Apple A12', '4GB', '128', '3128', '0', 'Lightning', '0', '0', '0', '0', '261g', '0', 'Viet Nam', '0', '0'),
(6, 64, 'OLED 5.5\" Retina HD', 'IOS 13', '7', '2 camera 12MP', 'Apple A11', '3GB', '128', '2691', '0', 'Lightning', '0', '0', '0', '0', '202g', '0', 'Viet Nam', '0', '0'),
(7, 65, 'OLED 5.5\" Retina HD', 'IOS 13', '7', '2 camera 12MP', 'Apple A10', '3GB', '32', '2900', '0', 'Lightning', '0', '0', '0', '0', '201g', '0', 'Viet Nam', '0', '0'),
(8, 66, 'Liquid Retina 10.8\"', 'iPadOS 14', '7', '12MP', 'Apple A14', '6GB', '256', '3000', '0', 'Type-C', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(9, 67, 'Liquid Retina 11\"', 'iPadOS 13', '7', '12MP', 'Apple A12Z', '6GB', '128', '7600', '0', 'Type-C', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10, 68, 'LCD 7.9\"', 'iPadOS 13', '7', '8MP', 'Apple A12', '3GB', '64', '5124', '0', 'Type-C', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(11, 69, '13.3 Super Retina', 'Mac OS', '10', '0', 'Intel Core i5 8th', '8GB LPDDR3', '128', '10000', '0', 'Lightning', '0', '0', '0', '2 x USB-C', '1.4Kg', '0', '0', 'SSD 256GB', 'Intel Iris Plus Graphics 645'),
(12, 70, '13.3\" Retina', 'Mac OS', '12', '0', 'Intel Core i5 10th', '8GB LPDDR4X', '0', '15000', '0', 'Lightning', '0', '0', '0', '2 x USB-C', '1.29Kg', '0', '0', 'SSD 256GB', 'Intel Iris Plus Graphics'),
(13, 71, '0', '0', '0', '0', '0', '0', '0', '5000', '0', 'Lightning', 'MacOS, iOS', 'Active Noise Cancelling', '4.5h', '1 device', '0', '0', '0', '0', '0'),
(14, 72, '0', '0', '0', '0', '0', '0', '0', '3000 mAh', '0', 'Lightning', 'Android, iOS', 'Active Noise Pro', '5h', '1 device', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `site_mail`
--

CREATE TABLE `site_mail` (
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `site_mail`
--

INSERT INTO `site_mail` (`username`, `password`) VALUES
('test.khanhnhu25@gmail.com', 'Test44448888');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `fullname` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(100) NOT NULL,
  `lv` int(11) NOT NULL DEFAULT 100,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `email`, `password`, `lv`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Luong Van Nhu', 'luongvannhu@gmail.com', '1', 1, 1, '2022-05-19 08:34:14', '2022-05-26 08:34:14'),
(2, 'khanhnhu', 'Luong Khanh Nhu', 'khanhnhu@gmail.com', '1', 100, 1, '2022-05-11 08:50:30', '2020-10-28 14:24:55'),
(5, 'thinhu123', 'Lương Thị Như', 'luongthinhu@gmail.com', '789', 15, 1, '0000-00-00 00:00:00', '2020-10-12 14:30:13'),
(7, 'Nhu', 'Như', 'nhu@gmail.com', 'nhu123456', 15, 1, '2020-09-12 11:51:17', '2020-10-12 14:32:11'),
(8, 'nhu123', 'nhu', 'nhu123@gmail.com', '123456789', 15, 1, '2020-09-25 02:41:12', '2020-10-12 14:32:47'),
(9, 'khanhnhu123', 'Nhu', 'luongvannhu2512@gmail.com', 'khanhnhu2', 15, 1, '2020-09-29 09:25:02', '2020-10-12 14:33:10'),
(10, 'hyung', 'Lê Việt Hưng', 'viethung4869@gmail.com', '$2y$10$BY79FF9bdNbOjEOKSTxcdeQL1DSWBq1CF1bTWDVLN/wL/m3g.7iTm', 100, 1, '2022-05-17 15:41:57', '2022-05-17 15:41:57'),
(11, 'hung', 'Vy Hùng', 'vyvanhung2882001bg@gmail.com', '$2y$10$n6CLXmfDz.tSEode/IhO0.DIyOM8kPmTMdxIq.hiOMssOTJzZstwy', 1, 1, '2022-05-23 14:58:55', '2022-05-23 14:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id_lv` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id_lv`, `name`) VALUES
(1, 'admin'),
(15, 'Staff'),
(100, 'Customers');

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id_lv` int(11) NOT NULL,
  `dashboard` int(11) NOT NULL,
  `product_see` int(11) NOT NULL,
  `product_add` int(11) NOT NULL,
  `product_edit` int(11) NOT NULL,
  `product_delete` int(11) NOT NULL,
  `order_see` int(11) NOT NULL,
  `order_confirm` int(11) NOT NULL,
  `order_delete` int(11) NOT NULL,
  `user_see` int(11) NOT NULL,
  `user_edit` int(11) NOT NULL,
  `permission` int(11) NOT NULL,
  `notifications` int(11) NOT NULL,
  `management` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id_lv`, `dashboard`, `product_see`, `product_add`, `product_edit`, `product_delete`, `order_see`, `order_confirm`, `order_delete`, `user_see`, `user_edit`, `permission`, `notifications`, `management`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0),
(100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `management_image_banner`
--
ALTER TABLE `management_image_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_ibfk_1` (`lv`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_detail_ibfk_1` (`id_order`),
  ADD KEY `order_detail_ibfk_2` (`id_product`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ibfk_1` (`type`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `product_information`
--
ALTER TABLE `product_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produtc_productinfor` (`id_product`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `user_ibfk_1` (`lv`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_lv`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id_lv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `management_image_banner`
--
ALTER TABLE `management_image_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `product_information`
--
ALTER TABLE `product_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id_lv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`lv`) REFERENCES `user_level` (`id_lv`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `order_list` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`type`) REFERENCES `product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_information`
--
ALTER TABLE `product_information`
  ADD CONSTRAINT `produtc_productinfor` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD CONSTRAINT `user_permissions_ibfk_1` FOREIGN KEY (`id_lv`) REFERENCES `user_level` (`id_lv`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
