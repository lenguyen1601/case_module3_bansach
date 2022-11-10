<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/11/2022
  Time: 1:17 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<html>
<head>
    <title>Ebook: Register</title>
  <%@include file="all_component/all_Css.jsp"%>
</head>
<body style="background-color:#f0f1f2; ">
<%@include file="all_component/navbar.jsp"%>
<div class="container p-2">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card-body">
                <h4 class="text-center">Registration Page</h4>

                <c:if test="${not empty succMsg}">
                    <p class="text-center text-success">${succMsg}</p>
                    <c:remove var="succMsg" scope="session"/>
                </c:if>

                <c:if test="${not empty failedMsg}">
                    <p class="text-center text-danger">${failedMsg}</p>
                    <c:remove var="failedMsg" scope="session"/>
                </c:if>


                <form action="register" method="post">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Enter full name</label>
                        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  required name="fname">

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required name="email">

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Phone Number</label>
                        <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required name="phno" >

                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1"  required name="password">
                    </div>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input"name="check" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Agree term</label>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>

    </div>
</div>



</body>
</html>
