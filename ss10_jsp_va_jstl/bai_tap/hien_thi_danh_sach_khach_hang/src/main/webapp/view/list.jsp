<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 23/05/2022
  Time: 8:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách khách hàng</title>
</head>
<body>
<h1 style="text-align: center">Danh sach khach hang</h1>
<table border="bold" style="margin-left: 40%">
    <tr>
        <th>Ten</th>
        <th>Ngay sinh</th>
        <th>Dia chi</th>
        <th>Anh</th>
    </tr>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.birthday}</td>
            <td>${customer.address}</td>
            <td><image src="${customer.image}" width="50px" height="50px"></image></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
