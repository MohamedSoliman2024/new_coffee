-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2025 at 01:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee`
--

-- --------------------------------------------------------

--
-- Table structure for table `descounts`
--

CREATE TABLE `descounts` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_det` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `descount` int(11) NOT NULL,
  `img_name` varchar(200) NOT NULL,
  `date_descount` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `descounts`
--

INSERT INTO `descounts` (`id`, `product_name`, `product_det`, `price`, `descount`, `img_name`, `date_descount`) VALUES
(1, 'سي', 'سيب', 32, 3, 'star_coffee_19-FB_IMG_1700772782767.jpg', '2025-07-18'),
(2, 'عرض رقم 2', 'تفاصيل العرض رقم 2', 342, 32, 'star_coffee_18-FB_IMG_1700772948297.jpg', '2025-07-06'),
(3, 'عرض رقم 3', 'تفاصيل العرض رقم 3', 315, 33, 'star_coffee_90-FB_IMG_1700772782767.jpg', '2025-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `final_data`
--

CREATE TABLE `final_data` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `delivery` int(11) NOT NULL,
  `num_of_product` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `final_data`
--

INSERT INTO `final_data` (`id`, `price`, `date`, `delivery`, `num_of_product`, `product_name`) VALUES
(1, 3216, '2025-07-06 14:16:57', 20, 3, 'سي_قهوه نكهات 1_قهوه نكهات 2'),
(2, 0, '2025-07-06 14:17:57', 20, 0, ''),
(3, 0, '2025-07-06 14:18:21', 0, 0, ''),
(4, 2138, '2025-07-06 14:21:50', 20, 3, 'عرض رقم 2_قهوه تركي7_قهوه نكهات 2');

-- --------------------------------------------------------

--
-- Table structure for table `final_product`
--

CREATE TABLE `final_product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `details` varchar(250) NOT NULL,
  `category` varchar(50) NOT NULL,
  `pay` char(3) NOT NULL,
  `code_product` varchar(11) NOT NULL,
  `delivery` int(11) NOT NULL,
  `num_product` int(11) NOT NULL,
  `T_price` int(11) NOT NULL,
  `date_uploade` datetime NOT NULL DEFAULT current_timestamp(),
  `id_user` int(11) NOT NULL,
  `got` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `final_product`
--

INSERT INTO `final_product` (`id`, `product_name`, `type`, `color`, `size`, `price`, `details`, `category`, `pay`, `code_product`, `delivery`, `num_product`, `T_price`, `date_uploade`, `id_user`, `got`) VALUES
(11, 'عرض رقم 3', '', '', '', 315, '', '', 'pay', 'dsfd32', 20, 2, 630, '2025-07-06 14:20:43', 5, 0),
(12, 'قهوه نكهات 2', 'وسط', 'محوج', '125g', 544, '', 'قهوة نكهات', 'pay', 'dsfd32', 20, 1, 544, '2025-07-06 14:20:43', 5, 0),
(13, 'قهوه نكهات 2', 'غامق', 'محوج', '125g', 544, '', 'قهوة نكهات', 'pay', 'dsfd32', 20, 1, 544, '2025-07-06 14:20:44', 5, 0),
(14, 'عرض رقم 3', '', '', '', 315, '', '', 'pay', 'dsfd32', 20, 2, 630, '2025-07-08 14:48:14', 6, 0),
(15, 'قهوه نكهات 3', 'وسط', 'محوج دوبل', '125g', 128, '', 'قهوة نكهات', 'pay', 'dsfd32', 20, 3, 384, '2025-07-08 14:48:14', 6, 0),
(16, 'قهوه تركي 3', 'وسط', 'محوج دوبل', '125g', 112, '', 'قهوة تركي', 'pay', 'dsfd32', 20, 3, 336, '2025-07-08 14:48:14', 6, 0),
(17, 'قهوه تركي 1', 'فاتح', 'محوج دوبل', '125g', 131, '', 'قهوة تركي', 'pay', 'dsfd32', 20, 2, 262, '2025-07-08 14:48:14', 6, 0),
(18, 'سي', '', '', '', 32, '', '', 'no', 'dsfd32', 20, 1, 32, '2025-07-08 14:50:23', 7, 0),
(19, 'قهوه تركي5', 'غامق', 'محوج', '125g', 93, '', 'قهوة تركي', 'no', 'dsfd32', 20, 2, 186, '2025-07-08 14:50:23', 7, 0),
(20, 'قهوه تركي 3', 'فاتح', 'ساده', '125g', 112, '', 'قهوة تركي', 'no', 'dsfd32', 20, 2, 224, '2025-07-08 14:50:23', 7, 0),
(21, 'قهوه تركي 2', 'غامق', 'محوج', '125g', 91, '', 'قهوة تركي', 'no', 'dsfd32', 20, 1, 91, '2025-07-08 14:51:26', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `id_user`
--

CREATE TABLE `id_user` (
  `id` int(11) NOT NULL,
  `date_id` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `id_user`
--

INSERT INTO `id_user` (`id`, `date_id`) VALUES
(14001671, '2026-07-06'),
(1328476359, '2026-07-06');

-- --------------------------------------------------------

--
-- Table structure for table `messag`
--

CREATE TABLE `messag` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `text` varchar(255) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `date_msg` datetime NOT NULL DEFAULT current_timestamp(),
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category` varchar(25) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(250) NOT NULL,
  `img_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category`, `product_name`, `price`, `description`, `img_name`) VALUES
