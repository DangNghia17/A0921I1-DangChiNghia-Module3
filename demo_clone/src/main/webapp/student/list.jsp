<%--
  Created by IntelliJ IDEA.
  User: Nghia Fuckboy
  Date: 10/06/2022
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>List page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body>
<h1>List page</h1>

<a href="/index.jsp" class="btn btn-primary"><h5>quay lai trang chu</h5></a>


<a href="/student?action=add" class="btn btn-success">Thêm mới</a>

<h1>Danh sách sinh viên</h1>
<table class="table" border="1" style="border-collapse:  collapse">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Gender</th>
        <th>Birthday</th>
        <th>Point</th>
        <th>Rank</th>
        <th>Account</th>
        <th>Class id</th>
        <th>Email</th>
        <th>Other</th>
    </tr>
    <c:forEach items="${Studentlist}" var="student" varStatus="status">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <c:if test="${student.gender}">
                <td>Nam</td>
            </c:if>
            <c:if test="${!student.gender}">
                <td>Nữ</td>
            </c:if>
            <td>${student.birthday}</td>
            <td>${student.point}</td>
            <c:choose>
                <c:when test="${student.point>=8}">
                    <td>Gioi</td>
                </c:when>
                <c:when test="${student.point>=7}">
                    <td>Kha</td>
                </c:when>
                <c:when test="${student.point>=5}">
                    <td>Trung binh</td>
                </c:when>
                <c:otherwise>
                    <td>Yeu</td>
                </c:otherwise>
            </c:choose>
            <td>${student.account}</td>
            <td>${student.class_id}</td>
            <td> ${student.email}</td>
            <td><a href="/student?action=edit" class="btn btn-warning">Chỉnh sửa</a> </td>
            <td><a href="/student?action=delete"  class="btn btn-danger">Xóa</a> </td>
            <td></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
