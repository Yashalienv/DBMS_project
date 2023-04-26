Create/Insert Commands:

INSERT INTO `customer` (`CustomerID`, `FirstName`, `LastName`, `DateOfBirth`, `EmailID`, `ContactNumber`, `Address`, `UserName`, `NumberOfOrdersMade`) VALUES
('C1010', 'jason', 'smith', '1993-07-06', 'jasonsmith@gmail.com', '+13161274566', '17th Street, Wichita, Kansas-67206', 'jason', 20);

INSERT INTO `deliveryexecutive` (`DeliveryID`, `FirstName`, `LastName`, `EmailID`, `ContactNumber`, `DateOfJoining`, `NumberOfOrdersDelivered`) VALUES
('D1010', 'collin', 'wood', 'collinwood@gmail.com', '+13166172450', '2022-09-11', 60);

INSERT INTO `fooditem` (`ItemID`, `Name`, `Description`, `Price`, `Discount`, `Rating`) VALUES
('I1010', 'Chicken burger', 'Chicken, Tomato, Lettuce, Onion, Mustard', 20, 5, 5);

INSERT INTO `orders` (`OrderID`, `CustomerID`, `ItemID`, `RestuarantID`, `DeliveryID`, `Date`, `Quantity`, `AmountPaid`) VALUES
('O1010', 'C1010', 'I1002', 'R1006', 'D1002', '2022-10-29', 9, 400);

INSERT INTO `restuarant` (`RestuarantID`, `Name`, `EmailID`, `ContactNumber`, `Address`, `DateOfOpening`, `NumberOfOrdersTaken`) VALUES
('R1011', 'bawarchi', 'aldi@gmail.com', '+13162896745', 'Downtown, Wichita, Kansas -67203', '20019-02-18', 100);

Read Commands:

select * from customer;
select * from deliveryexecutive;
select * from fooditem;
select * from restuarant;
select * from orders;

Update Commands:

update customer set LastName='joseph' where CustomerID='C1009';
update deliveryexecutive set EmailID="jasonrabada@gmail.com" where DeliveryID='D1009';
update fooditem set Price=50 where ItemID='I1009';
update orders set AmountPaid= 500 where OrderID='O1009';
update restuarant set NumberOfOrdersTaken=400 where restuarantID='R1009';


Delete Commands:

delete from customer where CustomerID='C1010';
delete from deliveryexecutive where DeliveryID='D1008';
delete from fooditem where ItemID='I1006';
delete from restuarant where RestuarantID='R1009';
delete from orders where OrderID='O1009';
