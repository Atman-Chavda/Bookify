<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost/readerszone" user="****" password="****"/>

        <%
            String fname = request.getParameter("first_name");
            String lname = request.getParameter("last_name");
            String email = request.getParameter("email");
            String username = request.getParameter("user_name");
            String password = request.getParameter("password");
            String fullname = fname + " " + lname;
        %>

        <sql:update dataSource="${db}" var="count">
            insert into users (fullname,username,password) values(?,?,MD5(?));
            <sql:param value="<%=fullname%>"/>
            <sql:param value="<%=username%>"/>
            <sql:param value="<%=password%>"/>

        </sql:update>
        You have successfully created your account!<br/>
        Click <a href="loginform.jsp">here</a> to log in to your account.
    </body>
</html>
