use demo;
create table student(
id int ,
`name` varchar(50),
gender bit,
birthday varchar(45),
`point` int ,
`account` varchar(45),
classId int,
email varchar(45)
);

insert into `student` 
values 
(6,'Nghia', 1 ,  '17/10/2002' , 9 ,'dnghia3' ,1 ,'dnghia@gmail.com'),
(7,'Nghia', 1 ,  '17/10/2002' , 9 ,'dnghia2' ,1 ,'dnghia@gmail.com'),
(8,'Nghia', 0 ,  '27/10/2002' , 9 ,'dnghia12' ,1 ,'dnghia@gmail.com'),
(9,'Nghia', 1 ,  '3/10/2002' , 9 ,'dnghia123' ,1 ,'dnghia@gmail.com'),
(10,'Nghia', 1 ,  '27/10/2002' , 9 ,'dnghia4' ,1 ,'dnghia@gmail.com'),
(11,'Nghia', 0 ,  '1/10/2002' , 9 ,'dnghia' ,1 ,'dnghia@gmail.com'),
(12,'Nghia', 1 ,  '17/10/2002' , 9 ,'dnghia' ,1 ,'dnghia@gmail.com');

 ALTER TABLE `demo`.`student`  AUTO_INCREMENT = 1;