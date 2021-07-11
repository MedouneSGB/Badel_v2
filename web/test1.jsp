<%-- 
    Document   : test1
    Created on : 3 janv. 2021, 00:55:23
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            

            String sub1 = request.getParameter("sub1");
            String sub2 = request.getParameter("sub2");
        %>
         Sub 1 = <%=sub1%>
         Sub 2 = <%=sub2%>
        
    </body>
</html>
