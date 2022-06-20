<%--
  Created by IntelliJ IDEA.
  User: Nghia Fuckboy
  Date: 15/06/2022
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Danh Sach Sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
<h1 style="text-align: center">Danh sách sản phẩm</h1>
<a href="/sanpham?action=create" class="btn btn-success">+ Tạo sản phẩm mới</a>
<br>
<br>
<form action="/student?action=search" method="get">
<input  hidden name="action"  value="search" placeholder="Nhập tên">
<input name="nameSearch" placeholder="Nhập tên">
<button type="submit"> Tìm kiếm</button>
    </form>
<table class="table table-striped table-bordered" style="border-collapse: collapse">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Tên sản phẩm</th>
        <th scope="col">Giá</th>
        <th scope="col">Số lượng</th>
        <th scope="col">Màu sắc</th>
        <th scope="col">Mô tả</th>
        <th scope="col">Danh mục</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${sanPhamList}" var="sanpham">
        <tr>
            <td>${sanpham.id}</td>
            <td>${sanpham.tenSanPham}</td>
            <td>${sanpham.gia}</td>
            <td>${sanpham.soLuong}</td>
            <td>${sanpham.mauSac}</td>
            <td>${sanpham.moTa}</td>
            <td>${sanpham.danhMuc}</td>
            <td>
                <a href="/sanpham?action=edit&id=${sanpham.id}" class="btn btn-warning">Edit</a>
                <a href="/sanpham?action=delete&id=${sanpham.id}" class="btn btn-danger">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
