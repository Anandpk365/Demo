<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
	<head>
		<title>JSTL Tags</title>
	</head>
	<body>
		<c:set var="name1" value="Anand" scope="page"/>
		<c:set var="name2" value="Ravi" scope="request"/>
		<c:set var="name3" value="Sunil" scope="session"/>
		<c:set var="name4" value="Rahul" scope="application"/>
		
		<c:if test="${pageScope.name1 != null}">
			There is name1 in the Page Scope
		</c:if>
		<c:if test="${pageScope.name1 == null}">
			There is no name1 in the Page Scope
		</c:if>
		
		<%
			String[] names = {"aaa","bbb","ccc","ddd","eee"};
			request.setAttribute("names", names);
		%>
		
		<c:forEach var="name" items="${names}">
			${name}<br>
		</c:forEach>
		
		
		JSP Expression Language<br>
		${name1}   ${name2}   ${name3}   ${name4}
		
	</body>
</html>
