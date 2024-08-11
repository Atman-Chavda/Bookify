<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="header.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-2">
                    <b>  Reader's zone</b>
                </div>
                <div class="col-8">

                    <form action="searchDisplay"><input class="search-bar" name="search-topic" type="text" value="Search"/></form>

                </div>
                <div class="col-2">
                    <a href="logout">Logout</a> 
                </div>
            </div>
        </div>
    </body>

</html>
