<!DOCTYPE html>
<html>
	<head>
		<title>Welcome To Customers App</title>
	</head>
	<body>
		<%@include file="../JSPPages/header.jsp" %>
		<h2>Enter Customer Details</h2>
		<form action="/CustomersApp/addCustomer" method="post">
			Customer Id: <input name="customerId" type="text"/><br/>
			Customer Name: <input name="cname" type="text"/><br/>
			Customer Phone: <input name="phone" type="text"/><br/>
			Customer Email: <input name="email" type="text"/><br/>
			Customer Age: <input name="age" type="text"/><br/>
			<input type="submit" value="Save Customer"/>
		</form>
		<%@include file="../JSPPages/footer.jsp" %>
	</body>
</html>