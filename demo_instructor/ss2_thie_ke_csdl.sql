create database if not exists c0222g1;
use c0222g1;
create table class_type(
id int primary key auto_increment,
name varchar(50)
);
create table class(
id int primary key auto_increment,
name varchar(50),
class_type_id int,
foreign key(class_type_id) references class_type(id)
);
create table jame (
`account` varchar(50),
`password` varchar(25),
primary key (`account`)
);
create table student(
 id int primary key auto_increment,
 name varchar(50),
 birthday date,
 gender boolean,
 email varchar(50),
 point int,
 `account` varchar(50),
 class_id int,
 foreign key(`account`) references jame(`account`),
 foreign key(class_id) references class(id)
 )
;
create table instructor(
 id int primary key auto_increment,
 name varchar(50),
 birthday date,
 salary float
);

create table instructor_class(
class_id int,
instructor_id int,
start_time date,
primary key(class_id,instructor_id),
foreign key(class_id) references class(id),
foreign key(instructor_id) references instructor(id)
);
-- Nhập thông tin cho bảng 
insert into class_type (name) values ('full time'), ('part time'),('orther');
select * from class_type;

insert into class (name,class_type_id) values ('c1121g1',1), ('c1221g1',1),('a0821i1',2),('a0921i1',2);
select* from class;

insert into jame(`account`,`password`)
 values('cunn','12345'),('chunglh','12345'),('hoanhh','12345'),('dungd','12345'),('huynhtd','12345'),
 ('hainm','12345'),('namtv','12345'),('hieuvm','12345'),('kynx','12345'),('vulm','12345');

insert into jame(`account`,`password`)
 values('anv','12345'),('bnv','12345');
 select* from jame;
 
 insert into instructor(`name`,birthday, salary)
 values('tran van chanh','1985-02-03',100),('tran minh chien','1985-02-03',200),('vu thanh tien','1985-02-03',300);
  insert into instructor(`name`,birthday, salary)
 values('tran van nam','1989-12-12',100);
 select* from instructor;
 
 insert into student(`name`,birthday, gender,`point`, class_id,`account`) 
 values ('nguyen ngoc cu','1981-12-12',1,8,1,'cunn'),('le hai chung','1981-12-12',1,5,1,'chunglh'),
 ('hoang huu hoan','1990-12-12',1,6,2,'hoanhh'),('dau dung','1987-12-12',1,8,1,'dungd'),
 ('ta dinh huynh','1981-12-12',1,7,2,'huynhtd'),('nguyen minh hai','1987-12-12',1,9,1,'hainm'),
 ('tran van nam','1989-12-12',1,4,2,'namtv'),('vo minh hieu','1981-12-12',1,3,1,'hieuvm'),
 ('le xuan ky','1981-12-12',1,7,2,'kynx'),('le minh vu','1981-12-12',1,7,1,'vulm');

 insert into student(`name`,birthday, gender,`point`, class_id,`account`) 
 values ('nguyen van a','1981-12-12',1,8,null,'anv'),('tran van b','1981-12-12',1,5,null,'bnv');
 select * from student;
 delete from student where id =21 or id =22;
 insert into instructor_class(class_id,instructor_id) values (1,1),(1,2),(2,1),(2,2),(3,1),(3,2);
 select * from instructor_class;
 -- Chay tới đây-- 
select * from class_type;
select* from class;
select* from jame;
select* from instructor;select * from student;
select * from instructor_class;

-- ss3 thao tác với csdl
-- 1. Lấy ra thông tin các học viên, và cho biết các học viên đang theo học lớp nào.
select s.id, s.name as student_name, c.name as class_name from student as s
join class c on s.class_id = c.id;

-- 2. Lấy ra thông tin các học viên, và cho biết các học viên đang theo học lớp nào 
-- và cả các bạn đã đăng ký nhưng chưa có lớp học.
select s.id, s.name as student_name, c.name as class_name from student as s
left join class c on s.class_id = c.id;

-- join 3 bảng lấy thêm thông tin tên loại lớp
select s.id, s.name as student_name, c.name as class_name, ct.name
from student as s
join class c on s.class_id = c.id
join class_type as ct on c.class_type_id=ct.id;

-- 4. Lấy thông tin của các học viên tên 'nguyen minh hai'.
select * from student s where `name` ='nguyen minh hai';

-- 4. Lấy thông tin của các học viên tên 'hai' và 'huynh’.
select * from student s where `name` like '%hai%' or `name` like '%huynh' ;
select * from student s where `name` like concat('%',convert('hải',binary),'%') ;
select * from student s where `name` REGEXP  '\\w+\\sh[a-z]+$';
select * from student s where `name` REGEXP  '\\w+\\sh[a-z]+\\s\\w+$';

