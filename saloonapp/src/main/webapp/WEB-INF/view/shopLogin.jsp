<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/js/bootstrap-datetimepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/css/bootstrap-datetimepicker.min.css">

<style>
body {
  background-image: url("/img/banner5.png");
  background-repeat: no-repeat;
  min-height : 100%;
  min-width : 100%;
  background-size:100%;
}
.container
{
margin-top:100px;
}

footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  /* Set the fixed height of the footer here */
  height: 80px;
  background-color: #f5f5f5;
}
</style> 
</head>
<body>
<%@ include file="WebsiteComponents/navbar.jsp" %> 

<span id="sp1">${msg}</span>
<div class="container">
	<div class="row ">
		<div class="col-md-6">
		</div>
    	<div class='col-sm-6'>
    		<form:form class="form-horizontal" action="shoplogin" method="post" modelAttribute="shop">
    			<div class="imgcontainer" style="margin-left:130px;">
    				<img src="/img/admin.png" style="height:210px;">
  				</div><span id="sp1">${msg}</span>
  				
     			<div class="form-group">
    				<label for="">UserName</label>
    				<input type="text" class="form-control" id="" name="username" placeholder="Enter Username">
  				</div>
    			<div class="form-group">
    				<label for="">Password</label>
    				<input type="password" class="form-control" id="" name="password" placeholder="Enter Passsword">
  				</div>
      			<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-success">Login	</button>
				</div>
      		</form:form>
    	</div>
	</div>
	
</div>
<footer>
<%@ include file="WebsiteComponents/footer.jsp" %>  
</footer>
</body>
</html>