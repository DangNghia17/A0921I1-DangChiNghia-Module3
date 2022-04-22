create database if not exists buon_ban_vat_lieu;
use buon_ban_vat_lieu;

-- tao bảng đơn đặt hàng

create table nha_cung_cap(
 ma_nha_cung_cap int primary key  ,
ten_nha_cung_cap varchar(50) ,
dia_chi varchar(100),
sdt varchar(11)
);
create table don_dat_hang(
so_don_hang int primary key auto_increment ,
ngay_dat_hang date,
ma_nha_cung_cap int,
foreign key(ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap)
);


create table vat_tu(
ma_vat_tu int primary key ,
ten_vat_tu varchar(30)
);
create table phieu_xuat(
so_phieu_xuat int primary key ,
ngay_xuat varchar(30)
);




create table phieu_nhap(
so_phieu_nhap int primary key,
ngay_nhap varchar(50)
);
create table vat_tu_phieu_nhap(
don_gia_nhap varchar(50),
so_luong_nhap varchar(50)
);
create table vat_tu_phieu_xuat(
don_gia_xuat varchar(50) ,
ngay_xuat varchar(30),
ma_vat_tu int,
primary key (don_gia_xuat,ngay_xuat),
foreign key(don_gia_xuat) references phieu_xuat(so_phieu_xuat),
foreign key(ma_vat_tu) references vat_tu(ma_vat_tu)
);