(24, 'قهوة تركي', 'قهوه تركي 2', 91, 'هذا وصف المنتج قهوه تركي 2', 'star_coffee_63-WhatsApp Image 2024-11-20 at 10.37.17 PM.jpeg'),
(25, 'مشتقات قهوة', 'مشتقات قهوه1', 212, 'هذا وصف المنتج مشتقات قهوه 1', 'star_coffee_92-FB_IMG_1699000676837.jpg'),
(26, 'قهوة نكهات', 'قهوه نكهات 1', 244, 'هذا وصف المنتج قهوه نكهات 1', 'star_coffee_75-FB_IMG_1699000696147.jpg'),
(27, 'قهوة تركي', 'قهوه تركي 1', 131, 'هذا وصف المنتج قهوه تركي 1', 'star_coffee_46-FB_IMG_1699084659184.jpg'),
(28, 'قهوة تركي', 'قهوه تركي 3', 112, 'هذا وصف المنتج قهوه تركي 3', 'star_coffee_12-FB_IMG_1699084692112.jpg'),
(29, 'قهوة نكهات', 'قهوه نكهات 2', 544, 'هذا وصف المنتج قهوه نكهات 2', 'star_coffee_55-FB_IMG_1699084678302.jpg'),
(30, 'مشتقات قهوة', 'مشتقات قهوه2', 67, 'هذا وصف المنتج مشتقات قهوه 2', 'star_coffee_54-FB_IMG_1699084674071.jpg'),
(31, 'قهوة نكهات', 'قهوه نكهات 3', 128, 'هذا وصف المنتج قهوه نكهات 3', 'star_coffee_62-FB_IMG_1699089782051.jpg'),
(32, 'مشتقات قهوة', 'مشتقات قهوه3', 312, 'هذا وصف المنتج مشتقات قهوه 3', 'star_coffee_10-FB_IMG_1699089783917.jpg'),
(33, 'قهوة تركي', 'قهوه تركي4', 231, 'هذا وصف المنتج قهوه تركي 4', 'star_coffee_44-FB_IMG_1699089777195.jpg'),
(34, 'قهوة تركي', 'قهوه تركي5', 93, 'هذا وصف المنتج قهوه تركي 5', 'star_coffee_43-FB_IMG_1700772423194.jpg'),
(35, 'قهوة نكهات', 'قهوه نكهات 4', 74, 'هذا وصف المنتج قهوه نكهات 4', 'star_coffee_13-FB_IMG_1700772547946.jpg'),
(36, 'قهوة نكهات', 'قهوه نكهات 5', 84, 'هذا وصف المنتج قهوه نكهات 5', 'star_coffee_49-FB_IMG_1700772443276.jpg'),
(37, 'مشتقات قهوة', 'مشتقات قهوه4', 113, 'هذا وصف المنتج مشتقات قهوه 4', 'star_coffee_80-FB_IMG_1700772841415.jpg'),
(38, 'مشتقات قهوة', 'مشتقات قهوه5', 59, 'هذا وصف المنتج مشتقات قهوه 5', 'star_coffee_44-FB_IMG_1700772862965.jpg'),
(39, 'قهوة تركي', 'قهوه تركي6', 123, 'هذا وصف المنتج قهوه تركي 6', 'star_coffee_71-FB_IMG_1700813137466.jpg'),
(40, 'قهوة تركي', 'قهوه تركي7', 122, 'هذا وصف المنتج قهوه تركي 7', 'star_coffee_0-FB_IMG_1700813154281.jpg'),
(41, 'قهوة تركي', 'قهوه تركي 8', 212, 'هذا وصف المنتج قهوه تركي 8', 'star_coffee_42-FB_IMG_1700813131843.jpg'),
(42, 'قهوة تركي', 'قهوه تركي 9', 211, 'هذا وصف المنتج قهوه تركي 9', 'star_coffee_20-FB_IMG_1700813122723.jpg'),
(43, 'مشتقات قهوة', 'مشتقات قهوه6', 231, 'هذا وصف المنتج مشتقات قهوه 6', 'star_coffee_33-FB_IMG_1700772192443.jpg'),
(44, 'مشتقات قهوة', 'مشتقات قهوه7', 312, 'هذا وصف المنتج مشتقات قهوه 7', 'star_coffee_1-'),
(45, 'مشتقات قهوة', 'مشتقات قهوه8', 111, 'هذا وصف المنتج مشتقات قهوه8', 'star_coffee_34-FB_IMG_1700593005322.jpg'),
(46, 'قهوة نكهات', 'قهوه نكهات 6', 36, 'هذا وصف المنتج قهوه نكهات6 ', 'star_coffee_57-FB_IMG_1700593020966.jpg'),
(47, 'قهوة نكهات', 'قهوه نكهات 7', 222, 'هذا وصف المنتج قهوه نكهات 7', 'star_coffee_54-FB_IMG_1700592832709.jpg'),
(48, 'قهوة نكهات', 'قهوه نكهات 8', 323, 'هذا وصف المنتج قهوه نكهات 8', 'star_coffee_46-FB_IMG_1700592858416.jpg'),
(49, 'قهوة نكهات', 'قهوه نكهات 9', 231, 'هذا وصف المنتج قهوه نكهات 9', 'star_coffee_69-FB_IMG_1700593672751.jpg'),
(50, 'قهوة نكهات', 'قهوه نكهات 10', 42, 'هذا وصف المنتج قهوه نكهات 10', 'star_coffee_33-FB_IMG_1700593700714.jpg'),
(51, 'قهوة نكهات', 'قهوه نكهات 11', 95, 'هذا وصف المنتج قهوه نكهات 11', 'star_coffee_29-FB_IMG_1700593686686.jpg'),
(52, 'قهوة نكهات', 'قهوه نكهات 12', 156, 'هذا وصف المنتج قهوه نكهات 12', 'star_coffee_65-FB_IMG_1698936888280.jpg'),
(53, 'قهوة نكهات', 'قهوه نكهات 13', 178, 'هذا وصف المنتج قهوه نكهات 13', 'star_coffee_69-FB_IMG_1698936902747.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shopping`
--

CREATE TABLE `shopping` (
  `id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `num_of_pro` int(11) NOT NULL,
  `img_name` varchar(200) NOT NULL,
  `id_descount` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_product`
--

CREATE TABLE `shopping_product` (
  `id` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `num_of_pro` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `name1` varchar(50) NOT NULL,
  `name2` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `area` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `id_user`, `name1`, `name2`, `city`, `area`, `street`, `phone`) VALUES
(1, 14001671, 'محمد', 'سليمان', 'الاسماعيليه', 'ابوخليفه', 'شارع الازهر ', '01012928814'),
(2, 1328476359, 'احمد', 'خالد', 'القاهره', 'عزبه النخل', 'شارع الازهر', '01284343464'),
(3, 1328476359, 'احمد', 'سامس', 'القاهره', 'عزبه النخل', 'شارع الازهر', '01284343464'),
(4, 1328476359, 'احمد', 'سامس', 'القاهره', 'عزبه النخل', 'شارع الازهر', '01284343464'),
(5, 1328476359, 'احمد', 'سامس', 'القاهره', 'عزبه النخل', 'شارع الازهر', '01284343464'),
(6, 14001671, 'محمد', 'سليمان', 'الاسماعيليه', 'ابوخليفه', 'شارع الازهر ', '01012928814'),
(7, 1328476359, 'احمد', 'سامس', 'القاهره', 'عزبه النخل', 'شارع الازهر', '01284343464'),
(8, 1328476359, 'd', 'سامس', 'القاهره', 'عزبه النخل', 'شارع الازهر', '01284343464');

-- --------------------------------------------------------

--
-- Table structure for table `view_month`
--

CREATE TABLE `view_month` (
  `id` int(11) NOT NULL,
  `name` date NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `view_month`
--

INSERT INTO `view_month` (`id`, `name`, `number`) VALUES
(1, '2025-07-06', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `descounts`
--
ALTER TABLE `descounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_data`
--
ALTER TABLE `final_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_product`
--
ALTER TABLE `final_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ewdsfdsf` (`id_user`);

--
-- Indexes for table `id_user`
--
ALTER TABLE `id_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messag`
--
ALTER TABLE `messag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping`
--
ALTER TABLE `shopping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dhgsfdas` (`id_descount`),
  ADD KEY `afgdf` (`id_user`);

--
-- Indexes for table `shopping_product`
--
ALTER TABLE `shopping_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adsgfd` (`id_user`),
  ADD KEY `ddsdfs` (`id_product`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SADSFDGF` (`id_user`);

--
-- Indexes for table `view_month`
--
ALTER TABLE `view_month`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `descounts`
--
ALTER TABLE `descounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `final_data`
--
ALTER TABLE `final_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `final_product`
--
ALTER TABLE `final_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `messag`
--
ALTER TABLE `messag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `shopping`
--
ALTER TABLE `shopping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `shopping_product`
--
ALTER TABLE `shopping_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `view_month`
--
ALTER TABLE `view_month`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `final_product`
--
ALTER TABLE `final_product`
  ADD CONSTRAINT `ewdsfdsf` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shopping`
--
ALTER TABLE `shopping`
  ADD CONSTRAINT `afgdf` FOREIGN KEY (`id_user`) REFERENCES `id_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dhgsfdas` FOREIGN KEY (`id_descount`) REFERENCES `descounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shopping_product`
--
ALTER TABLE `shopping_product`
  ADD CONSTRAINT `adsgfd` FOREIGN KEY (`id_user`) REFERENCES `id_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ddsdfs` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `SADSFDGF` FOREIGN KEY (`id_user`) REFERENCES `id_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
