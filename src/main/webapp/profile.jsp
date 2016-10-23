<%-- 
    Document   : profile
    Created on : 21-Oct-2016, 21:58:27
    Author     : carstencheyne
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
            <a href="/Instagrim">Home</a> &nbsp; &nbsp;

            <%

                LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                if (lg != null) {
                    String UserName = lg.getUsername();
                    if (lg.getloggedin()) {
            %>
            <a href="/Instagrim/Upload">Upload</a> &nbsp; &nbsp;
            <a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a> &nbsp; &nbsp;

            <%}
            } else {
            %>
            <a href="/Instagrim/Register">Register</a> &nbsp; &nbsp;
            <a href="/Instagrim/Login">Login</a> &nbsp; &nbsp;
            <%
                }%>
            <a href="/Instagrim/ContactUs">Contact Us</a> &nbsp; &nbsp;

            <%
                if (lg != null) {

            %>
            <a href="/Instagrim/LogOut">Logout</a> &nbsp; &nbsp;
            <p> Welcome, <%=lg.getUsername()%> </p>


            <%

                }%>

            <%
                java.util.ArrayList<String> details = (java.util.ArrayList<String>) request.getAttribute("details");
                if (details == null || details.size() == 0) {
                    String who = (String) request.getAttribute("user");
            %>
            <p> There is no account with the username: <%= who%> </p>
            <%
            } else {

            %>
            <p> Username: <%=details.get(0)%> </p>
            <p> First Name: <%=details.get(1)%> </p>
            <p> Last Name: <%=details.get(2)%> </p>
            <%
                }
            %>




        </div>
        <footer>
            <p>&COPY; Carsten C & Andy C</p>
        </footer>
    </body>
</html>
