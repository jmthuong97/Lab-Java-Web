<%-- 
    Document   : menu
    Created on : May 23, 2018, 11:44:15 AM
    Author     : thuongnnse05095
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
        <link type="text/css" rel="stylesheet" href="css/style.css">
    </head>
    <body onload="setBold()">
        <div id="menu" data-page="Menu"></div>
        <div class="wrap">
            <%@include file="header.jsp" %>
            <div class="content">
                <div class="main-content">
                    <div class="content-left">
                        <h2>Menu and Price list</h2>
                        <c:forEach var="i" items="${menus}">
                            <div class="menu-container">
                                <div class="order">
                                    <span>Menu ${i.getId()}</span>
                                    <span class="float-right">Price</span>
                                </div>
                                <div class="title">
                                    <span>${i.getName()}</span>
                                    <span class="float-right">$${i.getPrice()}</span>
                                </div>
                                <div class="descriptment">
                                    <span>${i.getContent()}</span>
                                </div>
                            </div>
                        </c:forEach>
                        <div class="paging">
                            <c:forEach var="j" begin="1" step="1" end="${totalPage}">
                                <c:if test="${page != j}">
                                    <a href="MenuController?page=${j}" >${j}</a> |
                                </c:if>
                                <c:if test="${page == j}">
                                    ${j} |
                                </c:if>
                            </c:forEach>
                        </div>
                    </div>
                    <%@include file="container.jsp" %>
                </div>
                <%@include file="footer.jsp" %>
            </div>
        </div>
        <script src="js/menu.js"></script>
    </body>
</html>
