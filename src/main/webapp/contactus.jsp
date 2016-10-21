<%-- 
    Document   : contactus
    Created on : 21-Oct-2016, 21:49:58
    Author     : carstencheyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
    </head>
    <body>
        <h1><img src="http://i.imgur.com/uQt8X0g.jpg" align = 
                     "right"> InstaGrim </h1>
            <h2>Your world in Black and White</h2>
            
        <div>

                <a href="/Instagrim">Home</a> &nbsp; &nbsp;
                <a href="/Instagrim/Images/majed">Sample Images</a> &nbsp; &nbsp;
                <%

                    LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                    if (lg != null) {
                        String UserName = lg.getUsername();
                        if (lg.getloggedin()) {
                %>
                <a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a> &nbsp; &nbsp;
                <a href="/Instagrim/LogOut">Logout</a>
                <%}
                    else {
                %>
                <a href="/Instagrim/Register">Register</a> &nbsp; &nbsp;
                <a href="/Instagrim/Login">Login</a> 
                <%
                        }
                        

                }%>

                    

                
            </div>
 
        <article>
            <p>Thank you for visiting our site. If you would like to contact one
                of us please send all queries to "email@somewhere.com" </p>

        </article>
        <footer>
                <p>&COPY; Carsten C & Andy C</p>
        </footer>
    </body>
</html>
