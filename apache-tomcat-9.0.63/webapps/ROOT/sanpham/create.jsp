<%--
  Created by IntelliJ IDEA.
  User: Nghia Fuckboy
  Date: 17/06/2022
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Create Product</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <style>
        .message {
            color: red;
        }
        .body{
            padding-left: 10px;
        }
    </style>
</head>
<body>
<div class="rounded border border-success">
    <h1>Create new Product</h1>
    <p>
        <c:if test="${mess!=null}">
    <p>${mess}</p>
    </c:if>
    </p>
    <a href="/sanpham?action=" class="btn btn-success">Trở lại trang chủ</a>
    <br>

    <legend>Tạo sản phẩm</legend>
    <form method="post">

        <div class="col-md-3">
            <label for="id" class="form-label">ID Sản Phẩm</label>
            <input type="text" class="form-control" name="id" id="id">
        </div>
        <div class="col-md-3">
            <label for="name" class="form-label">Tên sản phẩm:</label>
            <input type="text" class="form-control" id="name" name="tenSanPham">
        </div>
        <div class="col-md-3">
            <label for="Price" class="form-label">Giá:</label>
            <input type="text" class="form-control" id="price" name="gia">
        </div>
        <div class="col-md-3">
            <label for="Quantity" class="form-label">Số lượng:</label>
            <input type="text" class="form-control" id="quantity" name="soLuong">
        </div>
        <div class="col-md-3">
            <label for="Color" class="form-label">Màu sắc:</label>
            <input type="text" class="form-control" id="color" name="mauSac">
        </div>
        <div class="col-md-3">
            <label for="description" class="form-label">Mô tả:</label>
            <input type="text" class="form-control" id="description" name="moTa">
        </div>
        <div class="col-md-3">
            <label for="category" class="form-label">Danh mục:</label>
            <input type="text" class="form-control" id="category" name="danhMuc">
        </div>
        <br>
        <div class="col-md-3">
            <button type="submit" class="btn btn-primary">Tạo sản phẩm</button>
        </div>

    </form>
    <div class="col-md-3">
        <a href="/sanpham" class="btn btn-warning" >Quay về </a>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
        crossorigin="anonymous"></script>
</body>
</html>
