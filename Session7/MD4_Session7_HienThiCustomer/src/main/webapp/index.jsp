<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<c:if test="${listCustomer == null}">
    <c:redirect url="/hello"/>
</c:if>
<c:if test="${listCustomer != null}">
    <table border="1">
        <thead>
        <tr>
            <th>Tên</th>
            <th>Ngày Sinh</th>
            <th>Địa chỉ</th>
            <th>Ảnh</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listCustomer}" var="customer">
            <tr>
                <td>${customer.name}</td>
                <td>${customer.date}</td>
                <td>${customer.address}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>