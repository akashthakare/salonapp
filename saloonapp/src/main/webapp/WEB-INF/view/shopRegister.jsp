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

<!-- <script src="webjars/bootstrap/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap-datetimepicker/1.0.1/js/bootstrap-datetimepicker.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.min.js"></script>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="webjars/bootstrap-datetimepicker/1.0.1/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
-->

<script type="text/javascript">
$(function() {
  $('#datetimepicker1').datetimepicker({
      format: 'hh:mm A',
  });
  $('#datetimepicker2').datetimepicker({
      format: 'hh:mm A',
  });
  $('#datetimepicker3').datetimepicker({
      format: 'DD/MM/YYYY hh:mm A',
  });
});

</script>

 
<style>
body {
  background-image: url("/img/banner.png");
  background-repeat: no-repeat;

}

.container
{
margin-top:100px;

}
</style> 
</head>
<body>
<%@ include file="WebsiteComponents/navbar.jsp" %> 


<div class="container">
	<div class="row justify-content-center">
    	<div class='col-sm-6'>
    		<form:form class="form-horizontal" action="shopRegistration" method="post" modelAttribute="shop">
     			<div class="form-group">
    				<label for="">UserName</label>
    				<input type="text" class="form-control" id="" name="username" placeholder="Enter Username">
  				</div>
    			<div class="form-group">
    				<label for="">Password</label>
    				<input type="password" class="form-control" id="" name="password" placeholder="Enter Passsword">
  				</div>
        		<div class="form-group">
    				<label for="">Shop Name</label>
    				<input type="text" class="form-control" id="" name="shopName" placeholder="Enter Shop Name">
  				</div>
				<div class="form-group">
    				<label for="">Mobile No</label>
    				<input	 type="number" class="form-control" id="" name="mobNo" placeholder="Mobile Number">
  				</div>
  				<div class="form-group">
    				<label for="sel1">Select City (select one):</label>
      				<select class="form-control" id="sl1" name="city">
      					<option value="" disabled selected>Choose your option</option>
        				<option value="akola">Akola</option>
        				<option value="pune">Pune</option>
        				<option value="mumbai">Mumbai</option>
  		        		<option value="nagpur">Nagpur</option>
      				</select>
        		</div>
        		<div class="form-group">
    				<label for="">Address</label>
    				<input type="text" class="form-control" id="" name="address" placeholder="name@example.com">
  				</div>
        		<div class="form-group">
        			<label for="">Opening Time</label>
        			<div class='input-group date' id='datetimepicker1'>
          				<input type='text' name="openTime" class="form-control" />
          				<span class="input-group-addon">
            				<span class="glyphicon glyphicon-calendar"></span>
          				</span>
        			</div>
        		</div>
        		<div class="form-group">
        			<label for="">Closing Time</label>
        				<div class='input-group date' id='datetimepicker2'>
          					<input type='text' name="closeTime"class="form-control" />
         					 <span class="input-group-addon">
            					 <span class="glyphicon glyphicon-calendar"></span>
          					</span>
        				</div>
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