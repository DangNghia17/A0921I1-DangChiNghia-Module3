<%--
  Created by IntelliJ IDEA.
  User: Nghia Fuckboy
  Date: 17/06/2022
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Edit</title>
</head>
<body>
<h1>EDIT Sản Phẩm</h1>
<h2>
    <a href="/sanpham?action=">Quay về trang list</a>
</h2>
</center>
<div align="center">
    <form method="post" class="form-control">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Sản phẩm
                </h2>
            </caption>
            <c:if test="${sanpham != null}">
                <input type="hidden" name="id" value="<c:out value='${sanpham.id}' />"/>
            </c:if>
            <tr>
                <th>Tên sản phẩm :</th>
                <td>
                    <input type="text" name="tenSanPham" size="45"
                           value="<c:out value='${sanpham.tenSanPham}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Giá :</th>
                <td>
                    <input type="text" name="gia" size="45"
                           value="<c:out value='${sanpham.gia}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Số lượng:</th>
                <td>
                    <input type="text" name="soLuong" size="15"
                           value="<c:out value='${sanpham.soLuong}' />"
                    />
                </td>
            </tr>
              <tr>
                <th>Màu sắc:</th>
                <td>
                    <input type="text" name="mauSac" size="15"
                           value="<c:out value='${sanpham.mauSac}' />"
                    />
                </td>
            </tr>
              <tr>
                <th>Mô tả:</th>
                <td>
                    <input type="text" name="soLuong" size="15"
                           value="<c:out value='${sanpham.soLuong}' />"
                    />
                </td>
            </tr>
              <tr>
                <th>Danh mục:</th>
                <td>
                    <input type="text" name="danhMuc" size="15"
                           value="<c:out value='${sanpham.danhMuc}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
