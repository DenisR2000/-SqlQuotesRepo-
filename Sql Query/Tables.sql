USE master;
IF DB_ID('Seller') IS NOT NULL
   DROP DATABASE Seller;
CREATE DATABASE Seller  collate Ukrainian_CI_AS;
GO
USE Seller;
CREATE TABLE Cities(
id int PRIMARY KEY,
City_Name nvarchar(15)
)
CREATE TABLE Sellers(
id int PRIMARY KEY,
SName nvarchar(10),
id_city int FOREIGN KEY REFERENCES Cities(id) ON DELETE CASCADE ON UPDATE CASCADE,
comision float
)
CREATE TABLE Customers(
id int PRIMARY KEY,
CName nvarchar(10),
id_city int FOREIGN KEY REFERENCES Cities(id) ON DELETE SET NULL ON UPDATE CASCADE,
Raiting int,
id_Sel int FOREIGN KEY REFERENCES Sellers(id)
)

CREATE TABLE Orders(
id int PRIMARY KEY,
data DateTime,
id_Cus int FOREIGN KEY REFERENCES Customers(id),
id_Sel int FOREIGN KEY REFERENCES Sellers(id),
Summa money
)

INSERT INTO Cities(id,City_Name) VALUES (1,'Львов')
INSERT INTO Cities(id,City_Name) VALUES (2,'Сумы')
INSERT INTO Cities(id,City_Name) VALUES (3,'Бердянск')
INSERT INTO Cities(id,City_Name) VALUES (4,'Николаев')
INSERT INTO Cities(id,City_Name) VALUES (5,'Киев')

INSERT INTO Sellers(id,SName,id_city,comision) VALUES (1,'Пётр',1,0.012)
INSERT INTO Sellers(id,SName,id_city,comision) VALUES (2,'Сергей',2,0.13)
INSERT INTO Sellers(id,SName,id_city,comision) VALUES (3,'Максим',1,0.11)
INSERT INTO Sellers(id,SName,id_city,comision) VALUES (4,'Руслан',3,0.15)
INSERT INTO Sellers(id,SName,id_city,comision) VALUES (5,'Алексей',4,0.1)

INSERT INTO Sellers(id,SName,id_city,comision) VALUES (6,'Сигизмунд',1,null)--этот особенный! :)

INSERT INTO Customers(id,CName,id_city,Raiting,id_Sel) VALUES (1,N'Николай',1,100,1)
INSERT INTO Customers(id,CName,id_city,Raiting,id_Sel) VALUES (2,'Георгий',5,200,5)
INSERT INTO Customers(id,CName,id_city,Raiting,id_Sel) VALUES (3,'Леонид',2,200,2)
INSERT INTO Customers(id,CName,id_city,Raiting,id_Sel) VALUES (4,'Григорий',3,300,2)
INSERT INTO Customers(id,CName,id_city,Raiting,id_Sel) VALUES (5,'Константин',1,100,1)
INSERT INTO Customers(id,CName,id_city,Raiting,id_Sel) VALUES (6,'Александр',2,300,4)
INSERT INTO Customers(id,CName,id_city,Raiting,id_Sel) VALUES (7,'Павел',5,100,3)
INSERT INTO Customers (id,CName,id_city,Raiting) VALUES (8,'Махмуд',1,0)
SET DATEFORMAT dmy
INSERT INTO Orders(id,data,Summa,id_Cus,id_Sel) VALUES (1,'10.01.2015',18.69,6,4)
INSERT INTO Orders(id,data,Summa,id_Cus,id_Sel) VALUES (2,'10.01.2015',767.19,1,1)
INSERT INTO Orders(id,data,Summa,id_Cus,id_Sel) VALUES (3,'07.01.2015',1900.1,7,3)
INSERT INTO Orders(id,data,Summa,id_Cus,id_Sel) VALUES (4,'08.01.2015',5160.45,3,2)
INSERT INTO Orders(id,data,Summa,id_Cus,id_Sel) VALUES (5,'16.01.2015',1098.16,6,4)
INSERT INTO Orders(id,data,Summa,id_Cus,id_Sel) VALUES (6,'10.02.2015',1713.23,2,5)
INSERT INTO Orders(id,data,Summa,id_Cus,id_Sel) VALUES (7,'10.02.2015',75.75,4,2)
INSERT INTO Orders(id,data,Summa,id_Cus,id_Sel) VALUES (8,'10.03.2015',4723.51,5,1)
INSERT INTO Orders(id,data,Summa,id_Cus,id_Sel) VALUES (9,'10.04.2015',1309.95,4,2)
INSERT INTO Orders(id,data,Summa,id_Cus,id_Sel) VALUES(10,'11.04.2015',9891.88,5,1)
