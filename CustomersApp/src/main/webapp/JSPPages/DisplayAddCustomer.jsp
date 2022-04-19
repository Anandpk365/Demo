<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
	<head>
		<title>Display Add Customer</title>
	</head>
	<body>
		<%@include file="../JSPPages/header.jsp" %>
		
		<c:if test="${requestScope.result}">
			<h2>Customer has been added successfully</h2>
		</c:if>
		<c:if test="${!requestScope.result}">
			<h2>Customer has not been added successfully</h2>
		</c:if>

		<%@include file="../JSPPages/footer.jsp" %>
	</body>
</html>
