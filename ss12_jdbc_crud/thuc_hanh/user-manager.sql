CREATE DATABASE `demo`;
USE demo;

create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Nguyen A','nguyena@codegym.com','Viet Nam');
insert into users(name, email, country) values('Dang B','dangb@gmail.com','My');
insert into users(name, email, country) values('Tran Trang','kante@che.uk','My');
insert into users(name, email, country) values('Hoang Van Y','yhoang@gmail.com','Y');
insert into users(name, email, country) values('Kante','kante@gmail.com','Lao');

-- --tìm kiếm theo country--
select * 
from users
where country = 'Viet Nam' ;

-- sắp xếp theo tên--
select * 
from users
group by id
order by `name` ;