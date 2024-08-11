<%-- 
    Document   : saveFavBook
    Created on : 15-Apr-2024, 3:21:04 pm
    Author     : bhara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="WEB-INF/tlds/mytld.tld" prefix="cs" %> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<% 
    String favBook = request.getParameter("favBook");
%>
<cs:favBookHandler favBook="<%=favBook%>"/> 

    </body>
</html>
