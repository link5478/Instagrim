<%-- 
    Document   : login.jsp
    Created on : Sep 28, 2014, 12:04:14 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />

    </head>
    <body>
        <header>
            <h1><img src="http://i.imgur.com/uQt8X0g.jpg" align = 
                     "right"> InstaGrim </h1>
            <h2>Your world in Black and White</h2>
        </header>

        <div>

            <a href="/Instagrim">Home</a> &nbsp; &nbsp;
            <a href="/Instagrim/Images/majed">Sample Images</a> &nbsp; &nbsp;
            <a href="/Instagrim/Register">Register</a> &nbsp; &nbsp;
            <a href="/Instagrim/ContactUs">Contact Us</a> &nbsp; &nbsp;



        </div>



        <article>
            <h3>Login</h3>
            <form method="POST"  action="Login">
                <ul>
                    <li>User Name <input type="text" name="username"></li>
                    <li>Password <input type="password" name="password"></li>
                </ul>
                <br/>
                <input type="submit" value="Login">

                <%String s = (String) request.getAttribute("error");
                    if (s != null) {
                        out.println(s);
                    }%>
            </form>

        </article>
        <footer>
            <p>&COPY; Carsten C & Andy C</p>
        </footer>
    </body>
</html>
