-- create and select the database
DROP DATABASE IF EXISTS prs;
CREATE DATABASE prs;
USE prs;

-- create the User table
CREATE TABLE User (
ID			    INT   	      PRIMARY KEY  		AUTO_INCREMENT,
UserName        VARCHAR(20)   NOT NULL    	 	UNIQUE,
Password 		VARCHAR(10)   NOT NULL,
FirstName		VARCHAR(20)	  NOT NULL,
LastName		VARCHAR(25)   NOT NULL,
PhoneNumber		VARCHAR(12)   NOT NULL,
Email 			VARCHAR(75)	  NOT NULL,
IsReviewer		TINYINT(1)	  default 1			NOT NULL, 
IsAdmin			TINYINT(1)	  default 1			NOT NULL, 
IsActive		TINYINT(1)	  default 1			NOT NULL, 
DateCreated		DATETIME	  NOT NULL			default current_timestamp   NOT NULL,
DateUpdated		DATETIME 	  NOT NULL			default current_timestamp	NOT NULL,
UpdatedByUser 	INT 		  default 1 		NOT NULL
);

-- Create Vendor Table
CREATE TABLE Vendor (
ID			    INT             PRIMARY KEY    AUTO_INCREMENT,
Code          	INT(20)         NOT NULL       UNIQUE,
Name			VARCHAR(255)    NOT NULL,
Address			VARCHAR(25)     NOT NULL,
City			VARCHAR(255)    NOT NULL,
State			VARCHAR(2)	    NOT NULL,
Zip				VARCHAR(5)		NOT NULL,
PhoneNumber		VARCHAR(12)		NOT NULL,
Email			VARCHAR(100)	NOT NULL,
IsPreApproved	TinyInt(1)		NOT NULL,
IsReviewer		TINYINT(1)	    default 1		NOT NULL,
IsActive		TINYINT(1)	    default 1		NOT NULL,
DateCreated		DATETIME	    NOT NULL		default current_timestamp   NOT NULL,
DateUpdated		DATETIME 	    NOT NULL		default current_timestamp	NOT NULL,
UpdatedByUser 	INT 		    default 1 		NOT NULL
);

-- create Purchase Request Table
CREATE TABLE PurchaseRequest (
ID	    			INT     	     PRIMARY KEY  	AUTO_INCREMENT,
UserID				INT				 NOT NULL,
Justification		VARCHAR(255)	 NOT NULL,
DateNeeded			DATE			 NOT NULL,
DeliveryMode		VARCHAR(25)		 NOT NULL,
Status				VARCHAR(20)		 NOT NULL,
Total				DECIMAL(10,2)	 NOT NULL,
SubmittedDate		DATETIME		 NOT NULL,
ReasonForRejection	VARCHAR(100),
IsActive			TINYINT(1)	     default 1		NOT NULL,
DateCreated			DATETIME	     NOT NULL		default current_timestamp   NOT NULL,
DateUpdated			DATETIME 	     NOT NULL		default current_timestamp	NOT NULL,
UpdatedByUser 		INT 		     default 1 		NOT NULL,
FOREIGN KEY (UserID) 				 REFERENCES User (ID)
);

-- Create Product table
CREATE TABLE Product (
ID	    		INT     		  PRIMARY KEY  		AUTO_INCREMENT,
VendorID		INT		 		  NOT NULL,
PartNumber		VARCHAR(50)		  NOT NULL,
Name			VARCHAR(150)	  NOT NULL,
Price			DECIMAL(10,2)	  NOT NULL,
Unit			VARCHAR(255) 	  NOT NULL,
PhotoPath		VARCHAR(255) 	  NOT NULL,
IsActive		TINYINT(1)	      default 1			NOT NULL,
DateCreated		DATETIME	      NOT NULL			default current_timestamp   NOT NULL,
DateUpdated		DATETIME 	      NOT NULL			default current_timestamp	NOT NULL,
UpdatedByUser 	INT 		      default 1 		NOT NULL,
FOREIGN KEY 	(VendorID) 		  REFERENCES Vendor (ID)
);

-- Create Purchase Request Line Item table
Create Table PurchaseRequestLineItem (
ID			  		INT				  PRIMARY KEY		AUTO_INCREMENT,
PurchaseRequestID	INT				  NOT NULL,
ProductID			INT				  NOT NULL,
Quantity			INT				  NOT NULL,
IsActive			TINYINT(1)	      default 1			NOT NULL,
DateCreated			DATETIME	      NOT NULL			default current_timestamp   NOT NULL,
DateUpdated			DATETIME 	      NOT NULL			default current_timestamp	NOT NULL,
UpdatedByUser 		INT 		      default 1 		NOT NULL,
FOREIGN KEY 		(ProductID) 	 		  			REFERENCES Product (ID),
FOREIGN KEY 		(PurchaseRequestID) 	 		    REFERENCES PurchaseRequest (ID)
);



