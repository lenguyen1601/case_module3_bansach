<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/11/2022
  Time: 3:27 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>User: Home</h1>

<c:if test="${not empty userobj}"><
    <h1>Name:${userobj.name}</h1>
    <h1>Email:${userobj.email}</h1>
</c:if>
</body>
</html>
