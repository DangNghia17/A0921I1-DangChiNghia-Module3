<%--
  Created by IntelliJ IDEA.
  User: Nghia Fuckboy
  Date: 27/05/2022
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${product.getName()}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>${product.getPrice()}</td>
    </tr>
    <tr>
        <td>Description: </td>
        <td>${product.getDescription()}</td>
    </tr>
    <tr>
        <td>Country: </td>
        <td>${product.getCountry()}</td>
    </tr>
</table>
</body>
</html>
