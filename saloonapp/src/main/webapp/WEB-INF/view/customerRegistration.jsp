<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
  background-image: url("/img/banner.png");
  background-repeat: no-repeat;

}

.container
{
margin-top:100px;
}

 .error {
    color: red;
    font-style: italic;
</style>
</head>
<body>
<%@ include file="WebsiteComponents/navbar.jsp" %> 


<div class="container">
	<div class="row justify-content-center">
    	<div class='col-sm-6'>
    		<form:form class="form-horizontal" action="customerRegistration" method="post" modelAttribute="customer">
     			<div class="form-group">
    				<label for="">Enter Name</label>
    				<div class="input-group">
    					<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    					<form:input path="name" class="form-control" placeholder="Enter Your Name"/>
    					<form:errors path="name" cssClass="error" /><br/>
    				</div>
  				</div>
    			<div class="form-group">
    				<label for="">Username</label>
    				<div class="input-group">
    					<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    					<form:input path="username" class="form-control" placeholder="Enter Username"/>
    					<form:errors path="username" cssClass="error" /><br/>
    				</div>
  				</div>
  				<div class="form-group">
    					<label for="">Email</label>
    					<div class="input-group">
        					<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
    						<form:input path="email" class="form-control" placeholder="Enter Email"/>
    						<form:errors path="email" cssClass="error" /><br/>
    					</div>
  				</div>
        		<div class="form-group">
    				<label for="">Password</label>
    				<form:password path="password" class="form-control" placeholder="Enter Passowrd"/>
    				<form:errors path="password" cssClass="error" /><br/>
  				</div>
				<div class="form-group">
    				<label for="">Mobile No</label>
    				<div class="input-group">
        				<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
    					<form:input	path="mobileNo" class="form-control" placeholder="Mobile Number"/>
    					<form:errors path="mobileNo" cssClass="error" /><br>
    				</div>
  				</div>
  				<div class="form-group">
    				<label for="">Gender</label>
      					Male <form:radiobutton path="gender" value="Male"/>
      					Female <form:radiobutton path="gender" value="female"/>
      					<form:errors path="gender" cssClass="error" /><br/>
  				</div>
  				<div class="form-group">
    				<label for="sel1">Select City:</label>
    				<div class="input-group">
        				<span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
      					<form:select path="city" class="form-control">
      						<form:option value="akola" label="Akola"/>
        					<form:option value="pune" label="Pune"/>
        					<form:option value="mumbai" label="Mumbai"/>
  		        			<form:option value="nagpur" label="Nagpur"/>
      					</form:select>
      				</div>
      				<form:errors path="city" cssClass="error" /><br/>
        		</div>
        		<div class="form-group">
    				<label for="">Address</label>
    				<form:input path="address" class="form-control" placeholder="Enter Address"/>
    				<form:errors path="address" cssClass="error" /><br/>
  				</div>
      			<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
      		</form:form>
    	</div>
	</div>
</div>

<%@ include file="WebsiteComponents/footer.jsp" %>  
</body>
</html>