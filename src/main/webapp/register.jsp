<%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
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

                <a href="/Instagrim">Home</a>
                <a href="/Instagrim/Images/majed">Sample Images</a>
                <a href="/Instagrim/Login">Login</a>
                
            </div>
       
        <article>
            <h3>Register as user</h3>
            <form method="POST"  action="Register">
                <ul>
                    <li>User Name <input type="text" name="username">
                        <p>Username minimum of 6 characters and 15 maximum</p>
                    </li>
                    <li>Password <input type="password" name="password">
                        <p>Password minimum of 6</p>
                    </li>
                </ul>
                <br/>
                <input type="submit" value="Register"> 
                
                <%String s = (String)request.getAttribute("error");
                if(s != null){
                    out.println(s);
                }%>
                
            </form>

        </article>
        <footer>
            <ul>
                <li>&COPY; Carsten C & Andy C</li>
            </ul>
        </footer>
    </body>
</html>
