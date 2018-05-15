<%-- 
    Document   : index
    Created on : Feb 28, 2018, 1:38:42 AM
    Author     : DoThong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Home Page</title>
    </head>
    <body>
        <div class="center">
            <%@include file="header.jsp" %>
            <nav class="nav">
                <a href="HomeServlet" class="font-bold">Home</a>
                <a href="MenuServlet">Menu and Price list</a>
                <a href="findus.jsp">Find us</a>
            </nav>
            <div class="main-content">
                <article class="main">
                    <%@include file="img-header.jsp" %>
                    <c:forEach var="i" items="${articles}">
                        <div class="article">
                            <h3>${i.title}</h3>
                            <div class="content">
                                <div class="img-content-border">
                                    <img src="${i.imgLink}" class="img-content"/>
                                </div>
                                <div class="description">
                                    <p>
                                        ${i.content}
                                    </p>
                                </div>
                            </div>
                        </div> 
                    </c:forEach>
                    <div class="article paging">
                        <c:forEach var="i" begin="1" step="1" end="${totalPage}">
                            <c:if test="${page != i}">
                                <a href="HomeServlet?page=${i}">${i}</a> |
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
