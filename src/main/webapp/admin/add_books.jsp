<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/11/2022
  Time: 4:41 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin: Add Book</title>
    <%@include file="all_Css.jsp"%>
</head>
<body style="background-color: #f0f2f2;">
<%@include file="navbar.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Add Book</h4>

                    <form action="register" method="post">


                        <div class="form-group">
                            <label for="exampleInputEmail1">Book Name</label>
                            <input name="bname" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  >

                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Author Name</label>
                            <input name="author" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >

                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Price</label>
                            <input name="price" type="password" class="form-control" id="exampleInputPassword1" >
                        </div>
                        <div class="form-group">
                            <%--@declare id="inputstate"--%><label for="inputState">Book Category</label>
                           <select id="inputState" name="btype" class="form-control">
                               <option selected>--Select--</option>
                               <option value="New">New Book</option>
                           </select>

                            <div class="form-group">
                                <label for="inputState">Book Status</label>
                                <select id="inputState" name="bstatus" class="form-control">
                                    <option selected>--Select--</option>
                                    <option value="Active">Active</option>
                                    <option value="Inactive">Inactive</option>
                                </select>
                            </div>
                            <div class="form-control">
                               <label for="exampleFormControlFile1">Upload Photo</label>
                                <input name="bimg" type="file" class="form-control-file" id="exampleFormControlFile1">
                            </div>
                                <button type="submit" class="btn btn-primary">Add</button>


                    </form>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
