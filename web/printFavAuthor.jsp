<%-- 
    Document   : printFavAuthor
    Created on : 15-Apr-2024, 3:47:19 pm
    Author     : bhara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>   
    Your favourite author is  ${fn:toUpperCase(param.favAuthor)}
    </body>
</html>
