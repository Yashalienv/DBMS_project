-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 05:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fooddelivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` varchar(10) NOT NULL,
  `FirstName` varchar(15) NOT NULL,
  `LastName` varchar(15) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `EmailID` varchar(50) NOT NULL,
  `ContactNumber` varchar(12) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `UserName` varchar(10) NOT NULL,
  `NumberOfOrdersMade` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `FirstName`, `LastName`, `DateOfBirth`, `EmailID`, `ContactNumber`, `Address`, `UserName`, `NumberOfOrdersMade`) VALUES
('C1001', 'yaswanth', 'ala', '2001-03-26', 'alayaswanth6@gmail.com', '+18248289489', '21st Street, Wichita, Kansas-67206', 'yash', 20),
('C1002', 'Joshika', 'USA', '1999-08-25', 'joshikausa@gmail.com', '+13135345678', 'Woodlawn Street, Wichita, Kansas - 67220', 'joshi', 15),
('C1003', 'Sravan', 'Reddy', '1999-08-29', 'ramidisravanreddy@gmail.com', '+13112346789', 'Oliver Street, Wichita, Kansas -67220', 'sravaan', 10),
('C1004', 'Joshika', 'k', '1999-08-27', 'joshikakambhampati@gmail.com', '+13166971234', 'Edgemoor Street, Wichita, Kansas-67220', 'jo', 30),
('C1005', 'Deepthi', 'Pegasian', '1998-05-28', 'deepthir.pegasian@gmail.com', '+13168344234', 'Tyler Street, Wichita, Kansas -67220', 'deepu', 12),
('C1006', 'Taylor', 'Swift', '2001-03-26', 'taylorswift@gmail.com', '+13167576901', 'Web Road, Wichita, Kansas - 67206', 'swift', 17),
('C1007', 'yashwanth', 's', '2002-01-19', 'yashwanths282@gmail.com', '+13165239012', 'Greenwich Street, Wichita, Kansas -67206', 'yashu', 5);

-- --------------------------------------------------------

--
-- Table structure for table `deliveryexecutive`
--

CREATE TABLE `deliveryexecutive` (
  `DeliveryID` varchar(10) NOT NULL,
  `FirstName` varchar(15) NOT NULL,
  `LastName` varchar(15) NOT NULL,
  `EmailID` varchar(50) NOT NULL,
  `ContactNumber` varchar(12) NOT NULL,
  `DateOfJoining` date NOT NULL,
  `NumberOfOrdersDelivered` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveryexecutive`
--

INSERT INTO `deliveryexecutive` (`DeliveryID`, `FirstName`, `LastName`, `EmailID`, `ContactNumber`, `DateOfJoining`, `NumberOfOrdersDelivered`) VALUES
('D1001', 'marcov', 'Joseph', 'marcovjoseph@gmail.com', '+13166783450', '2022-01-22', 100),
('D1002', 'David', 'warner', 'davidwarner@gmail.com', '+13169023789', '2020-03-09', 120),
('D1003', 'Ben', 'Stokes', 'benstokes@gmail.com', '+13167902345', '2021-11-22', 170),
('D1004', 'jofra', 'archer', 'jofraarcher@gmail.com', '+13165097684', '2019-02-06', 70),
('D1005', 'collin', 'wood', 'collinwood@gmail.com', '+13165081234', '2015-08-23', 200),
('D1006', 'jaison', 'Roy', 'Jaisonroy@gmail.com', '+13160983678', '2012-09-26', 290);

-- --------------------------------------------------------

--
-- Table structure for table `fooditem`
--

