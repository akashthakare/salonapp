<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>Show Contacts</h2>
<table>
	<tr>
		<th>Name</th>
		<th>Email</th>
		<th>Gender</th>
		<th>Profession</th>
		<th>Note</th>
		<th>Birthday</th>
		<th>Married</th>
		
	</tr>

<c:if test="${not empty listUser}">	
<c:forEach var="u" items="${listUser}">
<tr>
    	<td>${u.name}</td>
			<td>${u.email}</td>
			<td>${u.gender}</td>
			<td>${u.profession}</td>
			<td>${u.note}</td>
			<td>${u.birthday}</td>
			<td>${u.married}</td>
</tr>
</c:forEach>
 </c:if>
 </table>
 </div>
</body>
</html>