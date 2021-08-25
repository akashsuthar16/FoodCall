-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2021 at 05:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2018-04-09 07:36:18'),
(9, 'akash', 'dfebd013c81b49bf0e9910bc03f5c8ef', 'akashsuthar9988@gmail.com', 'QMZR92', '2021-03-06 18:08:03'),
(10, 'admin1', 'dfebd013c81b49bf0e9910bc03f5c8ef', 'deep@gmail.com', 'QMTZ2J', '2021-04-08 09:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Contact_Number` varchar(20) NOT NULL,
  `Email` text NOT NULL,
  `Password` varchar(100) NOT NULL,
  `D_L_Image` text NOT NULL,
  `Vehical_Num` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`id`, `username`, `First_Name`, `Last_Name`, `Contact_Number`, `Email`, `Password`, `D_L_Image`, `Vehical_Num`) VALUES
(7, 'admin1', 'admin', 'ad', '7016254188', 'deep@gmail.com', '123456+789', 'GJ1AK9988 ', '6083a8f66b726.jpg'),
(8, 'nikhil12', 'nikhil', 'patil', '6498496487', 'nikhil12@gmail.com', 'Gj18FF7630', 'Gj18FF7630', '6088f0449d416.jpg'),
(9, 'chint', 'asjgfuyks', 'sdhbf', '6498496487', 'deep@gmail.com', '123456789', 'Gj18FF7630', '60e32941b1ebb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 53, 'Margherita', 'Find the perfect margherita pizza ', '219.00', '6048a3172bd71.jpg'),
(19, 53, 'Peppy Paneer', 'Find the perfect Peppy Paneer pizza ', '350.00', '6048a3c329aa4.jpg'),
(20, 57, 'Masala Dhosa', 'Find the perfect Dhosa For you', '98.00', '6048a8ec526da.jpg'),
(21, 57, 'Cheese Dhosa', 'Find the perfect Cheese Dhosa For You', '160.00', '6048a9165bc51.jpg'),
(22, 58, 'Idali ', 'Find the perfect Idali Dish For You', '50.00', '6048a9630a309.jpg'),
(23, 58, 'Masala Dhosa', 'Find the perfect Dhosa For you', '90.00', '6048a9abd6601.jpg'),
(24, 57, 'Long Paper Dhosa', 'Find the Biggest Dhosa For You', '400.00', '6048a9dcb764d.jpg'),
(25, 55, 'Mango Lassi', 'Find the Best Lassi For you', '40.00', '6048ab612d1a0.jpg'),
(26, 55, 'Mataka Lassi', 'Find the Best Mataka Lassi For you', '70.00', '6048abce71539.jpg'),
(27, 59, 'Chocolate Ice-Creame', 'This is Very Unique Ice-Creme', '250.00', '6048ac118e2f9.jpg'),
(28, 54, 'Noodles', 'Find the perfect Noodles For you', '110.00', '6048acf2e5dfc.jpg'),
(29, 54, 'Manchurian', 'Find the perfect manchurian For you', '150.00', '6048ad2a0b094.jpg'),
(30, 56, 'Aloo Parata', 'Find the Best Aloo Paratha For you', '80.00', '6048ade33e5e8.jpg'),
(31, 56, 'Keema Paratha', 'Find the perfect Keema Paratha For you', '200.00', '6048ae14f067a.jpg'),
(32, 60, 'chole bhature', 'find the perfect vadapav', '50.00', '604f119409cc0.jpg'),
(33, 60, 'roti', 'find the perfect roti for you', '10.00', '604f11c059bbe.jpg'),
(34, 54, 'dhosa', 'this is a vary hung food disece', '50.00', '60890b4c8e27a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2018-04-18 17:35:52'),
(63, 32, 'closed', 'cc', '2018-04-18 17:36:46'),
(64, 32, 'in process', 'fff', '2018-04-18 18:01:37'),
(65, 32, 'closed', 'its delv', '2018-04-18 18:08:55'),
(66, 34, 'in process', 'on a way', '2018-04-18 18:56:32'),
(67, 35, 'closed', 'ok', '2018-04-18 18:59:08'),
(68, 37, 'in process', 'on the way!', '2018-04-18 19:50:06'),
(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2018-04-18 19:51:19'),
(70, 37, 'closed', 'delivered success', '2018-04-18 19:51:50'),
(71, 39, 'in process', 'wait time', '2021-03-03 14:49:43'),
(72, 39, 'closed', 'good', '2021-03-03 14:51:35'),
(73, 48, 'rejected', 'cccc', '2021-03-03 15:08:25'),
(74, 51, 'in process', 'wait order', '2021-03-05 05:23:56'),
(75, 51, 'closed', 'done', '2021-03-05 05:29:20'),
(76, 59, 'in process', 'whait', '2021-03-08 04:08:17'),
(77, 59, 'closed', 'done', '2021-03-08 04:08:46'),
(78, 61, 'in process', 'sdfg', '2021-03-08 05:58:51'),
(79, 62, 'in process', 'fgh', '2021-03-08 06:03:15'),
(80, 62, 'closed', 'gb', '2021-03-08 06:03:53'),
(81, 63, 'in process', 'wait', '2021-03-08 08:58:49'),
(82, 63, 'closed', 'fdhf', '2021-03-08 08:59:22'),
(83, 66, 'in process', 'wait a process', '2021-03-15 06:13:33'),
(84, 67, 'closed', 'done', '2021-03-15 06:14:19'),
(85, 73, 'in process', 'wait', '2021-04-08 09:12:16'),
(86, 73, 'closed', 'done', '2021-04-08 09:12:55'),
(87, 75, 'closed', 'Done', '2021-04-24 14:51:02'),
(88, 76, 'closed', 'Done', '2021-04-28 07:16:07'),
(89, 77, 'rejected', 'a', '2021-04-28 07:17:26'),
(90, 78, 'in process', 'wait', '2021-07-05 15:43:57'),
(91, 79, 'closed', 'done', '2021-07-05 15:44:58'),
(92, 78, 'closed', 'done', '2021-07-05 15:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(53, 11, 'Pizza Point', 'pp00@gmail.com', '4512545784', 'kari.com', '9am', '8pm', 'mon-sat', 'B-5,Syam Sikhar, Bapunagar, Ahmedabad-380024', '6048956cb9d19.jpg', '2021-03-10 09:46:20'),
(54, 14, 'Martini Chinese', 'martini@gmail.com', '7896325410', 'martini.com', '11am', '8pm', 'mon-sat', 'Shop 4, Dipak Comple, Nikol, Ahmedabad', '60489fa0d8091.jpg', '2021-03-10 10:29:52'),
(55, 13, 'Janta Ice Wale', 'janta@gmail.com', '7520920333', 'janta.com', '8am', '8pm', 'mon-sat', '39, Bhavna Business Hub, Nava Naroda,Ahmedabad', '6048a0a4a2493.jpg', '2021-03-10 10:34:12'),
(56, 12, 'Masi Na Paratha', 'masi@gmail.com', '7016254188', 'masi.com', '8am', '8pm', '24hr-x7', '215, Shital Chaya, Near Rabari Colony, Ahmedabad', '6048a1620ae8c.jpg', '2021-03-10 10:37:22'),
(57, 16, ' Dhosa.Com', 'dhosa@gmail.com', '7046924130', 'dhosa.com', '7am', '7pm', 'mon-fri', ' D-17, Vijay Selles opp, Thakkar Nagar, Ahmedabad ', '604ee6bf57c3d.jpg', '2021-03-15 04:46:55'),
(58, 16, 'Idali Dhosa', 'idalidhosa@gmail.com', '7874654645', 'idalidhosa.com', '10am', '8pm', 'mon-sat', ' Sec-23,Gandhinagar ', '604ee67278d0c.jpg', '2021-03-15 04:45:38'),
(59, 13, 'Ice Cream Toilet Restaurant', 'toilet@gmail.com', '4645656546', 'toilet.com', '7am', '8pm', '24hr-x7', 'Sec-02, Gandhinagar', '6048aaef77cac.jpg', '2021-03-10 11:18:07'),
(60, 11, 'indian', 'indian@gmail.com', '7046924130', 'http:/indian.com', '9am', '7pm', 'mon-sat', 'odhav,Ahmedabad', '604f112200cc2.jpg', '2021-03-15 07:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(11, 'Pizza', '2021-03-10 09:37:59'),
(12, 'Paratha', '2021-03-10 09:39:45'),
(13, 'Ice-Cream', '2021-03-10 09:40:41'),
(14, 'Chinese', '2021-03-10 09:41:43'),
(16, 'south-indian', '2021-03-15 04:44:37'),
(17, 'gujrati', '2021-07-05 15:40:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(33, 'akash123', 'Akash', 'suthar', 'akash@gmail.com', '9104613250', '72ef130261de074dadae77fb1241d231', '4 ,dipak bhavana colony, bapunager.', 1, '2021-03-10 09:31:14'),
(35, 'raj12', 'raj', 'jani', 'raj@gmail.com', '7016254188', 'cac5ff630494aa784ce97b9fafac2500', 'a-32,vidhya nagar, rajlxmi, ahmedabad-382400', 1, '2021-03-06 11:33:21'),
(37, 'np011', 'Nik', 'Patil', 'np01@gmail.com', '8866210909', 'e10adc3949ba59abbe56e057f20f883e', '4 ,dipak bhavana colony, bapunager.', 1, '2021-03-08 06:01:48'),
(38, 'bhavik12', 'Bhavik', 'patel', 'bhavik12@gmail.com', '7046924130', '14e1b600b1fd579f47433b88e8d85291', '4 ,dipak bhavana colony, bapunager.', 1, '2021-03-10 09:32:30'),
(40, 'aum123', 'aum', 'patel', 'aum123@gmail.com', '6849164894', 'cfbf5418f4ba4ed74669c2a8854dc838', '4 ,dipak bhavana colony, bapunager.', 1, '2021-03-15 05:33:20'),
(42, 'aravind1', 'aravind', 'mistry', 'aravind1@gmail.com', '7046924130', 'de3f6e4ace89398fec41909c9788eff8', '4 ,dipak bhavana colony, bapunager.', 1, '2021-04-24 14:49:15'),
(43, 'raj1', 'raj', 'mevada', 'raj1@gmail.com', '9865742315', '25f9e794323b453885f5181f1b624d0b', '', 1, '2021-04-28 07:10:54'),
(44, 'chintu1', 'chintu', 'suthar', 'chintu1@gmail.com', '6354656165', '25f9e794323b453885f5181f1b624d0b', '7;fbufbciwucniuwiuhnciasncinsaiuhciahnsicni', 1, '2021-07-05 15:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(59, 36, 'Red Robins Chick on a Stick', 5, '34.99', 'closed', '2021-03-08 04:08:46'),
(63, 38, 'Lyfe Kitchens Tofu Taco', 10, '11.99', 'closed', '2021-03-08 08:59:22'),
(65, 39, 'Chocolate Ice-Creame', 1, '250.00', NULL, '2021-03-11 06:48:42'),
(67, 40, 'Manchurian', 5, '150.00', 'closed', '2021-03-15 06:14:20'),
(75, 42, 'Manchurian', 1, '150.00', 'closed', '2021-04-24 14:51:02'),
(76, 43, 'Margherita', 5, '219.00', 'closed', '2021-04-28 07:16:07'),
(77, 43, 'Peppy Paneer', 2, '350.00', 'rejected', '2021-04-28 07:17:26'),
(78, 44, 'Noodles', 10, '110.00', 'closed', '2021-07-05 15:45:27'),
(79, 44, 'Manchurian', 2, '150.00', 'closed', '2021-07-05 15:44:58'),
(80, 44, 'Mataka Lassi', 1, '70.00', NULL, '2021-07-05 15:35:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`Email`) USING HASH;

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
