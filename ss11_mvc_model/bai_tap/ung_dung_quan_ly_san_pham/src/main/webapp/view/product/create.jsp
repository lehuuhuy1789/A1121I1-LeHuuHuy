<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 25/05/2022
  Time: 6:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new product</title>
    <script src="jquery/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="../../bootstrap-4.6.1-dist/css/bootstrap.css">
    <script src="../../bootstrap-4.6.1-dist/js/bootstrap.js"></script>
</head>
<a href="/product">Back to ProductList</a>
<body>
<form action="/product?action=add" method="post">
    <fieldset>
        <legend>Create product</legend>
        <table>
            <tr>
                <td>Id: </td>
                <td><input type="text" name="id" id="id" placeholder="Nhap Id"></td>
            </tr>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name" placeholder="Nhap ten"></td>
            </tr>
            <tr>
                <td>Type: </td>
                <td><input type="text" name="type" id="type" placeholder="Nhap loai"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="text" name="price" id="price" placeholder="Nhap gia"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
