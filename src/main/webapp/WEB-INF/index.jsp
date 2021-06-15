<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
			
			
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Ninja Gold</title>
	<!-- bootstrap link -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
	<div class="container p-5">
		<h2 class="text-center">Ninja Gold!</h2>
		<div class="main bg-secondary text-white p-2">
			<label>Your gold:</label>
			<text><c:out value="${gold}"/>	
		</div>
 		<div class="row mt-5 align-center">
  			<div class="w-25 p-5 bg-light text-center border border-dark">
 				<form action="farm" method="POST">
  					<h4 class="font-weight-bolder p-2">Farm</h4>
  					<h6 class="p-2">(earns 10-20 gold)</h6>
  					<button class="btn btn-warning">Find Gold</button>
 				</form>
  			</div>
  			<div class="w-25 p-5 bg-light text-center border border-dark">
 				<form action="cave" method="POST">
  					<h4 class="font-weight-bolder p-2">Cave</h4>
  					<h6 class="p-2">(earns 5-10 gold)</h6>
  					<button class="btn btn-warning">Find Gold</button>
  				</form>
  			</div>
  			<div class="w-25 p-5 bg-light text-center border border-dark">
  				<form action="house" method="POST">
  					<h4 class="font-weight-bolder p-2">House</h4>
  					<h6 class="p-2">(earns 2-5 gold)</h6>
  					<button class="btn btn-warning">Find Gold</button>			
  				</form>
  			</div>
  			<div class="w-25 p-5 bg-light text-center border border-dark">
  				<form action="casino" method="POST">
  					<h4 class="font-weight-bolder p-2">Casino</h4>
  					<h6 class="p-2">(earns or takes 10-50 gold)</h6>
   					<button class="btn btn-warning">Find Gold</button>
  				</form>
  			</div>
  			<textarea class="mt-5" cols="5" rows="10">
  				<c:forEach var="item" items="${addGold}">
    				<c:out value="${item}"/>
				</c:forEach>
  			</textarea>
		</div> 
	</div>		
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
</body>
</html>