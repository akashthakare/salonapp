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
</head>
<body>

<form:form class="form-horizontal" action="searchShop">
<div class="container">
  <div class="row">
    <div class='col-sm-6'>
      <div class="form-group">
        <span>Opening Time</span>
        <div class='input-group date' id='datetimepicker1'>
          <input type='text' name="time1" class="form-control" />
          <span class="input-group-addon">
            <span class="glyphicon glyphicon-calendar"></span>
          </span>
        </div>
        <br/>
        <span>Closing Time</span>
        <div class='input-group date' id='datetimepicker2'>
          <input type='text' name="time2" class="form-control" />
          <span class="input-group-addon">
            <span class="glyphicon glyphicon-calendar"></span>
          </span>
        </div>
        
        
        
         <!-- 
        <span>Select 12 hour time format with date</span>
        <div class='input-group date' id='datetimepicker3'>
          <input type='text' class="form-control" />
          <span class="input-group-addon">
            <span class="glyphicon glyphicon-calendar"></span>
          </span>
        </div>-->
      </div>
    </div>
   
		<div class="col-sm-offset-2 col-sm-10">
		<button type="submit" class="btn btn-default">Submit</button>
		</div>
  	</div>
</div>
</form:form>
</body>
</html>