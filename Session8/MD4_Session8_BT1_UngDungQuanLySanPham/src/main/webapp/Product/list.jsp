<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 4/26/2023
  Time: 9:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Product</h1>
    <a href="product?action=create">create product</a>
    <table border="1">
        <thead>
        <tr>
            <th>Mã sản phẩm</th>
            <th>Tên sản phẩm</th>
            <th>Mô tả</th>
            <th>Giá bán</th>
            <th>Số lượng</th>
            <th colspan="2">Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items='${requestScope["products"]}' var="product">
            <tr>
                <td>${product.id}</td>
                <td>${product.productName}</td>
                <td>${product.description}</td>
                <td>${product.exportPrice}</td>
                <td>${product.quantity}</td>
                <td><a href="product?action=edit&id=${product.getId()}">Edit</a></td>
                <td><a href="">Delete</a></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</body>
</html>
