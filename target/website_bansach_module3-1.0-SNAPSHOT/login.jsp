<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/11/2022
  Time: 1:30 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Ebook: Login Page</title>
  <%@include file="all_component/all_Css.jsp"%>
</head>
<body style="background-color:#f0f1f2; ">
<%@include file="all_component/navbar.jsp"%>
<div class="container">
  <div class="row mt-2">
    <div class="col-md-4 offset-md-4">
      <div class="card">
        <div class="card-body">
          <h3 class="text-center">Login</h3>

          <c:if test="${not empty failedMsg}"><
            <h5 class="text-center text danger">${failedMsg}</h5>
            <c:remove var="failedMsg" scope="session"/>
            </c:if>


          <form action="login" method="post">
            <div class="form-group">
              <label for="exampleInputEmail1">Email address</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required name="email">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Password</label>
              <input type="password" class="form-control" id="exampleInputPassword1" required name="password">
            </div>
          <div class="text-center">
            <button type="submit" class="btn btn-primary">Login</button><br>
            <a href="register.jsp">Create Account</a>
          </div>

          </form>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
