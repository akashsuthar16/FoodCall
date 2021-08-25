-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2021 at 05:52 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'dfebd013c81b49bf0e9910bc03f5c8ef', '2021-02-26 07:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 123456789, 'test@gmail.com', 1, '2020-07-07', '2020-07-09', 'What  is the cost?', 1, '2020-07-07 14:03:09', NULL),
(2, 987456321, 'test@gmail.com', 4, '2020-07-19', '2020-07-24', 'hfghg', 1, '2020-07-09 17:49:21', '2020-07-11 12:20:57'),
(3, 751866805, 'np01@gmail.com', 9, '2021-02-23', '2021-02-24', 'dfvnfsdm,ss', 2, '2021-02-23 16:21:52', '2021-02-24 08:50:47'),
(4, 196664376, 'np01@gmail.com', 10, '2021-02-23', '2021-02-24', 'aqfsghdj', 2, '2021-02-23 16:24:00', '2021-02-23 16:59:48'),
(5, 483892868, 'np01@gmail.com', 11, '2021-02-24', '2021-02-24', 'swxedcrfvgbynhgtfrdefrtghyujki', 1, '2021-02-23 16:57:15', '2021-02-23 16:59:00'),
(6, 593802389, 'akash@gmail.com', 9, '2021-02-21', '2021-02-22', 'ass', 2, '2021-02-24 08:49:21', '2021-02-24 08:51:48'),
(7, 393871082, 'akash@gmail.com', 10, '2021-02-24T15:30', '2021-02-25T17:00', 'xf', 2, '2021-02-24 09:13:37', '2021-02-24 09:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(8, 'JCB', '2021-02-23 15:43:08', NULL),
(9, 'VOLVO', '2021-02-23 15:43:12', NULL),
(10, 'L&T', '2021-02-23 15:43:20', NULL),
(11, 'TATA', '2021-02-23 15:43:24', NULL),
(12, 'ACE', '2021-03-05 18:30:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kunal ', 'kunal@gmail.com', '7977779798', 'I want to know you brach in Chandigarh?', '2020-07-07 09:34:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<div><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">JCB India launched the 3DX Backhoe Loader, building further on the concept started by company in India in 1980. The earthmoving and construction machine features a loader at JCB has made huge investment in upgrading its manufacturing plants, research and development cells. The new machine provides innumerable benefits to its customers including 20% lower fuel consumption in excavation and saving Rs. 2.25 lakhs per annum to its customers at the current diesel prices.&nbsp;</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\">As we are not affiliated with any specific vehicle maker, we are able to provide a variety of vehicle makes and models for customers to rent.</span><div><span style=\"color: rgb(62, 62, 62); font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 11px;\">Besides, the machine has been strengthened and a more reliable rear axle gives trouble-free life. With robust king pin design and a new JCB transmission for better dozing, it has been ergonomically designed with 20% more cabin space keeping in mind the requirement of the operator and the new bonnet with better service access, enables the operator to easily carry out daily maintenance, routine and necessary checks</span></div></div>'),
(3, 'About Us ', 'aboutus', '<div><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">JCB India launched the 3DX Backhoe Loader, building further on the concept started by company in India in 1980. The earthmoving and construction machine features a loader at JCB has made huge investment in upgrading its manufacturing plants, research and development cells. The new machine provides innumerable benefits to its customers including 20% lower fuel consumption in excavation and saving Rs. 2.25 lakhs per annum to its customers at the current diesel prices.&nbsp;</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\">As we are not affiliated with any specific vehicle maker, we are able to provide a variety of vehicle makes and models for customers to rent.</span><div><span style=\"color: rgb(62, 62, 62); font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 11px;\">Besides, the machine has been strengthened and a more reliable rear axle gives trouble-free life. With robust king pin design and a new JCB transmission for better dozing, it has been ergonomically designed with 20% more cabin space keeping in mind the requirement of the operator and the new bonnet with better service access, enables the operator to easily carry out daily maintenance, routine and necessary checks</span></div></div>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(2, 'np01@gmail.com', 'I am Satisfied with their service, Great job...', '2021-02-23 19:55:31', 1),
(3, 'akash@gmail.com', 'I\'m Feel Amazing Experience to use this Service.', '2021-02-24 08:53:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Test', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '6465465465', '', 'Odhav,Ahmedabad', 'Ahmedabad', 'Ahmedabad', '2020-07-07 14:00:49', '2021-02-24 09:23:16'),
(2, 'Nikhil Patil', 'np01@gmail.com', '294d04e9f5bd67f209e235e2c5b4aa86', '8866210909', '', 'ADD', '', '', '2021-02-23 16:20:41', '2021-02-23 19:54:24'),
(5, 'Akash Suthar', 'akash@gmail.com', '26a991ce0d465e436476785a8a254a6b', '9104613250', '', 'dfg', '', '', '2021-02-24 07:29:29', '2021-02-24 08:55:12'),
(6, 'ronak patel', 'ronak@gmail.com', '33839bec526649194cd36b3734558211', '9104687996', NULL, NULL, NULL, NULL, '2021-02-24 09:54:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Maruti Suzuki Wagon R', 1, 'Maruti Wagon R Latest Updates\r\n\r\nMaruti Suzuki has launched the BS6 Wagon R S-CNG in India. The LXI CNG and LXI (O) CNG variants now cost Rs 5.25 lakh and Rs 5.32 lakh respectively, up by Rs 19,000. Maruti claims a fuel economy of 32.52km per kg. The CNG Wagon R’s continuation in the BS6 era is part of the carmaker’s ‘Mission Green Million’ initiative announced at Auto Expo 2020.\r\n\r\nPreviously, the carmaker had updated the 1.0-litre powertrain to meet BS6 emission norms. It develops 68PS of power and 90Nm of torque, same as the BS4 unit. However, the updated motor now returns 21.79 kmpl, which is a little less than the BS4 unit’s 22.5kmpl claimed figure. Barring the CNG variants, the prices of the Wagon R 1.0-litre have been hiked by Rs 8,000.', 500, 'Petrol', 2019, 5, 'rear-3-4-left-589823254_930x620.jpg', 'tail-lamp-1666712219_930x620.jpg', 'rear-3-4-right-520328200_930x620.jpg', 'steering-close-up-1288209207_930x620.jpg', 'boot-with-standard-luggage-202327489_930x620.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:04:35', '2020-07-07 07:27:08'),
(2, 'BMW 5 Series', 2, 'BMW 5 Series price starts at ? 55.4 Lakh and goes upto ? 68.39 Lakh. The price of Petrol version for 5 Series ranges between ? 55.4 Lakh - ? 60.89 Lakh and the price of Diesel version for 5 Series ranges between ? 60.89 Lakh - ? 68.39 Lakh.', 1000, 'Petrol', 2018, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2020-07-07 07:12:02', '2020-07-07 07:27:44'),
(3, 'Audi Q8', 3, 'As per ARAI, the mileage of Q8 is 0 kmpl. Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.', 3000, 'Petrol', 2017, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:19:21', '2020-07-07 07:28:02'),
(4, 'Nissan Kicks', 4, 'Latest Update: Nissan has launched the Kicks 2020 with a new turbocharged petrol engine. You can read more about it here.\r\n\r\nNissan Kicks Price and Variants: The Kicks is available in four variants: XL, XV, XV Premium, and XV Premium(O).', 800, 'Petrol', 2020, 5, 'front-left-side-47.jpg', 'kicksmodelimage.jpg', 'download.jpg', 'kicksmodelimage.jpg', '', 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, '2020-07-07 07:25:28', NULL),
(5, 'Nissan GT-R', 4, ' The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', 2000, 'Petrol', 2019, 5, 'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg', 'Best-Nissan-Cars-in-India-New-and-Used-1.jpg', '2bb3bc938e734f462e45ed83be05165d.jpg', '2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg', 'images.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:34:17', NULL),
(6, 'Nissan Sunny 2020', 4, 'Value for money product and it was so good It is more spacious than other sedans It looks like a luxurious car.', 400, 'CNG', 2018, 5, 'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg', 'images (1).jpg', 'Nissan-Sunny-Interior-114977.jpg', 'nissan-sunny-8a29f53-500x375.jpg', 'new-nissan-sunny-photo.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 09:12:49', NULL),
(7, 'Toyota Fortuner', 5, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.\r\n\r\nToyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 3000, 'Petrol', 2020, 5, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', '', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 1, 1, '2020-07-07 09:17:46', NULL),
(8, 'Maruti Suzuki Vitara Brezza', 1, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti’s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 600, 'Petrol', 2018, 5, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', NULL, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2020-07-07 09:23:11', NULL),
(9, 'JCB 3DX', 8, 'The 3DX Super ecoXcellence Backhoe Loader is the master of every job. The robust one-piece structure and D-Section loader arm give the Backhoe Loader an unassailable advantage over its counterparts.\r\n\r\nWith a big spacious cabin that allows easy access, it provides for best in class operator comfort. Its excavator end provides for quick excavation cycle time and higher digging forces leading to higher productivity. Its new 10 bolt wheel axle, improved pin/bush life, higher fuel tanks & long life stabiliser pad make it more durable.', 1000, 'Diesel', 2019, 1, 'oopl.jpg', 'jcbe1 (1).jpeg', 'operator-comfortfuel-efficiency_1050_768_v2.jpg', 'images100.jpg', 'jcb3dx.jpg', NULL, NULL, NULL, 1, 1, 1, 1, NULL, 1, 1, 1, 1, '2021-02-23 16:10:15', NULL),
(10, 'BL60', 9, 'The Volvo BL60 was equipped with a proven Volvo turbo disel engine that delivered 86 hp (64kW) of consistent and responsive power. The machine\'s narrow, curved boom provided excellent visibility and load capacity to simplify digging and loading operations. The BL60\'s boom featured closed, box-welded construction of cast iron, which allowed for flexible movement and swing.', 2000, 'Diesel', 2019, 1, 'volvo_29.jpg', 'volvo-backhoe-loader-bl60-86-hp-8157-kg.jpg', 'ppl.jpg', 'volvo_228.jpg', '', NULL, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, '2021-02-23 16:13:54', '2021-02-23 16:18:25'),
(11, 'Signa 4225.TK', 11, 'The Tata SIGNA 3523.TK is a highly versatile tipper operating in the Surface transport of construction aggregates, coal, ore and minerals.\r\n\r\nThis 35T tipper has been designed and built to maximize productivity, and is equipped with a plethora of features encompassing the POWER OF 6 philosophy.\r\n\r\nPowered by the Powerful CUMMINS ISBe 5.6L BS6 compliant engine and driven by its optimized drivetrain, this tipper delivers the benefits of faster TAT, more trips and higher Revenue through the POWER OF ENHANCED PERFORMANCE. The Radial tyres on this tipper further enhance productivity.\r\n\r\nAdvanced technology features, like 3 mode Fuel Economy switch and Hill', 2500, 'Diesel', 2019, 2, 'SIGNA 3523 TK-1 (1).jpg', 'signa-interior-6.jpg', 'signa-interior-1.jpg', 'signa-interior-5 (1).jpg', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-23 16:18:03', '2021-03-05 19:03:58'),
(12, 'DD90B', 9, 'BUILT IN INDIA, FOR INDIA, THE DD90B DOUBLE-DRUM COMPACTOR DELIVERS A FLAWLESS MAT FINISH IN FEWER PASSES WITHOUT COMPROMISING FUEL EFFICIENCY.\r\nDesigned with versatility in mind, the Volvo DD90B delivers unmatched fuel efficiency and powerful performance across a range of applications in India, as well as ultimate uptime and profitability. From roadways and large parking lots to airport runways, the versatile performance of the DD90B is designed to handle flexible pavement compaction applications.', 1200, 'Diesel', 2020, 1, 'volvo-find-asphalt-compactor-dd90b-t3-1000x1000.jpg', 'volvo-benefits-asphalt-compactor-dd90b-t3-durable-damage-resistance-2324x1200.jpg', 'volvo-benefits-asphalt-compactor-dd90b-t3-a-flawless-finish-2324x1200.jpg', 'volvo-benefits-asphalt-compactor-dd90b-t3-durable-damage-resistance-2324x1200.jpg', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-05 18:26:53', '2021-03-05 19:01:12'),
(13, 'ASD 115', 12, 'ACE Vibratory Rollers are machines used to compact loose soil or asphalt and are primarily used for roads and highway construction. These machines also find application for ground compaction / stabilisation at construction sites. ACE manufactures 10 tons to 12 tons soil compactors and 3.5 tons and 9 tons tandem compactors with advanced features.', 1000, 'Diesel', 2019, 1, '152222835520180328.jpg', '152222835520180328.jpg', '152222835520180328.jpg', '152222835520180328.jpg', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-05 18:31:32', '2021-03-05 19:01:36'),
(14, 'AX 150', 12, 'ACE Backhoe Loaders are used in the construction and infrastructure sector for digging, moving, grading and loading earth and other loose aggregates. These machinery also find application in heavy industry and mining activity. ACE offers Backhoe Loaders in both 2WD / 4WD configurations.\r\n', 900, 'Diesel', 2020, 1, '152222421520180328.jpg', '152222421520180328.jpg', '152222421520180328.jpg', '152222421520180328.jpg', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-05 18:34:29', '2021-03-06 11:02:26'),
(16, 'SIGNA 4825.TK', 11, 'The TATA SIGNA 4825.TK is a high performance and highly versatile tipper used for surface transport of aggregates, coal, ore and minerals\r\n\r\nThe TATA SIGNA 4825.TK is designed and built for versatility and high productivity and ensures continuous operation for these applications. It is equipped with a plethora of features encompassing the POWER OF 6 philosophy. This tipper has a unique warranty of 6yr/6Lakh kms on driveline similar to cargo vehicles and also has an option of 10x2 configuration.\r\n\r\nPowered by the Powerful CUMMINS ISBe 6.7L BS6 compliant engine and driven by its heavy duty drivetrain, this tipper delivers faster TAT, more trips and ensures higher Revenue through the POWER OF ENHANCED PERFORMANCE.\r\n\r\nAdvanced technology features, like 3 mode Fuel Economy switch, Engine brake and Hill Start Assist (HSA) , complement the Heavy duty driveline, rigid chassis frame and Long lasting NGT Brakes, to provide superior performance, higher fuel economy, higher productivity and lower maintenance costs. These features demonstrate the POWER of LOWER COST of OPERATION, thereby increasing profits.\r\n\r\nThe unique feature of Tilt switch prevents accidents due to the load body tilting during tipping action.\r\n\r\nThe comfortable and spacious SIGNA SLEEPER cabin offers a fatigue free working environment for the driver. This POWER OF COMFORT and CONVENIENCE increases productivity and accelerates earnings! Corrosion free HDPE fuel tank with anti fuel theft, vertical exhaust along with multiple safety features make this tipper a very good choice for your business.\r\n\r\nExperience the POWER OF CHOICE by selecting from the range of fully built options and pairing it with the choice of features to get the perfect partner for your business needs.\r\n\r\nReal time Vehicle Tracking, Geo fencing, fuel consumption monitoring and anti fuel theft features showcase the POWER OF CONNECTIVITY. Choose from a wide range of Tata Motors Service, AMC, FMS and Driver welfare offerings under Sampoorna Seva and experience TOTAL PEACE OF MIND.', 3000, 'Diesel', 2020, 2, 'Signa 4825 TK-1.jpg', 'Signa 4825 TK-2.jpg', 'signa-interior-1 (1).jpg', 'signa-interior-7.jpg', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-05 18:47:19', '2021-03-06 11:01:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
