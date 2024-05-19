Create database RakshaPipe;
use RakshaPipe;
create table Customers(
ID int primary key,
name varchar(100),
date_of_birth varchar(30),
email varchar(50),
date_entered varchar(30),
city varchar(30)
);
select * from Customers;



create table shippers(
ID int primary key,
companyname varchar(30)
);

select * from shippers;
create table Orders(
    orderid int primary key,
	Orderdate	varchar(20),
    shipdate varchar(20),	
    deliverydate varchar(20),	
    paymentType varchar(30),
    customer_id	int,
    shipper_id	int,
    foreign key(customer_id) references Customers(ID),
foreign key(shipper_id) references shippers(ID)
 
);
select * from Orders;
create table suppliers(
Id	int primary key,
Company_name varchar(50),	
Country varchar(20)	,
State varchar(50),	
email varchar(30),	
phone varchar(50)
);

select * from suppliers;
create table Category(
Category_ID int primary key,
Category varchar(20)
);

create table products(
product_id	int primary key,
products varchar(30),	
Category_id	int ,
Brand varchar(30),
price int,
foreign key(Category_id) references Category(Category_ID)
);
select * from products;
select * from suppliers;
 create table Orderdetails(
 Orderdetails_id int primary key,
 orderid int,
 Product_id int,	
 Quantity int,	
 supplier_id int,
 foreign key(supplier_id) references suppliers(id),
 foreign key(Product_id) references products(product_id),
 foreign key(orderid) references Orders(orderid)

 );


select * from orderdetails;
drop database rakshapipes;
