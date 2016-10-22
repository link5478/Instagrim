<%-- 
    Document   : logoutsuccess
    Created on : 19-Oct-2016, 22:03:50
    Author     : carstencheyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
    </head>
    <body>

    </body>

    <header>
        <h1><img src="http://i.imgur.com/uQt8X0g.jpg" align = 
                 "right"> InstaGrim </h1>
        <h2>Your world in Black and White</h2>

    </header>

    <br> <br> <br>

    <h2> You have logged out successfully. You will be redirected to the homepage
        in 5 seconds. If the page doesn't redirect you click <a href="/Instagrim">here</a></h2>

    <%-- This code was obtained from http://stackoverflow.com/questions/23596931/forwarding-jsp-page-after-the-delay --%>
    <script>
        setTimeout(function () {
            document.location = "/Instagrim";
        }, 5000); // <-- this is the delay in milliseconds
    </script>

    <footer>
        <p>&COPY; Carsten C & Andy C</p>
    </footer>
</html>