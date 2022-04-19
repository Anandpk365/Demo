<!DOCTYPE html>
<html>
	<head>
		<title>Welcome To Customers App</title>
	</head>
	<body>
		<%@include file="../JSPPages/header.jsp" %>
		<form action="/CustomersApp/JSPPages/MainMenu.jsp">
			Please Enter Your Name: <input type="text" name="nameOfUser"/><br/>
			<input type="submit" value="Proceed"/>
		</form>
	</body>
</html>
