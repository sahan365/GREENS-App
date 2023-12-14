<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GREENS:login</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color:#dedad9";>
<%@include file="all_component/navbar.jsp" %>

<div class="container p-4">
<div class="row p-5">
<div class="col-md-4 offset-md-4">
<div class="card p-5">
<div class="card-body">
<h3 class="text-center">Log In</h3>
<form>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
    required="required">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1"    required="required" >
  </div>
  <div class="text-center"><br>
   <button type="submit" class="btn btn-primary">Log in</button><br><br>
   <a href="registration.jsp">Create Account</a>
  </div>
 
</form>
</div>
</div>
</div>
</div>
</div>

<%@include file="all_component/footer.jsp" %>

</body>
</html>