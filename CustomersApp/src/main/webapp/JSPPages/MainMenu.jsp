<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<html>
	<head>
		<title>Welcome To Customers App</title>
	</head>
	<body>
	
		<c:if test="${param.nameOfUser != null}">
			<c:set var="nameOfUser" value="${param.nameOfUser}" scope="session"/>
		</c:if>
		<%@include file="../JSPPages/header.jsp" %>
		<a href="/CustomersApp/JSPPages/AddCustomer.jsp">Add Customer</a><br/>
		<a href="/CustomersApp/getAllCustomers">Get All Customers</a><br/>
		<a href="/CustomersApp/JSPPages/GetCustomerByID.jsp">Get Customer By ID</a><br/>
		<a href="/CustomersApp/JSPPages/UpdateCustomerByID.jsp">Update Customer By ID</a><br/>
		<a href="/CustomersApp/JSPPages/DeleteCustomerByID.jsp">Delete Customer By ID</a><br/>
		<a href="/CustomersApp/gotoWebsite">Click Here To Go To Web Site</a>
	</body>
</html>
