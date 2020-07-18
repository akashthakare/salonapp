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
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>


<script type="text/javascript">
$(function() {
  $('#datetimepicker1').datetimepicker({
      format: 'DD-MM-YYYY',
  });
 
 
});


//script for multi select options

</script>
</head>
<style>
body {
  background-image: url("/img/banner4.png");
  min-height : 100%;
  min-width : 100%;
  background-size:100% 100%;
  background-repeat:no-repeat;
}
.container
{
margin-top:100px;
}

.error
{
color: red;}

.form-control:focus
{border-color: #5cb85c;  box-shadow: none; -webkit-box-shadow: none;} 
.has-error .form-control:focus
{box-shadow: none; -webkit-box-shadow: none;}

form
{
  
margin:20px;
width:500px;
height:400px;
}

label {
    color: black;

    font-size: 20px;
}
</style>
<body>
<%@ include file="WebsiteComponents/navbar.jsp" %> 

   
<div class="container mt-3">
	<div class="row">
		<div class="col-md-6">
			<div class="row justify-content-center">
		    	<div class='col-sm-6'>
		    		<form:form class="form-horizontal" action="/appointment" method="post" modelAttribute="book">
		     			<div class="form-group">
		    				<label for="">Enter Name</label>
		    				<form:input path="customerName" class="form-control" placeholder="Enter Username"/>
		    				<form:errors path="customerName" cssClass="error" /><br/>
		  				</div>
		    			<div class="form-group">
		    				<label for="">Username</label>
		    				<form:input path="username" class="form-control" placeholder="Enter Username"/>
		    				<form:errors path="username" cssClass="error" /><br/>
		    				<span>${msg}<a href="${pageContext.request.contextPath}/customerRegistration">Register here</a></span><br>
		  				</div>
		  				<div class="form-group">
		    				<label for="">Gender</label>
		      					Male <form:radiobutton path="gender" value="Male"/>
		      					Female <form:radiobutton path="gender" value="female"/>
		      					<form:errors path="gender" cssClass="error" /><br/>
		  				</div>
		  				<div class="form-group">
		        			<label for="">Date</label>
		        			<div class='input-group date' id='datetimepicker1'>
		          				<input type='text' name="date" class="form-control" />
		          				<span class="input-group-addon">
		            				<span class="glyphicon glyphicon-calendar"></span>
		          				</span>
		        			</div>
		        			<form:errors path="date" cssClass="error" /><br/>
		        		</div>
		  				<div class="form-group">
		  					<label for="">Select Your Service</label>
		    				<form:select path="service" id="drp" multiple="multiple">
		    					<form:option value = "" label = "Select"/>
		    					<form:options items="${serviceList}" itemLabel="name" itemValue="name"></form:options>                                                                                                       
		  					</form:select>    
		      				<form:errors path="service" cssClass="error" /><br/>
		        		</div>
		  				
		    				<form:hidden path = "shopId" value = "${shop.shopId}" />
		  				
		    				<form:hidden path = "shopName" value = "${shop.shopName}" />
		  				
		      			<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-success stretched-link">Submit</button>
						</div>
		      		</form:form>
		    	</div>
			</div>
		</div>
		<div class="col-md-6">
                
  				
            </div>
		
		
	</div>	
</div>


    




<%@ include file="WebsiteComponents/footer.jsp" %>  



</body>
</html>