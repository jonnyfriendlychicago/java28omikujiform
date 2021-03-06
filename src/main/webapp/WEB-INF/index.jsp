<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.Date" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


    
<!DOCTYPE html>
<html lang="en">
<head>
<title>java28omikujiform</title>
<meta charset="UTF-8">
<!-- local css -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- local javascript -->
<script type ="text/javascript" src="javascript/app.js"></script>
<!--  Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" /> 
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
	<h1>java28omikujiform Home Page</h1>
	<a href= "/date">Date Template</a>
	<a href= "/time">Time Template</a>
	<a href= "/dojos">Dojos</a>
	<!-- <a href= "/counter">Site Visit Counter</a> -->
	
	<h2>Send an Omikuji!</h2>
	<form action='processLogin' method='post'>
		<div>
			<label>Pick any number from 5 to 25:</label>
    		<input type="text" name='elNumero'>
		</div>
		<div>
			<label>Enter the name of any city:</label>
    		<input type='text' name='city'>
    	</div>
    	<div>
			<label>Enter the name of a real person :</label>
    		<input type='text' name='person'>
    	</div>
    	<div>
			<label>Enter profession or hobby:</label>
    		<input type='text' name='profHobb'>
    	</div>
    	<div>
			<label>Enter any type of living animal:</label>
    		<input type='text' name='animal'>
    	</div>
    	<div>
			<label>Say something nice, ya jerk:</label>
    		<input type='text' name='nicety'>
    	</div>
    	<div>
    		<input type='submit' value='send'>
    	</div>
    </form>
	
	
	<p>Count of index visits: <c:out value="${countToShow}"></c:out></p>
	
	<p><a href="/reset-counter/">Reset counter to zero</a></p>
	
	<h2>Fruits</h2>
	
	<%-- ${fruitsFromHomeController} --%>
	
	<c:forEach var="fruit" items="${fruitsFromHomeController}">
        <p> ${fruit.name} - $${fruit.price}</p>
    </c:forEach>  
	
	<%-- <h3> Today's date is: <%= new Date() %></h3> --%>
	
	<p>Content from Hopper Assignment, keeping around for future ref</p>
	<p>Customer Name: <c:out value="${customerName}"></c:out></p>
	
	<p>Item Name: <c:out value="${itemName }"></c:out></p>
	
	<p>Item Price: $<c:out value="${itemPrice }"></c:out></p>
	<p>Item Description: <c:out value="${itemDescription }"></c:out></p>
	<p>Vendor Name: <c:out value="${vendorName }"></c:out></p>
	
	
	<%-- <% for (int i = 0; i < 5; i++) { %>
		<h2> <%=i %> </h2>
	<% } %> --%>
	
	
	<%-- <h1>Two plus two is: </h1>
	<h2><c:out value="${2+2}"/></h2>  --%>
	
	
	
</body>
</html>