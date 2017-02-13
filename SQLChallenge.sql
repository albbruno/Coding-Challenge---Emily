USE master

CREATE DATABASE ChallengeDB

USE ChallangeDB

CREATE TABLE Employee(
	EmpID int IDENTITY (1,1) NOT NULL, --PK
	FirstName varchar(20) NOT NULL,
	LastName varchar(20) NOT NULL,
	Salary int,
	StreertAddress varchar (100) NOT NULL,
	City varchar(40),
	[State] varchar(40), --could be FK 
	Zipcode int,
	DepartmentID int, --FK

	CONSTRAINT PK_Employee_ID PRIMARY KEY CLUSTERED (EmpID)
);

CREATE TABLE Department(
	DepartID int IDENTITY (1,1) NOT NULL,
	[Name] varchar(100) NOT NULL

	CONSTRAINT PK_Department_ID PRIMARY KEY CLUSTERED (DepartID)
);

--dropping tables if needed later
--DROP TABLE Employee;
--DROP TABLE Department;

--create a state table here later

ALTER TABLE Employee ADD CONSTRAINT FK_Employee_Department FOREIGN KEY (DepartmentID)
REFERENCES Department (DepartID) ON UPDATE CASCADE;


INSERT INTO Department ([Name]) --4
VALUES ('Sales');

INSERT INTO Department ([Name]) --2
VALUES ('Costumer Service');

INSERT INTO Department ([Name]) --0
VALUES ('Research & Development');

INSERT INTO Department ([Name]) --1
VALUES ('Training');

INSERT INTO Department ([Name])--1
VALUES ('Human Resources');

--department 1
INSERT INTO Employee(FirstName, LastName, Salary, StreertAddress, City, [State], Zipcode, DepartmentID)
VALUES ('Dazed', 'Confused', 12903, 'This Isnt My Home', 'Lost', 'Nowhere', 61981, 1);

INSERT INTO Employee(FirstName, LastName, Salary, StreertAddress, City, [State], Zipcode, DepartmentID)
VALUES ('Happy', 'Yay', 24897397, 'Fun Fun Land', 'Imagination', 'Candy', 167764, 1);

INSERT INTO Employee(FirstName, LastName, Salary, StreertAddress, City, [State], Zipcode, DepartmentID)
VALUES ('Dog', 'Dude', 224897, 'Grrrrr', 'Growl', 'Arf', 45164, 1);

INSERT INTO Employee(FirstName, LastName, Salary, StreertAddress, City, [State], Zipcode, DepartmentID)
VALUES ('Guy', 'Man', 00000000000000000, 'Some Place Around', 'A City Today', 'A State Tomorrow', 3461, 1);

--department 2
INSERT INTO Employee(FirstName, LastName, Salary, StreertAddress, City, [State], Zipcode, DepartmentID)
VALUES ('Bear', 'Grizzly', 65198, 'Woodlands Street Around Some Honey', 'Roar', 'Fish', 0022497, 2);

INSERT INTO Employee(FirstName, LastName, Salary, StreertAddress, City, [State], Zipcode, DepartmentID)
VALUES ('Kyle', 'Joe', 6584, '24204 A street', 'hi', 'bye', 11111, 2);

--department 4
INSERT INTO Employee(FirstName, LastName, Salary, StreertAddress, City, [State], Zipcode, DepartmentID)
VALUES ('Billy', 'Bob', 224897, 'Bob Billy Billy Bob Str', 'Bolly', 'Biby', 149, 4);

--department 5
INSERT INTO Employee(FirstName, LastName, Salary, StreertAddress, City, [State], Zipcode, DepartmentID)
VALUES ('I', 'Dont', 1337, 'Know What', 'To', 'Put', 101, 5);


SELECT * FROM Employee WHERE DepartmentID LIKE (1);

SELECT  DepartmentID, SUM(Salary) AS TotalSalary FROM Employee GROUP BY DepartmentID;

UPDATE Employee
SET Salary = 1
WHERE EmpID = 4;


ALTER TABLE Employee 
Add DateHired Date;