-- 5. Lấy ra học viên có điểm lớn hơn 5 .
select * from student s where `point`>5;

-- lấy ra thông tin các học viên có điểm 4,6,8
select * from student s where `point` in (4,6,8);

-- 6. Lấy ra học viên có họ là “nguyen”
select * from student where `name` like 'nguyen%';
-- 7. Thông kế số lượng học sinh theo từng loại điểm.
select s.point, count(*) as so_luong from student as s group by `point`;

-- 8 . Thông kế số lượng học sinh theo điểm và điểm phải lớn hơn 5
select s.point, count(*) as so_luong from student as s
where `point`>5 
group by `point`;
select * from student as s
having `point`>5 ;

-- 9. Thông kế số lượng học sinh theo điểm lớn hơn 5 và chỉ hiện thị với số lượng>=2
select s.point, count(*) as so_luong from student as s
where `point`>5 
group by `point` having so_luong>=2;
-- 10. Lấy ra danh sách học viên của lớp c1121g1 và sắp xếp tên học viên theo point,
-- nếu point bằng nhau thì sắp xếp theo điểm.
select * from student s
join class c on s.class_id= c.id
 where c.`name` ='c1121g1'
 order by s.point asc, s.name desc;

-- bài 4: sử dụng các hàm thông dụng
-- 1.1	Hiện thị danh sách các lớp có học viên theo học và số lượng học viên của mỗi lớp alter
select c.`name`,count(*) as so_luong from student s join class c on s.class_id=c.id
 group by class_id;
-- 1.2.	 Tình điểm lớn nhất của mỗi các lớp
select c.`name`,max(s.`point`) as diem_lon_nhat from student s join class c on s.class_id=c.id
 group by class_id;
-- tính điểm trung bình của toàn trung tâm.
select avg(s.`point`) as diem_tb from student s; 

-- 1.3	 Tình điểm trung bình  của từng lớp các lớp
select c.`name`,avg(s.`point`) as diem_tb from student s join class c on s.class_id=c.id
 group by class_id;
  
 -- 2 Lấy ra toàn bộ tên và ngày sinh các instructor và student ở CodeGym.
    select s.`name`, s.birthday from student s
    union
    select i.`name`, i.birthday from instructor i;
    
    -- Lấy ra 3 học viên có điểm cao nhất của trung tâm.
    select * from student s order by `point` desc limit 3;
    select * from student s order by `point` desc limit 1,4;
 -- 5. Lấy ra các học viên có điểm số là cao nhất của trung tâm.
 -- dùng subquery
 select max(point) from student;
 select * from student s where s.`point`in (select max(point) from student);
 
-- 6 tìm  những gv chưa từng tham gia giảng dạy;
-- không dùng join
select * from instructor i left join instructor_class ic on i.id=ic.instructor_id 
where ic.instructor_id is null;
-- dùng truy vấn con
select ic.instructor_id from instructor_class ic group by instructor_id;
select * from instructor i where id  
not in(select ic.instructor_id from instructor_class ic group by instructor_id);

-- 7. regex tìm kiếm tên chứa "hải"
select * from student s where `name` like concat('%',convert('hải',binary),'%') ;
-- tên bắt đầu bằng "h"
select * from student s where `name` REGEXP  '\\w+\\sh[a-z]+$';

select * from class_type;
select* from class;
select* from jame;
select * from student;
select* from instructor;
select * from instructor_class;
-- bài 5: index và view

-- tạo index
drop index i_country on customers;
select * from customers;
explain select * from customers where country='France';
-- tạo index trên cột country
create index i_country on customers(country);
-- tạo view
create view w_student as
select s.id, s.`name`,c.`name` as class_name
from student s join class c on s.class_id=c.id;
select * from w_student;

-- stored procedure
-- tạo một sp_ để lấy danh sách student
delimiter $$
create procedure sp_get_all_student()
begin
select s.id, s.`name`,c.`name` as class_name
from student s join class c on s.class_id=c.id;
end $$
delimiter ;
call sp_get_all_student();
-- sp_ có tham số in: lấy ra thông tin của học viên theo id
delimiter $$
create procedure sp_find_by_id(in p_id int)
begin
select* from student s where s.id =p_id;
end $$
delimiter ;
-- gọi sp
call sp_find_by_id(2);

-- đếm số lượng học viên trong bảng studetn
delimiter $$
create procedure sp_count_student( out so_luong int)
begin
select count(*) into so_luong from student;
end $$
delimiter ;

call sp_count_student(@sl);
select @sl;

