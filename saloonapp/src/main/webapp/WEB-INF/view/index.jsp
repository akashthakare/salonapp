<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<style>
body {
  background-image: url("/img/index.jpg");
  background-repeat: no-repeat;
  min-height : 100%;
  min-width : 100%;
  background-size:100%;
}

footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  /* Set the fixed height of the footer here */
  height: 80px;
  background-color: #f5f5f5;
}
</style>
<body>
<%@ include file="WebsiteComponents/navbar.jsp" %>
<div class="container "></div>






<footer>
<%@ include file="WebsiteComponents/footer.jsp" %>  
</footer>
</body>
</html>