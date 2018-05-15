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
            <controller:Controller className="com.controller.IndexController" methodName="getInfo" returnedAttribute="info" />
            <h2>Find Maria's Cafe</h2>
            <div class="row find-contact col-12">
                <div class="col-6 find-contact-col1">
                <h3>Address and contact:</h3>
                <h4>${info.address}</h4>
                <p>Tel: ${info.tel}</p>
                <p>Email: ${info.email}</p>
                </div>

                <div class="col-6 find-contact-col2">
                <h3>Openning hours:</h3>
                ${info.openningHours}
                </div>
            </div>
            <div class="find-map"><div id="map"></div></div>
            
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
        
        <!-- Scripts -->
        <script>
            function initMap() {
            var uluru = {lat: 21.027387, lng: 105.835118};
            var map = new google.maps.Map(document.getElementById('map'), {
              zoom: 10,
              center: uluru
            });
            var marker = new google.maps.Marker({
              position: uluru,
              map: map
            });
          }
          </script>
      
        <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCeL6-RTslfCTxi7jeI6xgbQmPdy6nG708&callback=initMap">
        </script>
        
        
    </body>
</html>
