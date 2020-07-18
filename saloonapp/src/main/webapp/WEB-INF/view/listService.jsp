<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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

</style>
<body>
<%@ include file="WebsiteComponents/adminHeader.jsp" %> 

<div class="container">         
  <table class="table table-hover" style="width:600px;margin-top:100px;">
    <thead>
      <tr  class="danger">
        <th>Service Name</th>
        <th>Price</th>
        <th>Update</th>
      </tr>
    </thead>
    <tbody>
		<c:forEach var="u" items="${list}">
      <tr class="Danger">
        <td>${u.name}</td>
		<td>${u.price}</td>
		<td><a href="${pageContext.request.contextPath}/updateService/${sessionId}">Update</a></td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
<%@ include file="WebsiteComponents/adminFooter.jsp" %>
</body>
</html>