<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
body {
  background-image: url("/img/banner3.png");
  min-height : 100%;
  min-width : 100%;
  background-size:100%;
  background-repeat:no-repeat;
}

.container
{
margin: 100px;
}
</style>
<body>
<%@ include file="WebsiteComponents/navbar.jsp" %>

<div class="container mt-3">
	<div class="row">
		<div class="col-md-6 ">
               <h3 style="color:purple;text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;">${shop.shopName}</h3>
				<div id="myCarousel"  class="carousel slide carousel-fade z-depth-1-half" data-ride="carousel" style="height:300px;width:500px;">
    				<!-- Indicators -->
					    <ol class="carousel-indicators">
					      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					      <li data-target="#myCarousel" data-slide-to="1"></li>
					      <li data-target="#myCarousel" data-slide-to="2"></li>
					    </ol>

					    <!-- Wrapper for slides -->
					    <div class="carousel-inner">
							<div class="item active">
					        <img src="/img/findShop/slide2.jpg" alt="Los Angeles" style="width:100%;">
					        <div class="carousel-caption">
					          <h3>Shaving</h3>
					          <p>The Amazing Look</p>
					        </div>
					      </div>

					      <div class="item">
					        <img src="/img/findShop/slide1.png" alt="Chicago" style="width:100%;">
					        <div class="carousel-caption">
					          <h3>We are Here</h3>
					          <p>Look with Art</p>
					        </div>
					      </div>
					    
					      <div class="item">
					        <img src="/img/findShop/slide3.png" alt="New York" style="width:100%;">
					        <div class="carousel-caption">
					          <h3>Facial</h3>
					          <p>Natural Look	</p>
					        </div>
					      </div>
					      <div class="item">
					        <img src="/img/findShop/slide4.jpg" alt="New York" style="width:100%;">
					        <div class="carousel-caption">
					          <h3>Facial</h3>
					          <p>Natural Look	</p>
					        </div>
					      </div>
					  
    					</div>
					    <!-- Left and right controls -->
					    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
					      <span class="glyphicon glyphicon-chevron-left"></span>
					      <span class="sr-only">Previous</span>
					    </a>
					    <a class="right carousel-control" href="#myCarousel" data-slide="next">
					      <span class="glyphicon glyphicon-chevron-right"></span>
					      <span class="sr-only">Next</span>
					    </a>
					  </div>
 			</div>
            <div class="col-md-6">
                <table class="table table-hover">
			    <thead>
			      <tr class="info">
			        <th>Service Name</th>
			        <th>Price</th>
			      </tr>
			    </thead>
				 <tbody>
				 	<c:forEach var="ser" items="${service}">
      					<tr class="success">
				        	<td>${ser.name}</td>
				        	<td>$${ser.price}</td>
				      	</tr>
				     </c:forEach>
				 </tbody>
  				</table>
  				 <a href="/appointment/${shop.shopId}" class="btn btn-success stretched-link">Take Appointment</a>
            </div>
       
 </div>
</div>





<%@ include file="WebsiteComponents/footer.jsp" %>
</body>

</html>