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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body>
<table class="table" border="1">
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Birthday</th>
        <th scope="col">Address</th>
        <th scope="col">Image</th>
    </tr>
    <c:forEach items="${customerList}" var="customer" varStatus="item">
        <tr>
            <td scope="row">${customer.name}</td>
            <td scope="row">${customer.birthday}</td>
            <td scope="row">${customer.address}</td>
            <td scope="row">${customer.image}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
