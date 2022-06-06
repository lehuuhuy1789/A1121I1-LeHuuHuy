<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 01/06/2022
  Time: 5:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search user</title>
</head>
<body>
<h1>Search user by country</h1>
<p>
    <a href="/users">Back to UserList</a>
</p>
<form method="post">
    <fieldset>
        <legend>Search</legend>
        <input type="text" name="country" id="country" placeholder="Nhap country can tim">
        <input type="submit" value="Search user">
    </fieldset>
</form>
</body>
</html>
