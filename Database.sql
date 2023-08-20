CREATE SCHEMA `intern202308`;



use intern202308;





-- Tao Table

CREATE TABLE IF NOT exists Users (

UserID INT AUTO_INCREMENT PRIMARY KEY,

UserName VARCHAR(255) NOT NULL,

DeleteFlg tinyint(1) default 0

);



INSERT INTO `intern202308`.`users` (`UserName`) VALUES ('buu');

INSERT INTO `intern202308`.`users` (`UserName`) VALUES ('tuan');

INSERT INTO `intern202308`.`users` (`UserName`) VALUES ('long');

INSERT INTO `intern202308`.`users` (`UserName`) VALUES ('nguyen');

INSERT INTO `intern202308`.`users` (`UserName`) VALUES ('hai');

INSERT INTO `intern202308`.`users` (`UserName`) VALUES ('thanh');



CREATE TABLE IF NOT exists Categories (

CategoryID INT AUTO_INCREMENT PRIMARY KEY,

CategoryName VARCHAR(255) NOT NULL,

DeleteFlg tinyint(1) default 0

);



INSERT INTO `intern202308`.`categories` (`CategoryName`) VALUES ('Ao');

INSERT INTO `intern202308`.`categories` (`CategoryName`) VALUES ('Quan');

INSERT INTO `intern202308`.`categories` (`CategoryName`) VALUES ('Mu');

INSERT INTO `intern202308`.`categories` (`CategoryName`) VALUES ('Silip');

INSERT INTO `intern202308`.`categories` (`CategoryName`) VALUES ('Balo');



CREATE TABLE IF NOT exists Products (

ProductID INT AUTO_INCREMENT PRIMARY KEY,

ProductName VARCHAR(255) NOT NULL,

Price DECIMAL(10, 2) NOT NULL,

CategoryID INT,

DeleteFlg tinyint(1) default 0,

FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)

);

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Ao 1', '10', '1');

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Ao 2', '15', '1');

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Ao 3', '6', '1');

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Ao 4', '5', '1');

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Quan 1', '10', '2');

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Quan 2', '15', '2');

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Quan 3', '6', '2');

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Quan 4', '5', '2');

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Mu 1', '10', '3');

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Mu 2', '15', '3');

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Mu 3', '6', '3');

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Mu 4', '5', '3');

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Silip 1', '10', '4');

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Silip 2', '15', '4');

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Balo 3', '6', '5');

INSERT INTO `intern202308`.`products` (`ProductName`, `Price`, `CategoryID`) VALUES ('Balo 4', '5', '5');



CREATE TABLE IF NOT exists Orders (

OrderID INT AUTO_INCREMENT PRIMARY KEY,

UserID INT,

OrderDate DATE,

TotalAmount DECIMAL(10, 2) NOT NULL,

DeleteFlg tinyint(1) default 0,

FOREIGN KEY (UserID) REFERENCES Users(UserID)

);

INSERT INTO `intern202308`.`orders` (`UserID`, `OrderDate`, `TotalAmount`) VALUES ('2', '2023-08-15', '30');

INSERT INTO `intern202308`.`orders` (`UserID`, `OrderDate`, `TotalAmount`) VALUES ('3', '2023-08-21', '70');

INSERT INTO `intern202308`.`orders` (`UserID`, `OrderDate`, `TotalAmount`) VALUES ('4', '2023-08-16', '30');

INSERT INTO `intern202308`.`orders` (`UserID`, `OrderDate`, `TotalAmount`) VALUES ('5', '2023-08-14', '70');

INSERT INTO `intern202308`.`orders` (`UserID`, `OrderDate`, `TotalAmount`) VALUES ('4', '2023-08-17', '30');

INSERT INTO `intern202308`.`orders` (`UserID`, `OrderDate`, `TotalAmount`) VALUES ('1', '2023-08-19', '70');

INSERT INTO `intern202308`.`orders` (`UserID`, `OrderDate`, `TotalAmount`) VALUES ('1', '2023-08-15', '30');

INSERT INTO `intern202308`.`orders` (`UserID`, `OrderDate`, `TotalAmount`) VALUES ('2', '2023-08-11', '70');



CREATE TABLE IF NOT exists OrderItems (

ItemID INT AUTO_INCREMENT PRIMARY KEY,

OrderID INT,

ProductID INT,

Quantity INT NOT NULL,

Price DECIMAL(10, 2) NOT NULL,

DeleteFlg tinyint(1) default 0,

FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),

FOREIGN KEY (ProductID) REFERENCES Products(ProductID)

);



INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('1','2', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('2','2', '2', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('3','2', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('1','2', '2', '30', '0');



INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('1','1', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('2','1', '2', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('3','1', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('5','1', '2', '30', '0');



INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('1','3', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('2','3', '2', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('3','3', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('5','3', '2', '30', '0');



INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('1','4', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('2','4', '2', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('3','4', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('5','4', '2', '30', '0');



INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('1','5', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('2','5', '2', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('3','5', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('5','5', '2', '30', '0');



INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('1','6', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('2','6', '2', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('3','6', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('5','6', '2', '30', '0');



INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('1','7', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('2','7', '2', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('3','7', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('5','7', '2', '30', '0');



INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('1','8', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('2','8', '2', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('3','8', '1', '10', '0');

INSERT INTO `intern202308`.`orderitems` (`ProductID`,`OrderID`, `Quantity`, `Price`, `DeleteFlg`) VALUES ('5','8', '2', '30', '0');