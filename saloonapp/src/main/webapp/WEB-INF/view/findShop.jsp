<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 
  
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>

<style>

 
.container
{
margin-top:100px;
}

a.card:hover
{
 background-color: lightblue;
 text-decoration:none;}


</style>
<body>
<%@ include file="WebsiteComponents/navbar.jsp" %> 
<div class="container">
	<div class="card-group"> 
  		<div class="row"> 
  		<c:forEach var="s" items="${list}">
  		<c:set var="imgCount" value="${imgCount + 1}" scope="page"/>
         	 <a href="/aboutShop/${s.shopId}" class="card col-md-4"> 
         	 <div class="col text-center"><span class="border border-light">
             <img class="card-img" style="margin-top:20px;height:300px;width:100%;border-style: inset;border-radius: 20px;box-shadow: 10px 10px 5px grey;"src= "img/Shops/shop${imgCount}.jpg"> </span>
  				<div class="card-body">
                        <b></b><h3 style="color: white;text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue" class="text-warning" >${s.shopName}</h3> 
                        <p class="text-success">${s.address}</p>
               </div>
              </div>	
             </a> 
              
         </c:forEach>   
        </div>
  	</div>
 </div>
 
<%@ include file="WebsiteComponents/footer.jsp" %>


</body>
</html>