<%-- 
    Document   : index
    Created on : May 8, 2017, 9:20:57 PM
    Author     : Chuc Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="controller" uri="/WEB-INF/tlds/Controller" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" type="text/css" href="assets/css/main.css"> 	
    </head>
    <body>
        <div id="page-wrapper">
            <div class="header">
            <h1>Electronics Online Store</h1>
            <h3>Welcome to our website</h3>
            </div>

            <div class="navigation-bar">
            <a href="index.jsp">Home</a><a href="About.jsp">Online Store</a><a href="Find.jsp">Contact</a>
            </div>
            
            <br/>
            
        <div id="wrapper" >

        <div class="main col-9">
            <controller:Controller className="com.controller.IndexController" methodName="getIntro" params="About" returnedAttribute="about" />
            <h2>${about.title}</h2>
            <div class="about-detail">
                <img class="col-6" src="${about.imageUrl}" alt="" />
                <p>${about.content}</p>
            </div>
                

        </div>

        <div class="rightmenu col-3">

            <div class="rightmenu-item">
            <h3>Share this page</h3>
            <p><a href="#" class="normal">Share on Facebook</a></p>
            <p><a href="#" class="normal">Share on Twitter</a></p>
            <p><a href="#" class="normal">Share on Google+</a></p>
            </div>

        </div>



        </div>
        </div>
    </body>
</html>
