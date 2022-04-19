<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<h2>
	Welcome to Customers App
	<c:if test="${sessionScope.nameOfUser != null}">
		Hi User, ${sessionScope.nameOfUser}.  <a href="/CustomersApp/JSPPages/Logout.jsp">Logout</a>
	</c:if>	
</h2>
