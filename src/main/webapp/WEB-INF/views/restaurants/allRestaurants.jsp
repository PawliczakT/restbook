<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>

<body>

<%@include file="../dynamic/navigationMain.jspf" %>

<!-- Main Content -->

<!-- Cuisine Header -->
<header>
    <nav class="navbar navbar-light bg-light col-12 justify-content-center">
        <div>
            <button class="btn btn-outline-info rounded" type="button">włoskie</button>
            <button class="btn btn-outline-info rounded" type="button">murykańskie</button>
            <button class="btn btn-outline-info rounded" type="button">wegetariano</button>
            <button class="btn btn-outline-info rounded" type="button">łotewskie</button>
            <button class="btn btn-outline-info rounded" type="button">Kluchy</button>
            <button class="btn btn-outline-info rounded" type="button">zupy</button>
            <button class="btn btn-outline-info rounded" type="button">chinówa</button>
            <button class="btn btn-outline-info rounded" type="button">tajskie żarło</button>
        </div>

    </nav>
</header>

<div class="container">
    <div class="spacer" style="height: 30px"></div>
    <c:forEach items="${restaurant}" var="restaurant">
        <div class="col-lg-8 col-md-8 mx-auto">
            <div style="font-size: 90%" class="shadow-sm bg-light rounded post-preview col-12">
                <a href="#">
                    <div class="spacer" style="height: 15px"></div>

                    <div style="float: left" class="col-lg-4 p-1">
                        <img style="width: 90%; height: 100%; align-content: center;"
                             src='<c:url value="/resources/img/restaurant-img.jpg"/>'>
                    </div>

                    <div style="height: 100%" class="col-12">
                        <h2 style="font-size: 130%" class="post-title">
                                ${restaurant.name}
                        </h2>
                    </div>

                    <div style="height: 100%" class="col-12">
                        <h8 style="font-size: 100%" class="post-subtitle">${restaurant.description}<br> <br></h8>
                        <div>
                            <p>Ocena: ${restaurant.averageRate}
                                <c:if test="${restaurant.averageRate > 0 && restaurant.averageRate <= 0.75}">
                                    <i class="fa fa-star-half" style="color:gold"></i>
                                </c:if>
                                <c:if test="${restaurant.averageRate > 0.75 && restaurant.averageRate <= 1.25}">
                                    <i class="fas fa-star" style="color:gold"></i>
                                </c:if>
                                <c:if test="${restaurant.averageRate > 1.25 && restaurant.averageRate <= 1.75}">
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fa fa-star-half" style="color:gold"></i>
                                </c:if>
                                <c:if test="${restaurant.averageRate > 1.75 && restaurant.averageRate <= 2.25}">
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                </c:if>
                                <c:if test="${restaurant.averageRate > 2.25 && restaurant.averageRate <= 2.75}">
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fa fa-star-half" style="color:gold"></i>
                                </c:if>
                                <c:if test="${restaurant.averageRate > 2.75 && restaurant.averageRate <= 3.25}">
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                </c:if>
                                <c:if test="${restaurant.averageRate > 3.25 && restaurant.averageRate <= 3.75}">
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fa fa-star-half" style="color:gold"></i>
                                </c:if>
                                <c:if test="${restaurant.averageRate > 3.75 && restaurant.averageRate <= 4.25}">
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                </c:if>
                                <c:if test="${restaurant.averageRate > 4.25 && restaurant.averageRate <= 4.75}">
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fa fa-star-half" style="color:gold"></i>
                                </c:if>
                                <c:if test="${restaurant.averageRate > 4.75 && restaurant.averageRate <= 5}">
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                    <i class="fas fa-star" style="color:gold"></i>
                                </c:if>
                                <br> <br>
                            </p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </c:forEach>
</div>

<%@include file="../dynamic/board.jspf" %>

<%@include file="../dynamic/js.jspf" %>
</body>

</html>