CREATE TABLE `fooditem` (
  `ItemID` varchar(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Price` float NOT NULL,
  `Discount` int(10) NOT NULL,
  `Rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fooditem`
--

INSERT INTO `fooditem` (`ItemID`, `Name`, `Description`, `Price`, `Discount`, `Rating`) VALUES
('I1001', 'Chicken Sandwich', 'Chicken, Tomato, Lettuce, Onion, Ketchup', 20, 5, 5),
('I1002', 'chicken biriyani', 'chicken, rice, spices', 10, 20, 4.75),
('I1003', 'Beef Medallion', 'Beef, Vegetables and Potatoes', 30, 10, 5),
('I1004', 'Milk Shake', 'Choice of your own :  Vanilla, Chocolate, Strawberry', 15, 30, 4.5),
('I1005', 'chinese noodles', 'noodles with a blend of spices and chicken ', 25, 8, 4),
('I1006', 'Baklava', 'Dessert chef\'s special', 5, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` varchar(10) NOT NULL,
  `CustomerID` varchar(10) NOT NULL,
  `ItemID` varchar(10) NOT NULL,
  `RestuarantID` varchar(10) NOT NULL,
  `DeliveryID` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  `Quantity` int(10) NOT NULL,
  `AmountPaid` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `ItemID`, `RestuarantID`, `DeliveryID`, `Date`, `Quantity`, `AmountPaid`) VALUES
('O1001', 'C1001', 'I1003', 'R1003', 'D1002', '2023-02-16', 7, 200),
('O1002', 'C1002', 'I1006', 'R1006', 'D1005', '2023-02-21', 50, 280),
('O1003', 'C1002', 'I1004', 'R1001', 'D1004', '2023-04-19', 25, 300),
('O1004', 'C1004', 'I1005', 'R1001', 'D1002', '2023-03-08', 10, 250),
('O1005', 'C1003', 'I1002', 'R1002', 'D1006', '2023-02-01', 10, 100),
('O1006', 'C1007', 'I1001', 'R1005', 'D1002', '2023-02-14', 5, 90);

-- --------------------------------------------------------

--
-- Table structure for table `restuarant`
--

CREATE TABLE `restuarant` (
  `RestuarantID` varchar(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `EmailID` varchar(50) NOT NULL,
  `ContactNumber` varchar(12) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `DateOfOpening` date NOT NULL,
  `NumberOfOrdersTaken` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restuarant`
--

INSERT INTO `restuarant` (`RestuarantID`, `Name`, `EmailID`, `ContactNumber`, `Address`, `DateOfOpening`, `NumberOfOrdersTaken`) VALUES
('R1001', 'Cafe', 'restuarantcafe@gmail.com', '+13190392345', 'Downtown, Wichita, Kansas -67203', '2009-01-13', 600),
('R1002', 'Tastes of india', 'restuarantsabor@gmail.com', '+13192301256', 'woodlawn road, Wichita, Kansas -67203', '2013-02-12', 190),
('R1003', 'chicago tastes', 'restuarantchicago@gmail.com', '+13110831490', 'Kellogg highway, Wichita, Kansas - 67206', '2012-10-24', 500),
('R1004', 'Grill', 'restuarantgrill@gmail.com', '+13169082982', '21st Street, Wichita, Kansas -67206', '2018-04-16', 230),
('R1005', 'china go', 'restuarantamerican@gmail.com', '+13167823378', 'rock road, Wichita, Kansas - 67220', '2015-09-09', 330),
('R1006', 'desert kingdom', 'restuarantsubway@gmail.com', '+13157323784', 'Central Street, Wichita, Kansas - 67220', '2019-10-17', 150);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `deliveryexecutive`
--
ALTER TABLE `deliveryexecutive`
  ADD PRIMARY KEY (`DeliveryID`);

--
-- Indexes for table `fooditem`
--
ALTER TABLE `fooditem`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `FK_CUSTOMER` (`CustomerID`),
  ADD KEY `FK_DELIVERY` (`DeliveryID`),
  ADD KEY `FK_ITEM` (`ItemID`),
  ADD KEY `FK_RESTUARANT` (`RestuarantID`);

--
-- Indexes for table `restuarant`
--
ALTER TABLE `restuarant`
  ADD PRIMARY KEY (`RestuarantID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_CUSTOMER` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  ADD CONSTRAINT `FK_DELIVERY` FOREIGN KEY (`DeliveryID`) REFERENCES `deliveryexecutive` (`DeliveryID`),
  ADD CONSTRAINT `FK_ITEM` FOREIGN KEY (`ItemID`) REFERENCES `fooditem` (`ItemID`),
  ADD CONSTRAINT `FK_RESTUARANT` FOREIGN KEY (`RestuarantID`) REFERENCES `restuarant` (`RestuarantID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
