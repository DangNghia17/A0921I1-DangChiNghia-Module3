create database `final_exam_module`;
use `final_exam_module`;


create table `san_pham`(
`id` int primary key auto_increment,
`ten_san_pham` varchar(45) not null,
`gia` varchar(45) not null,
`so_luong`int not null,
`mau_sac` varchar(45)  null,
`mo_ta` varchar(45)  null,
`danh_muc` varchar(45)  null
);


create table `phan_loai`(
`id` int,
`danh_muc` varchar(45)
);
