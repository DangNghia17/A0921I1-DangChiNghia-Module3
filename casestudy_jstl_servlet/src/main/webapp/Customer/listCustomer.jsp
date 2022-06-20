<%--
  Created by IntelliJ IDEA.
  User: Nghia Fuckboy
  Date: 10/06/2022
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Customer Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <style>
        .btn-danger:hover{
            background-color: rgba(255,162,98,0.85);
            border: 1px solid rgba(255,162,98,0.85);
        }
    </style>
</head>
<body>
<h1>List Customer</h1>
<a href="../index.jsp" style="margin-top: 10px;">Back To Home Page</a><br>

<a href="/customer?action=create" class="btn btn-success" role="button" style="margin: 10px 0">Create New Customer</a>

<table id="tableCustomer" class="table table-striped table-bordered" style="border-collapse: collapse">
    <thead>
    <tr>
        <th>STT</th>
        <th>Ma Khách Hàng</th>
        <th>Họ và Tên</th>
        <th>Ngày Sinh</th>
        <th>Số CMND</th>
        <th>SĐT</th>
        <th>Email</th>
        <th>Địa Chỉ</th>
        <th>Xóa</th>
        <th>Sửa</th>
    </tr>
    </thead>
</body>
</html>