-- Function
-- tạo function xếp loại dựa trên điểm
delimiter $$
create function xep_loai(p_point int)
returns varchar(50)
deterministic
begin
declare xep_loai varchar(50);
 if p_point>=8 then
  set xep_loai ="Giỏi";
  elseif p_point>=7 then
  set xep_loai ="Khá";
  elseif p_point>=5 then
  set xep_loai= "Trung bình";
  else 
  set xep_loai ="Yếu";
  end if;
  return xep_loai;
end $$
delimiter ;

-- sử dụng function xep_loai(point)
select s.id, s.`name`, s.`point`, xep_loai(`point`) as xep_loai from student s;

-- trigger
-- 2. Tạo trigger tự động tạo tài khoản jame mới trước khi thêm một sinh viên
-- + Tài khoản jame được tạo dựa trên username là email và password mặc định "123"
delimiter $$
create trigger auto_create_jame 
before insert on student
for each row
begin
insert into jame values(new.email,'123');
end $$
delimiter ;
-- thêm mới student
 insert into student(`name`,birthday, gender,`point`, class_id,email,`account`) 
 values ('tran van chanh','1981-12-12',1,8,2,'chanhtv1345@gmail.com','chanhtv1345@gmail.com');
 -- xóa trigger
drop trigger auto_create_jame;





















explain select * from customers where country ="france";
alter table customers add index i_country(country);
create index i_id on customers(customerNumber);
drop index i_id on customers;
alter table customers drop index i_country;
show index from customers;
-- view
-- 2.1 tạo procedure không tham số ( lấy ra danh sách học viên)
delimiter $$
create procedure sp_get_all_student()
begin

select s.id, s.`name`,s.birthday, c.`name` from student s join class c on s.class_id =c.id; 
end $$
delimiter ;


  call sp_get_all_student();
  drop procedure sp_get_all_student;
  drop procedure find_by_id;
 
 -- 2.2 tạo procedure hiện thị thông tin student với tham số id
delimiter $$
create procedure find_student_by_id(in p_id int)
begin
if p_id <0 then
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT ='lỗi id <0';
end if;
select * from student s where s.id =p_id;
end $$
delimiter ;
call find_student_by_id(-10);
drop procedure 
-- 2.3 tạo procedure có tham số out -- lấy ra số lượng học viện
delimiter $$
create procedure count_student(out so_luong int)
begin
 select count(*) into so_luong from student;
end $$
delimiter ;
 call count_student(@sl);
 select * from student s where id =@sl;
 drop procedure  count_student;

-- tạo 1 function để xếp loại
delimiter $$
create function xep_loai(p_diem int)
returns varchar(50)
deterministic
begin 
declare loai varchar(50);
if p_diem>=8 then
set loai ='Giỏi';
elseif p_diem>=7 then
set loai ='Khá';
elseif p_diem>=5 then
set loai ='Trung bình';
else 
set loai ='Yếu';
end if;
return loai;
end $$
delimiter ;
select s.`name`,xep_loai(point) as xep_loai from student s;

-- trigger
-- 2. Tạo trigger tự động tạo tài khoản jame mới trước khi thêm một sinh viên
-- + Tài khoản jame được tạo dựa trên username là email và password mặc định "123"
delimiter $$
create trigger auto_create_jame 
before insert on student
for each row
begin
insert into jame values(new.email,'123');
end $$
delimiter ;

-- xóa trigger
drop trigger auto_create_jame;

 insert into student(`name`,birthday, gender,`point`, class_id,email,`account`) 
 values ('tran van chanh','1981-12-12',1,8,2,'chanhtv13457@gmail.com','chanhtv13457@gmail.com');
 
select * from jame;
select * from student;
create table student_history(
id int auto_increment primary key,
`name` varchar(50),
 start_time datetime
);
create table student_log(
id int auto_increment primary key,
old_name varchar(50),
new_name varchar(50),
 change_time datetime
);
select * from student_history;
select * from student_log;

-- ghi thay đổi thông tin student
delimiter $$
create trigger log 
after update on student
for each row
begin
insert into student_log(old_name,new_name,change_time) values(old.`name`,new.`name`,now());
end $$
delimiter ;
drop trigger log; 
update student set `name`="Hảo đã hoàn hảo" where id =12;

select * from student;
select * from jame;

select * from student_log;



-- 
 select * from student s where not exists (select * from class c where s.class_id = c.id);
 
 select * from student s where s.class_id in (select c.id from class c);
 
select s.name,(select c.name from class c where s.class_id = c.id) from student s where s.class_id is not null;
select s.name, (select c.name  from class c where c.id =s.class_id ) as class_name from student s where s.class_id is not null;





