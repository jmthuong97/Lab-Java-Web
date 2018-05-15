<%-- 
    Document   : findus
    Created on : Mar 11, 2018, 10:37:50 AM
    Author     : DoThong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Menu and Price list</title>
    </head>
    <body>
        <div class="center">
            <%@include file="header.jsp" %>
            <nav class="nav">
                <a href="HomeServlet">Home</a>
                <a href="MenuServlet">Menu and Price list</a>
                <a href="findus.jsp" class="font-bold">Find us</a>
            </nav>
            <div class="main-content">
                <article class="main">
                    <h2>Find us</h2>
                    <div class="info">
                        <div class="contact">
                            <h3>Address and Contact</h3>
                            <p>The Sushi Restaurant</p>
                            <p>New York, NY, USA</p>
                            <div class="tel-mail">
                                <p>
                                    <span>Tel:</span>
                                    12345
                                </p>
                                <p>
                                    <span>Email:</span>
                                    dovanthong97@gmail.com
                                </p>
                            </div>
                        </div>
                        <div class="opening">
                            <h3>Opening Hours</h3>
                            <p>Monday Closed</p>
                            <p>Tuesday 12 - 22</p>
                            <p>Wednesday 12 - 22</p>
                            <p>Thursday 12 - 22</p>
                            <p>Friday 11 - 23</p>
                            <p>Saturday 11 - 23</p>
                            <p>Sunday 11 - 22</p>
                        </div>
                    </div>
                    <div class="map">
                        <img src="img/a1.jpg"/>
                    </div>
                </article>
                <%@include file="aside.jsp" %>
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
