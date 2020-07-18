<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<%@ include file="WebsiteComponents/navbar.jsp" %> 

<p>Your Booking SucessFully Completed</p>
<p>For Shop: ${book.shopName}</p>
<p>Date : ${book.date}</p>
<p>Service: ${book.service}</p>
<h2>Thanks..................have nice day</h2>

<%@ include file="WebsiteComponents/footer.jsp" %> 

</body>
</html>