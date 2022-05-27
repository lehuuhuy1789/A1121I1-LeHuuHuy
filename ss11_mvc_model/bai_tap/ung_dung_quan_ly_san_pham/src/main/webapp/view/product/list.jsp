<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 25/05/2022
  Time: 6:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách sản phẩm</title>
    <script src="jquery/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="../../bootstrap-4.6.1-dist/css/bootstrap.css">
    <script src="../../bootstrap-4.6.1-dist/js/bootstrap.js"></script>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="/product?action=add">Create new product</a>
</p>
<p>
    <a href="/product?action=search">Search product</a>
</p>

<table class="table table-dark" border="1">
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Type</td>
        <td>Price</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${productList}' var="product" >
        <tr>
            <td>${product.id}</td>
            <td><a href="/product?action=view&id=${product.id}">${product.name}</a></td>
            <td>${product.type}</td>
            <td>${product.price}</td>
            <td><a href="/product?action=edit&id=${product.id}">edit</a></td>
            <td><a href="/product?action=delete&id=${product.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>