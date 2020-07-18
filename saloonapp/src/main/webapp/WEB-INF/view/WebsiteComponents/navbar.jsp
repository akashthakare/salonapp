<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>

.navbar ul li a:hover:not(.active) {
  background-color: MediumSeagreen;
}
.active {
  background-color: #4CAF50;
}


</style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">
         <img src="${pageContext.request.contextPath}/img/admin-logo.png" height="60" width="50" >
      </a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/shopRegistration">Create Shop</a></li>
      <li><a href="${pageContext.request.contextPath}/shoplogin">Shop Login</a></li>
	  <li><a href="${pageContext.request.contextPath}/customerRegistration">New Customer</a></li>
	  <li><a href="${pageContext.request.contextPath}/findShop">Find Shop</a></li>    </ul>

    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>





</body>
</html>