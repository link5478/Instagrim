<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>

<%-- 
Logo created by combining these two images
https://image.freepik.com/free-icon/human-skull-with-crossed-bones-silhouette_318-46669.jpg
https://5a5a57ff32a328601212-ee0df397c56b146e91fe14be42fa361d.ssl.cf1.rackcdn.com/icon/instagram_logos_glyph/03H5cHNMt-Jni4pe9u+7/glyph-logo_May2016_200.png
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <header>
            <h1><img src="http://i.imgur.com/uQt8X0g.jpg" align = 
                     "right"> InstaGrim </h1>
            <h2>Your world in Black and White</h2>    
        </header>
        <div>

            <%

                LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                if (lg != null) {
                    String UserName = lg.getUsername();
                    if (lg.getloggedin()) {
            %>
            <a href="/Instagrim/Profile/<%=lg.getUsername()%>">Profile</a> &nbsp; &nbsp;
            <a href="/Instagrim/Upload">Upload</a> &nbsp; &nbsp;
            <a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a> &nbsp; &nbsp;
            <a href="/Instagrim/LogOut">Logout</a> &nbsp; &nbsp;

            <%}
            } else {
            %>
            <a href="/Instagrim/Register">Register</a> &nbsp; &nbsp;
            <a href="/Instagrim/Login">Login</a> &nbsp; &nbsp;
            <%
                    }%>
            <a href="/Instagrim/ContactUs">Contact Us</a> &nbsp; &nbsp;




        </div>
        <footer>
            <p>&COPY; Carsten C & Andy C</p>
        </footer>
    </body>
</html>
