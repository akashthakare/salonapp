<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<style>
body{
  background-image: url("/img/adminbanner.jpg");
  background-repeat: no-repeat;
  min-height : 100%;
  min-width : 100%;
  background-size:100%;
}
.container
{
margin-top:100px;}
</style>
<body>
<%@ include file="WebsiteComponents/adminHeader.jsp" %> 
  
<div class="container">
<form:form class="form-horizontal" action="/addService/${sessionId}" method="post" modelAttribute="ser">

<div class="row justify-content-center">
    <div class='col-sm-6'>
     	<div class="form-group">
    		<label for="">Service Name</label>
    		<input type="text" class="form-control" id="" name="name" placeholder="Enter Service Name">
  		</div>
    	<div class="form-group">
    		<label for="">Price</label>
    		<input type="text" class="form-control" id="" name="price" placeholder="Enter Service Price ">
  		</div>
		<div class="col-sm-offset-2 col-sm-10">
		<button type="submit" class="btn btn-info">Submit</button>
		</div>
  	</div>
</div>
</form:form>
  </div>
  <span>${msg}</span>
<%@ include file="WebsiteComponents/adminFooter.jsp" %>
 

</body>
</html>