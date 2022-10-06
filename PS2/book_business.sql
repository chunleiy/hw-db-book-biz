DROP DATABASE IF EXISTS `book_business`;
CREATE DATABASE IF NOT EXISTS `book_business`; 
USE `book_business`;

-- --------------------------------------
--  TABLE PUBLISHERS
-- --------------------------------------

CREATE TABLE `Publishers` (
	`PublisherID` 		int NOT NULL,
	`PubName` 			varchar (20) NOT NULL,
	`PhoneNumber` 		varchar (15) NULL,
	`City`				varchar (15) NULL,
    `Region`			varchar (15) NULL,
    `Country`			varchar (15) NULL,
    PRIMARY KEY (`PublisherID`),
    INDEX `PubName` (`PubName` ASC)
);

-- --------------------------------------
--  TABLE BOOKS
-- --------------------------------------

CREATE TABLE `Books` (
	`BookID` 		    int NOT NULL,
	`BookName` 			varchar (30) NOT NULL,
	`Genre` 			varchar (15) NULL,	
	`PublisherID` 		int NOT NULL,
	`Price` 	        varchar (15) NULL,	
	`PubDate` 			date NULL,
    PRIMARY KEY (`BookID`),
    INDEX `BookID` (`BookID` ASC),
    INDEX `BookName` (`BookName` ASC),
    FOREIGN KEY (`PublisherID` ASC) REFERENCES `Publishers`(`PublisherID`)
); 

-- --------------------------------------
--  TABLE AUTHORS
-- --------------------------------------

CREATE TABLE `Authors` (
	`AuthorID` 		    int NOT NULL,
	`FirstName` 		varchar (20) NOT NULL,
    `LastName`			varchar (20) NOT NULL,
	`PhoneNumber` 		varchar (15) NULL,
	`City`				varchar (15) NULL,
    `Region`			varchar (15) NULL,
    `Country`			varchar (15) NULL,
    PRIMARY KEY (`AuthorID`),
    INDEX `FirstName` (`FirstName` ASC),
    INDEX `LastName` (`LastName` ASC)
); 

-- --------------------------------------
--  TABLE EDITORS
-- --------------------------------------

CREATE TABLE `Editors` (
	`EditorID` 		    int NOT NULL,
	`FirstName` 		varchar (20) NOT NULL,
    `LastName`			varchar (20) NOT NULL,
	`PhoneNumber` 		varchar (15) NULL,
	`City`				varchar (15) NULL,
    `Region`			varchar (15) NULL,
    `Country`			varchar (15) NULL,
    PRIMARY KEY (`EditorID`),
    INDEX `FirstName` (`FirstName` ASC),
    INDEX `LastName` (`LastName` ASC)
); 

-- --------------------------------------
--  TABLE CUSTOMERS
-- --------------------------------------

CREATE TABLE `Customers` (
	`CustomerID` 		int NOT NULL,
	`FirstName` 		varchar (20) NOT NULL,
    `LastName`			varchar (20) NOT NULL,
	`PhoneNumber` 		varchar (15) NULL,
	`City`				varchar (15) NULL,
    `Region`			varchar (15) NULL,
    `Country`			varchar (15) NULL,
    PRIMARY KEY (`CustomerID`),
    INDEX `FirstName` (`FirstName` ASC),
    INDEX `LastName` (`LastName` ASC)
); 

-- --------------------------------------
--  TABLE ORDERS
-- --------------------------------------

CREATE TABLE `Orders` (
	`OrderID` 		    int NOT NULL,
	`OrderDate` 		date NULL,	
	`CustomerID`        int NOT NULL,
    `Value` 			varchar (15) NULL,
    PRIMARY KEY (`OrderID`),
    INDEX `OrderID` (`OrderID` ASC),
    FOREIGN KEY (`CustomerID` ASC) REFERENCES `Customers`(`CustomerID`)
); 

-- --------------------------------------
--  TABLE AUTHOR_BOOKS
-- --------------------------------------

CREATE TABLE `AuthorBooks` (
	`AuthorID` 		    int NOT NULL,
	`BookID` 			int NOT NULL,
    `Royalty`			varchar (15) NULL,
    PRIMARY KEY (`AuthorID`, `BookID`),
	FOREIGN KEY (`AuthorID`) REFERENCES `Authors` (`AuthorID`),
    FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`)
); 

-- --------------------------------------
--  TABLE EDITOR_BOOKS
-- --------------------------------------

CREATE TABLE `EditorBooks` (
	`EditorID` 		    int NOT NULL,
	`BookID` 			int NOT NULL,
    PRIMARY KEY (`EditorID`, `BookID`),
	FOREIGN KEY (`EditorID`) REFERENCES `Editors` (`EditorID`),
    FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`)
); 

-- --------------------------------------
--  TABLE BOOK_ORDERS
-- --------------------------------------

CREATE TABLE `BookOrders` (
	`BookID` 		    int NOT NULL,
	`OrderID` 			int NOT NULL,
    PRIMARY KEY (`BookID`, `OrderID`),
	FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`),
    FOREIGN KEY (`BookID`) REFERENCES `Books` (`BookID`)
); 

-- --------------------------------------
--  TABLE CUSTOMER_ORDERS
-- --------------------------------------

CREATE TABLE `CustomerOrders` (
	`CustomerID` 		int NOT NULL,
	`OrderID` 			int NOT NULL,
    PRIMARY KEY (`CustomerID`, `OrderID`),
	FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`),
    FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`)
); 
