<%-- 
    Document   : menuprice
    Created on : Mar 11, 2018, 10:12:28 AM
    Author     : DoThong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <a href="MenuServlet" class="font-bold">Menu and Price list</a>
                <a href="findus.jsp">Find us</a>
            </nav>
            <div class="main-content">
                <article class="main">
                    <h2>Menu and Price list</h2>
                    <% int count = 1;%>
                    <c:forEach var="i" items="${menus}">
                        <div class="menu">
                            <div class="order">
                                <span>
                                    Menu ${i.id}
                                </span>
                                <span class="float-right">
                                    Price
                                </span>
                            </div>
                            <div class="title">
                                <span>
                                    ${i.name}
                                </span>
                                <span class="float-right">
                                    €${i.price}
                                </span>
                            </div>
                            <div class="menu-des">
                                <span>
                                    ${i.content}
                                </span>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="menu paging">
                        <c:forEach var="i" begin="1" step="1" end="${totalPage}">
                            <c:if test="${page != i}">
                                <a href="MenuServlet?page=${i}">${i}</a> |
                            </c:if>
                            <c:if test="${page == i}">
                                ${i} |
                            </c:if>
                        </c:forEach>
                    </div>
                </article>

                <%@include file="aside.jsp" %>
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
