<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
  background-image: url("/img/adminbanner.jpg");
  background-repeat: no-repeat;
  min-height : 100%;
  min-width : 100%;
  background-size:100%;
}


</style>
<body>
<%@ include file="WebsiteComponents/adminHeader.jsp" %> 

<div class="container">
   <p class="bg-primary text-white" style="width:600px;">Your Upcoming Customers</p>          
  <table class="table table-hover" style="width:600px;">
    <thead>
      <tr  class="info">
        <th>Customer Name</th>
        <th>Date</th>
        <th>Service</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="custm" items="${list}">
      <tr class="success">
        <td>${custm.customerName}</td>
        <td>${custm.date}</td>
        <td>${custm.service}</td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
<%@ include file="WebsiteComponents/adminFooter.jsp" %>

</body>
</html>