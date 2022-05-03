use quan_li_ban_hang;
INSERT INTO Customer values (1, 'Minh Quan', 10);
INSERT INTO Customer values (2, 'Ngoc Oanh', 20);
INSERT INTO Customer values (3, 'Hong Ha', 50);

INSERT INTO `Order` values (1, 1,'2006-3-21', 100);
INSERT INTO `Order` values (2, 2,'2006-3-23', 200);
INSERT INTO `Order` values (3, 2,'2006-3-16', 100);

INSERT INTO Product
values(1, 'May Giat', 3);
INSERT INTO Product
values(2, 'Tu Lanh', 5);
INSERT INTO Product
values(3, 'Dieu Hoa', 7);
INSERT INTO Product
values(4, 'Quat', 1);
INSERT INTO Product
values(5, 'Bep Dien', 2);

set sql_safe_updates = 0; -- câu lệnh mở update 
INSERT INTO OrderDetail
values(2, 3, 7);
INSERT INTO OrderDetail
values(3, 4, 2);
INSERT INTO OrderDetail
values(4, 1, 1);
INSERT INTO OrderDetail
values(5, 1, 8);
INSERT INTO OrderDetail
values(6, 5, 4);
INSERT INTO OrderDetail
values(7, 3, 3);


-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select oID, oDate, oTotalPrice
from `Order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select cName, pName 
from customer
join `order` on customer.cID = `order`.oID
join `orderdetail` on `order`.oID = `orderdetail`.oID
join `product` on product.pID = `orderdetail`.pID ;


-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select cName 
from customer
join `order` on customer.cID = `order`.oID
where `order`.cID is null;

--  Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
--  Giá bán của từng loại được tính = odQTY*pPrice)

select `order`.oID , `order`.oDate , sum(pPrice*odQTY) as price_of_order
from `order`
join orderdetail on `order`.oID = `orderdetail`.oID
join product on `product`.pID = `orderdetail`.pID
group by oID;

