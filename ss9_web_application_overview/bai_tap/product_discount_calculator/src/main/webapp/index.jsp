<%--
  Created by IntelliJ IDEA.
  User: Nghia Fuckboy
  Date: 18/05/2022
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chiet Khau san pham</title>
</head>
<body>
<form action="/discount" method="post">
<h1>Product Description: : Keyboard</h1>
<label>List Price Today :</label>
<input type="text" name="price" placeholder="nhập giá sản phẩm hôm nay"><br>
<label>Discount Percent: :</label>
<input type="text" name="discount" placeholder="nhập số phần trăm giảm giá"><br>
<hr>
<input type="submit" id="submit" value="tính toán">
</form>
</body>
</html>
