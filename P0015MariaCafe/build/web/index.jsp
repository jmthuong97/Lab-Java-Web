<%-- 
    Document   : index
    Created on : May 8, 2017, 9:20:57 PM
    Author     : Chuc Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="controller" uri="/WEB-INF/tlds/Controller"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" type="text/css" href="assets/css/main.css"> 	
    </head>
    <jsp:useBean id="pc" class="com.db.ProductContext" scope="session" />
    
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

        <section class="main col-9">
            <controller:Controller className="com.controller.IndexController" methodName="getIntro" params="Intro" returnedAttribute="intro" />
            <div class="row index-introduction">
                <div class="index-introduction-img col-3">
                    <img src="${intro.imageUrl}" alt="Maria" />
                </div>
                <div class="index-introduction-paragraph col-9">
                    <h3>${intro.title}</h3>
                    <p>${intro.content}</p>
                </div>
                
                
            </div>
            
            <div class="row index-product">
                <!--<div class="index-product-item col-6">
                    <img src="images/i282319414620354139._rsw480h360_szw480h360_.jpg" alt="" />
                    <h3>In the afternoon</h3>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
                    
                </div>
                <div class="index-product-item col-6">
                    <img src="images/i282319414620354374._rsw480h360_szw480h360_.jpg" alt="" />
                    <h3>Traditional Cakes</h3>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
                    
                </div>
                -->
                <controller:Controller className="com.controller.IndexController" methodName="getTopTwoProduct" returnedAttribute="list" />
                <c:forEach var="i" items="${list}" >
                    <div class="index-product-item col-6">
                    <img src="${i.imageUrl}" alt="" />
                    <h3>${i.name}</h3>
                    <p>${i.description}</p>
                    
                </div>
                </c:forEach>
                <%
                    Object o = pageContext.getAttribute("list");
                    System.out.println(o);
                %>
            </div>

            <div class="row index-contact">
            <h2>Visit my cafe</h2>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
            <p>Gammel Torv, Copenhagen</p>
            <p>Phone:</p>
            </div>

        </section>

        <section class="rightmenu col-3">

        <section class="rightmenu-item">
        <h3>Share this page</h3>
        <p><a href="#" class="normal">Share on Facebook</a></p>
        <p><a href="#" class="normal">Share on Twitter</a></p>
        <p><a href="#" class="normal">Share on Google+</a></p>
        </section>

        </section>



        </div>
        </div>
    </body>
</html>
