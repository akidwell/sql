Drop Database if exists bank_db;
Create database bank_db;
use bank_db;

CREATE TABLE Accounts (
	ID int not null primary key auto_increment,
	Account_Holder nvarchar(50) not null,
	Balance decimal (9,2) not null,
	Fees decimal (9,2) not null
);

Insert Accounts (Account_Holder, Balance, Fees) Values ('Anna Bengel',8888,250);
Insert Accounts (Account_Holder, Balance, Fees) Values ('Chase Williams',5444,175);
Insert Accounts (Account_Holder, Balance, Fees) Values ('Jonelle Woherman',3333,88);
Insert Accounts (Account_Holder, Balance, Fees) Values ('Steven Ross',3322,88);


CREATE TABLE Transactions (
	ID int not null primary key auto_increment,
	Amount decimal(9,2) not null,
	TXN_Type nvarchar(50) not null,
	Account_ID nvarchar(2) not null
);

Insert Transactions (Amount, TXN_Type, Account_ID) Values (500,'Deposit', 3);
Insert Transactions (Amount, TXN_Type, Account_ID) Values ((200),'Withdraw', 4);
Insert Transactions (Amount, TXN_Type, Account_ID) Values (200,'deposit', 4);
Insert Transactions (Amount, TXN_Type, Account_ID) Values (248,'deposit', 1);