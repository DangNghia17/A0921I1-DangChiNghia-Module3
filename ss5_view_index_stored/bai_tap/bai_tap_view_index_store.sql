create database store_procedure_excercise;

create table Products (
id int primary key , 
productCode int ,
productName varchar(50),
productPrice long , 
productAmount int ,
productDescription varchar(100),
productStatus varchar(20)
);
insert into products
values (1, 1, 'orange', 25000, 100, 'Cam', 'còn hàng');
insert into products
values (2, 2, 'stawberry', 35000, 200, 'Dâu', 'còn hàng');
insert into products
values (3,3 , 'banana', 20000, 200, 'Chuối', 'hết hàng');
insert into products
values (4, 4, 'watermelon', 50000, 50, 'dưa hấu', 'hết hàng');
insert into products
values (5, 5, 'lemon', 15000, 300, 'chanh', 'còn hàng');


-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
use store_procedure_excercise ;
create unique index index_productCode
on products(productCode)  ;

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
create index productName_Price
on products(productName,productPrice);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
explain select * from products 
where productName = 'd';

-- VIEW 
 create view product_information as 
 select productCode, productName, productPrice, productStatus 
 from products ;

 -- Tiến hành sửa đổi view
  SET SQL_SAFE_UPDATES = 0;
update product_information
set productName = 'lemon'
where productPrice = 20000;

-- Tiến hành xoá view
drop view product_information;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product

delimiter //
create procedure all_information_product()
begin
select * from products;
end 
// delimiter ;

-- gọi procedure vừa tạo
call all_information_product();

-- Tạo store procedure thêm một sản phẩm mới
delimiter //
create procedure add_product()
begin
insert into products values
    (6, 6, "watemelon", 300000, 150, "dưa hấu", "đang về hàng");
end 
// delimiter ;

call add_product();


-- Tạo store procedure sửa thông tin sản phẩm theo id
delimiter //
create procedure update_products_by_id()
begin
  SET SQL_SAFE_UPDATES = 0;
	update products set productPrice = 30000, productAmount = 20 where id = 6;
end 
//delimiter ;

call update_products_by_id();

-- Tạo store procedure xoá sản phẩm theo id
delimiter //
create procedure delete_products_by_id()
begin
	delete from products where id = 3;
end //
delimiter ;

call delete_products_by_id();