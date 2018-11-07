<%-- 
    Document   : home
    Created on : May 18, 2018, 11:02:36 AM
    Author     : thuongnnse05095
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link type="text/css" rel="stylesheet" href="css/style.css">
    </head>
    <body onload="setBold()">
        <div id="menu" data-page="Home"></div>
        <div class="wrap">
            <%@include file="header.jsp" %>
            <div class="content">
                <div class="main-content">
                    <div class="content-left">
                        <div class="img-border">
                            <img src="${urlCover}" alt="">
                        </div>
                        <c:forEach var="i" items="${content}">
                            <div class="border-post">
                                <span><a href="DetailsPost?id=${i.getId()}">${i.getTitle()}</a></span>
                                <div class="post">
                                    <div class="left-post">
                                        <a href="DetailsPost?id=${i.getId()}"><img src="${i.getImgLink()}" alt=""></a>
                                    </div>
                                    <div class="right-post">
                                        <p>${i.getContent()}</p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <div class="paging">
                            <c:forEach var="j" begin="1" step="1" end="${totalPage}">
                                <c:if test="${page != j}">
                                    <a href="HomeController?page=${j}" >${j}</a> |
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
