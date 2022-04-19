<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP EL</title>
    </head>
    <body>
        <%
            request.setAttribute("name1", "Jagadeesh");//requestScope
            session.setAttribute("name2", "Rakesh");//sessionScope
            application.setAttribute("name3", "Suresh");//applicationScope
            pageContext.setAttribute("name4", "Anil");//pageScope
            
            pageContext.setAttribute("name5", "Kumar", PageContext.REQUEST_SCOPE);
            
        %>
        
        
        JSP Expression Language can be used to retrieve data from Scopes <br>
        requestScope attribute: ${requestScope.name1}<br>
        sessionScope attribute: ${sessionScope.name2}<br>
        applicationScope attribute: ${applicationScope.name3}<br>
        pageScope attribute: ${pageScope.name4}<br>
        requestScope from pageContext: ${name5}   page, request, session, application<br>
        Value of a is: ${param.a}<br>
        Values of b are: ${paramValues.b['0']} , ${paramValues.b['1']}<br>
        Accept-Language value: ${header['accept-language']}<br>
        JSESSIONID Cookie value is: ${cookie.JSESSIONID.value}<br>
        JDBC URL is: ${initParam.url}<br>
        ProjectName: ${pageContext.session.id}
        
        
    </body>
</html>