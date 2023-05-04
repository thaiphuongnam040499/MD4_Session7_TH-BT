-- create database demo;
-- use demo;
-- create table user(
-- id int(3) not null auto_increment,
-- name varchar(120) not null,
-- email varchar(220) not null,
-- country varchar(120),
-- primary key (id)
-- );

create database store_procedure;
use store_procedure;
create table users (
id int primary key auto_increment,
name varchar(255) not null,
email varchar(255) not null,
country varchar(255) not null
);
insert into users(name,email,country) values 
("Minh","Minh@rikkei.academy","Việt Nam"),
("Kante","kante@che.uk","Kenia");
DELIMITER $$
CREATE PROCEDURE get_user_by_id(IN user_id INT)
BEGIN
    SELECT users.name, users.email, users.country
    FROM users
    where users.id = user_id;
    END$$
DELIMITER ;
  
DELIMITER $$
CREATE PROCEDURE insert_user(
IN user_name varchar(50),
IN user_email varchar(50),
IN user_country varchar(50)
)
BEGIN
    INSERT INTO users(name, email, country) VALUES(user_name, user_email, user_country);
    END$$
DELIMITER ;
