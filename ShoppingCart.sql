create database shopping_cart;
use shopping_cart;
create table Product(
pId int auto_increment primary key,
pName varchar(50) not null,
pImage varchar(255) not null,
pDes varchar(255),
pPrice float,
pStatus boolean
);
create table Cart(
id int auto_increment primary key,
pId int,
foreign key (pId) references Product(pId),
Quantity int
);
insert into Product(pName,pImage,pDes, pPrice,pStatus) values
("Pizza","../assets/images/pizza.jpg",
"Lorem ipsum dolor sit amet, consectetur adipisicing elit. At dicta asperiores veniam
repellat unde debitis quisquam magnam magni ut deleniti!",12.00,1),
("hamburger","../assets/images/Hamburger.jpg",
"Lorem ipsum dolor sit amet, consectetur adipisicing elit. At dicta asperiores veniam
repellat unde debitis quisquam magnam magni ut deleniti!",12.00,1),
("bread","../assets/images/bread.jpg",
"Lorem ipsum dolor sit amet, consectetur adipisicing elit. At dicta asperiores veniam
repellat unde debitis quisquam magnam magni ut deleniti!",12.00,1),
("cake","../assets/images/Cake.jpg",
"Lorem ipsum dolor sit amet, consectetur adipisicing elit. At dicta asperiores veniam
repellat unde debitis quisquam magnam magni ut deleniti!",12.00,1);
