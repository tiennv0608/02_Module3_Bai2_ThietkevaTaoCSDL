create database qlbanhang;
use qlbanhang;
create table customer(
	CusID int auto_increment primary key,
    CusName varchar(45) not null,
    CusAge int
);
create table OrderCustomer(
	OrderID int auto_increment primary key,
	CusID int not null,
	OrderDate datetime not null,
	OrderTotalPrice int not null,
    foreign key (CusID) references customer(CusID)
);
create table product(
	ProductID int auto_increment primary key,
    ProductName varchar(45) not null,
    ProductPrice int not null
);
create table OrderDetail(
	OrderID int not null,
    ProductID int not null,
    OrderQuantity int not null,
    primary key (OrderID, ProductID),
    foreign key(OrderID) references OrderCustomer(OrderID),
    foreign key(ProductID) references product(ProductID)
);
    