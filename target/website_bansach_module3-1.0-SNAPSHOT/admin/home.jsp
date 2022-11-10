<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/11/2022
  Time: 3:28 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Admin: Home</title>
    <%@include file="all_Css.jsp"%>
    <style type="text/css">

        a{
            text-decoration: none;
            color: black;
        }
        a:hover{
            text-decoration: none;
            color: black;
        }


    </style>
</head>
<body>
<%@include file="navbar.jsp"%>
<h1>Admin: Home</h1>
<div class="container">
    <div class="row p-5">
        <div class="col-md-3">
            <a href="add_books.jsp">
            <div class="card">
                <div class="card-body text-center">
                    <i class="fas fa-plus-square fa-3x text-primary"></i><br>
                    <h4>Add Book</h4>
                    --------------
                </div>
            </div>
            </a>
        </div>

        <div class="col-md-3">
            <a href="all_books.jsp">
            <div class="card">
                <div class="card-body text-center">
                    <i class="fas fa-book-open fa-3x text-danger"></i><br>
                    <h4>All Book</h4>
                    --------------
                </div>
            </div></a>
        </div>

        <div class="col-md-3">
            <a href="orders.jsp">
            <div class="card">
                <div class="card-body text-center">
                    <i class="fas fa-plus-square fa-3x text-primary"></i><br>
                    <h4>Order Book</h4>
                    --------------
                </div>
            </div></a>
        </div>

        <div class="col-md-3">
            <div class="card">
                <div class="card-body text-center">
                    <i class="fas fa-sign-out-alt fa-3x text-warning"></i><br>
                    <h4>Log Out</h4>
                    --------------
                </div>
            </div>
        </div>

    </div>
</div>

</body>
</html>
