<%--
  Created by IntelliJ IDEA.
  User: Nghia Fuckboy
  Date: 27/05/2022
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create Product</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
            crossorigin="anonymous"></script>
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
    <c:if test="${requestScope['message'] != null }">
        <span class="message"> ${requestScope["message"]}</span>
    </c:if>
</p>
<a href="/products?action=">Back to Product Page</a>
<br>

<legend>Product information</legend>
<form action="product/list.jsp" method="post">

    <div class="col-md-3">
        <label for="id" class="form-label">ID Product</label>
        <input type="text" class="form-control" name="id" id="id">
    </div>
    <div class="col-md-3">
        <label for="name" class="form-label">Name Product:</label>
        <input type="text" class="form-control" id="name" name="name">
    </div>
    <div class="col-md-3">
        <label for="Price" class="form-label">Price:</label>
        <input type="text" class="form-control" id="price" name="price">
    </div>
    <div class="col-md-3">
        <label for="description" class="form-label">Description:</label>
        <input type="text" class="form-control" id="description" name="description">
    </div>
    <div class="col-md-3">
        <label for="country" class="form-label">Country:</label>
        <input type="text" class="form-control" id="country" name="country">
    </div>
    <br>
    <div class="col-md-3">
        <button type="submit" class="btn btn-primary">Create product</button>
    </div>

</form>

</div>
</body>
</html>
