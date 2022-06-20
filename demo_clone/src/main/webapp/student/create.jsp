<%--
  Created by IntelliJ IDEA.
  User: Nghia Fuckboy
  Date: 10/06/2022
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Student</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

</head>
<body>

<h1>Create Student Page</h1>
<a href="/student" class="btn btn-primary">Quay về trang show list</a>
<c:if test="${mess!=null}">
    <p style="color : green ;">${mess}</p>
</c:if>
<div class="row mx-auto " style="width: 900px;">
    <div class="col-md-6">
        <form class="form-group " action="/student?action=add" method="post">
            <label>Tên :</label>
            <input class="form-control" type="text" name="name" placeholder="Nhâp tên">
            <label>Giới tính :</label>
            <select class="form-control">
                <option selected>Nam</option>
                <option value="false">Nữ</option>
            </select>
            <label>Ngày sinh :</label>
            <input class="form-control" type="date" name="birthday"></td>
            <label>Điểm :</label>
            <input class="form-control" type="text" name="point" placeholder="nhập điểm">
            <label>Account :</label>
            <input class="form-control" type="text" name="account" placeholder="nhập account">
            <label>Lớp :</label>
            <select class="form-control" name="class_id">
                <option value="1">1</option>
                <option value="2">2</option>

            </select>
            <label>Email :</label>
            <input class="form-control" type="text" name="email" placeholder="nhập email"></td>
            <br>
            <button class="form-control btn btn-primary" type="submit">Create new student</button>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
        crossorigin="anonymous"></script>
</body>
</html>
