<%--
  Created by IntelliJ IDEA.
  User: Nghia Fuckboy
  Date: 24/05/2022
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Show customer</title>
</head>
<body>
<table border="1">
    <tr>
        <th>STT</th>
        <th>ID</th>
        <th>Name</th>
        <th>Birthday</th>
        <th>Address</th>
        <th>Email</th>
    </tr>
    <c:forEach items="${customer}" var="customer" varStatus="item" >
        <tr>
            <td>${customer.name}</td>
            <td>${customer.birthday}</td>
            <td>${customer.address}</td>
            <td>${customer.image}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
