<%-- 
    Document   : upload
    Created on : Sep 22, 2014, 6:31:50 PM
    Author     : Administrator
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
            <%

                LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                if (lg != null) {
                    String UserName = lg.getUsername();
                    if (lg.getloggedin()) {
            %>
            <a href="/Instagrim/Profile/<%=lg.getUsername()%>">Profile</a> &nbsp; &nbsp;
            <a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a> &nbsp; &nbsp;
            <%}

                }%>
            <a href="/Instagrim/ContactUs">Contact Us</a> &nbsp; &nbsp;

            <%
                if (lg != null) {

            %>
            <a href="/Instagrim/LogOut">Logout</a>&nbsp; &nbsp;
            <p> Welcome, <%=lg.getUsername()%> </p>

            <%

                }%>



        </div>

        <article>
            <h3>File Upload</h3>
            <form method="POST" enctype="multipart/form-data" action="Image">
                File to upload: <input type="file" name="upfile"><br/>

                <br/>
                <input type="submit" value="Press"> to upload the file!
            </form>

            <%String s = (String) request.getAttribute("succeeded");
                if (s != null) {
                    out.println(s);
                }%>
        </article>
        <footer>
            <p>&COPY; Carsten C & Andy C</p>
        </footer>
    </body>
</html>
