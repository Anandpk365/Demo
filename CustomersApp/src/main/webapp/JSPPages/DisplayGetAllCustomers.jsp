<%@page import="com.mycompany.dto.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
	<head>
		<title>Display Get All Customers</title>
	</head>
	<body>
		<%@include file="../JSPPages/header.jsp" %>
		<h2>Below Are The Customers</h2>
		<table border="2">
			<tr>
				<th>Customer ID</th>
				<th>Name</th>
				<th>Phone</th>
				<th>Email</th>
				<th>Age</th>
			</tr>
			
			<c:forEach var="customer" items="${customers}">
				<tr>
					<td>${customer.customerId}</td>
					<td>${customer.name}</td>
					<td>${customer.phone}</td>
					<td>${customer.email}</td>
					<td>${customer.age}</td>
				</tr>
			</c:forEach>
			
		</table>
		<%@include file="../JSPPages/footer.jsp" %>
	</body>
</html>
