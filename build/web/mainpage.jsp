<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="mainpage.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="login"></jsp:include>

            <div class="container cont">

                <div class="row">
                    <div class="col-4">
                        <b> Genres</b><br/>                    
                    <c:forTokens var="genre" items="Horror-Science fiction-Mystery-Biographies-Historical fiction-Mythology" delims="-">
                        <b>-></b><c:out value="${genre}"/><br/>
                    </c:forTokens>
                </div>
                <div class="col-4">
                    <b>Popular books</b>
                    <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost/readerszone" user="****" password="****"/>
                    <sql:query dataSource="${db}" var="rs">
                        select * from books where book_id="B001";
                    </sql:query>
                    <c:forEach var="table" items="${rs.rows}">
                        <br/>
                        <c:out value="${table.bname}"/>
                    </c:forEach>
                </div>
                <div class="col-4">
                    <a href="yourBooks"> Your books</a>
                    <!-- comment   <c:if test="${uid!=340}">hello</c:if>
        
                    <sql:query dataSource="${db}" var="rs">
                        select * from rented where userid=userId;
                    </sql:query>
                    <c:forEach var="table" items="${rs.rows}">
                        <br/>
                        <c:out value="${table.bookName}"/>
                    </c:forEach> --> 
                </div>
            </div>
            <div>
                <hr/>
                <b>Survey</b><br/>
                <a href="favBook.jsp">What's your favourite book?</a><br/>
                <a href="favAuthor.jsp">Who's your favourite author?</a>

            </div>
        </div>


    </body>

</html>
