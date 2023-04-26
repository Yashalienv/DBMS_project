Customer Table Create SQL Command:

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
);

DeliveryExecutive Table Create SQL Command:

CREATE TABLE `deliveryexecutive` (
  `DeliveryID` varchar(10) NOT NULL,
  `FirstName` varchar(15) NOT NULL,
  `LastName` varchar(15) NOT NULL,
  `EmailID` varchar(50) NOT NULL,
  `ContactNumber` varchar(12) NOT NULL,
  `DateOfJoining` date NOT NULL,
  `NumberOfOrdersDelivered` int(11) NOT NULL
);

FoodItem Table Create SQL Command:

CREATE TABLE `fooditem` (
  `ItemID` varchar(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Price` float NOT NULL,
  `Discount` int(10) NOT NULL,
  `Rating` float NOT NULL
);

Orders Table Create SQL Command:

CREATE TABLE `orders` (
  `OrderID` varchar(10) NOT NULL,
  `CustomerID` varchar(10) NOT NULL,
  `ItemID` varchar(10) NOT NULL,
  `RestuarantID` varchar(10) NOT NULL,
  `DeliveryID` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  `Quantity` int(10) NOT NULL,
  `AmountPaid` float NOT NULL
);

Restuarant Table Create SQL Command:

CREATE TABLE `restuarant` (
  `RestuarantID` varchar(10) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `EmailID` varchar(50) NOT NULL,
  `ContactNumber` varchar(12) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `DateOfOpening` date NOT NULL,
  `NumberOfOrdersTaken` int(5) NOT NULL
);

Adding Primary Key for Customer Table:

ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

Adding Primary Key for DeliveryExecutive Table:


ALTER TABLE `deliveryexecutive`
  ADD PRIMARY KEY (`DeliveryID`);

Adding Primary Key for FoodItem Table:


ALTER TABLE `fooditem`
  ADD PRIMARY KEY (`ItemID`);

Adding Primary Key and Foreign Keys for Orders Table:

ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `FK_CUSTOMER` (`CustomerID`),
  ADD KEY `FK_DELIVERY` (`DeliveryID`),
  ADD KEY `FK_ITEM` (`ItemID`),
  ADD KEY `FK_RESTUARANT` (`RestuarantID`);

Adding Primary Key for Restuarant Table:

ALTER TABLE `restuarant`
  ADD PRIMARY KEY (`RestuarantID`);


