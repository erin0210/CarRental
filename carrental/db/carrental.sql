-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2021 at 06:58 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2021-08-25 04:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, '22/06/2017', '25/06/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 1, '2017-06-19 20:15:43'),
(2, 'test@gmail.com', 3, '30/06/2017', '02/07/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 2, '2017-06-26 20:15:43'),
(3, 'test@gmail.com', 4, '02/07/2017', '07/07/2017', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ', 0, '2017-06-26 21:10:06'),
(4, 'test1@gmail.com', 1, '11/07/2017', '12/07/2018', 'ddddddddddd', 0, '2017-06-29 18:20:45'),
(5, 'php@gmail.com', 6, '11/07/2017', '12/07/2017', 'i want to hire this taxi for few hours', 1, '2017-07-05 11:09:18');

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
(1, 'AMC', '2017-06-18 08:24:34', '2020-05-26 04:42:14'),
(2, 'BMW', '2017-06-18 08:24:50', NULL),
(3, 'Audi', '2017-06-18 08:25:03', NULL),
(4, 'Nissan', '2017-06-18 08:25:13', NULL),
(5, 'Toyota', '2017-06-18 08:25:24', NULL),
(7, 'Chevrolet', '2017-06-18 22:22:13', NULL);

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

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Johor, Malaysia																							', 'carrental@gmail.com', '0123456789');

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
(1, 'Harry Den', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 02:03:07', 1);

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
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>The Renter undertakes to return the Vehicle to the office of the Car Hire Company stated in the Agreement during its business hours. During the business hours the Renter has the right to demand from the Car Hire Company to inspect the Vehicle and record new faults. If the Renter waives this right, the Renter is responsible for the Vehicle until the time when the Car Hire Company performs inspection of the Vehicle and takes it into its direct possession. If the Renter returns the Vehicle outside the business hours, the Renter must observe the rules of return of Vehicles outside the business hours effective in the given Car Hire Company. In case of return outside the business hours or in case of return of the keys and the documents to the \\\"key box”, the Renter is responsible for the Vehicle until the time when direct possession of the Vehicle was accepted by the Car Hire Company. Direct possession of the Vehicle is deemed as having been accepted by the Car Hire Company, if the Car Hire Company received the keys of the Vehicle and had an opportunity to inspect the Vehicle (not later than within 72 hours after the time of return of the Vehicle stated in the Agreement).</FONT></P><P align=justify><FONT size=2>The Renter undertakes to return the Vehicle to the office of the Car Hire Company stated in the Agreement during its business hours. During the business hours the Renter has the right to demand from the Car Hire Company to inspect the Vehicle and record new faults. If the Renter waives this right, the Renter is responsible for the Vehicle until the time when the Car Hire Company performs inspection of the Vehicle and takes it into its direct possession. If the Renter returns the Vehicle outside the business hours, the Renter must observe the rules of return of Vehicles outside the business hours effective in the given Car Hire Company. In case of return outside the business hours or in case of return of the keys and the documents to the \\\"key box”, the Renter is responsible for the Vehicle until the time when direct possession of the Vehicle was accepted by the Car Hire Company. Direct possession of the Vehicle is deemed as having been accepted by the Car Hire Company, if the Car Hire Company received the keys of the Vehicle and had an opportunity to inspect the Vehicle (not later than within 72 hours after the time of return of the Vehicle stated in the Agreement).</FONT></P><P align=justify><FONT size=2>The Renter undertakes to return the Vehicle to the office of the Car Hire Company stated in the Agreement during its business hours. During the business hours the Renter has the right to demand from the Car Hire Company to inspect the Vehicle and record new faults. If the Renter waives this right, the Renter is responsible for the Vehicle until the time when the Car Hire Company performs inspection of the Vehicle and takes it into its direct possession. If the Renter returns the Vehicle outside the business hours, the Renter must observe the rules of return of Vehicles outside the business hours effective in the given Car Hire Company. In case of return outside the business hours or in case of return of the keys and the documents to the \\\"key box”, the Renter is responsible for the Vehicle until the time when direct possession of the Vehicle was accepted by the Car Hire Company. Direct possession of the Vehicle is deemed as having been accepted by the Car Hire Company, if the Car Hire Company received the keys of the Vehicle and had an opportunity to inspect the Vehicle (not later than within 72 hours after the time of return of the Vehicle stated in the Agreement).</FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<span style=\\\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\\\">We specialise in car rental and ensure our cars are safe and well-maintained before allowing customers to drive it. We can also bring the cars to customers\\\' whereabouts to ease the rental procedure.</span><br><br><h3>Deliver.&nbsp;&nbsp;Drive.&nbsp;&nbsp;Drift.&nbsp;&nbsp;</h3>'),
(11, 'FAQs', 'faqs', '																														Q:Are there any 7-seater cars?<br>A:Yes, there are various cars that support 7-seaters<br><br>Q:Can I use my license from overseas?<br>A:Yes, but make sure to show it to the staff<br><br>Q:Can I drive a car if I just received my driver\\\'s license?<br>A:Yes, but you need to make sure to stick the P sticker given by us\'');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'anuj.lpu1@gmail.com', '2017-06-22 16:35:32');

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
(1, 'test@gmail.com', 'Test Test', '2017-06-18 07:44:31', 1),
(2, 'test@gmail.com', '\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam nibh. Nunc varius facilis', '2017-06-18 07:46:05', 1),
(3, 'php@gmail.com', 'Wow its Great ', '2017-07-05 11:08:26', NULL);

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
(1, 'User', 'user@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '0123456789', NULL, NULL, NULL, NULL, '2021-08-25 04:38:20', NULL),
(2, 'Shakirah Arina', 'shakirah@gmail.com', '386c52a52816e58a9918069b03466bcf', '0122223345', NULL, NULL, NULL, NULL, '2021-08-25 04:39:30', NULL),
(3, 'Ahmad Kamil', 'kamil@gmail.com', '893452b65ef22524088f80b15c1262d6', '0165732456', NULL, NULL, NULL, NULL, '2021-08-25 04:40:30', NULL);

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
(1, 'Triumph Spitfire', 2, 'We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking. We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking. We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking. We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking.', 345345, 'Petrol', 3453, 7, 'Triumph_Spitfire_1500,_Front_(2017-07-02_Sp).jpg', 'unnamed.jpg', '5-triumph-spitfire-hero-front.jpg', 'Classic & Sports Car – Triumph Spitfire – DSC_5002.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 03:46:23', '2020-05-26 05:44:11'),
(2, 'Mercedes Benz', 2, 'We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking. We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking. We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking. We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking.', 859, 'CNG', 2015, 4, 'car_755x430.png', 'looking-used-car.png', 'banner-image.jpg', 'about_services_faq_bg.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2017-06-19 08:16:17', '2020-05-26 04:35:47'),
(3, 'Volkswagen Beetle', 4, 'We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking. We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking. We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking. We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking.', 563, 'CNG', 2012, 5, 'featured-img-3.jpg', 'dealer-logo.jpg', 'img_390x390.jpg', 'listing_img3.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2017-06-19 08:18:20', '2020-05-26 04:37:51'),
(4, 'AMC Gremlin', 1, 'We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking. We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking. We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking. We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking.', 5636, 'CNG', 2012, 5, 'featured-img-3.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', 'featured-img-1.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2017-06-19 08:18:43', '2020-05-26 04:38:16'),
(5, 'Camry', 5, 'We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking. We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking. We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking. We ensure our cars to be in good shape and clean before rental. We also have proper monthly maintenance to ensure the cars are all ready to drift off on the road. Enjoy your ride with our newest cars, which are available for booking.', 345345, 'Petrol', 3453, 7, 'car_755x430.png', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-20 09:57:09', '2020-05-26 04:39:41');

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
