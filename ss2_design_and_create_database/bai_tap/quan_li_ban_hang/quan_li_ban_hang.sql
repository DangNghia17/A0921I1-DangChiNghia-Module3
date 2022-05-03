create database quan_li_ban_hang;
use quan_li_ban_hang;

create table Customer(
cID int primary key ,
cName varchar(30),
cAge int
);

create table `Order`(
oID int primary key ,
cID int,
oDate date,
oTotalPrice long ,
foreign key(`cID`) references Customer(`cID`) 
);

create table `Product`(
pID int primary key ,
pName varchar(30),
pPrice long
);

create table `OrderDetail`(
oID int  ,
pID int ,
primary key(oID, pID),
odQTY int,
foreign key(`oID`) references `Order`(oID) ,
foreign key(`pID`) references `Product`(pID)
);