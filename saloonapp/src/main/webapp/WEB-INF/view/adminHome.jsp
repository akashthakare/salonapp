<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body{
  background-image: url("/img/adminbanner.jpg");
  background-repeat: no-repeat;
  min-height : 100%;
  min-width : 100%;
  background-size:100%;
}
    
span {
        display: inline-block;
        width: 200px;
        text-align: left;
    }
   
</style>
</head>
<body>
<%@ include file="WebsiteComponents/adminHeader.jsp" %> 
<div class="container">
<div align="center">
        <h3 style="color:white;text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;">${shop.shopName}</h3>
        <span>Opening Time:</span><span>${shop.openTime}</span><br/>
        <span>Closing Time</span><span>${shop.closeTime}</span><br/>
  </div>  
</div>
</body>
<%@ include file="WebsiteComponents/adminFooter.jsp" %>
</html>