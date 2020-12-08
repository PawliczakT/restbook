<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="../dynamic/css.jspf" %>

<body>

<%@include file="../dynamic/navigationSub.jspf" %>

<!-- Main Content -->
<div>
    <div class="col-lg-8 col-md-10 mx-auto" style="font-size: 75px; height: 150px">
        <i class="fas fa-user-circle fa-stack-2x"></i>
    </div>
    <hr>
    <div style="text-align: center">
        USERNAME SZMATY
    </div>
</div>
<hr>

<div style="text-align: center">
    <a href="#">
        <button class="btn btn-outline-info rounded">Recenzje użytkownika</button>
    </a>

    <a href="#">
        <button class="btn btn-outline-info rounded">Edytuj swoje smaki</button>
    </a>
</div>

<div class="spacer" style="height: 30px"></div>

<c:forEach items="${review}" var="review">
    <div class="col-lg-8 col-md-8 mx-auto">
        <div style="font-size: 90%" class="shadow-sm bg-light rounded post-preview col-12">
            <a href="#">
                <div class="spacer" style="height: 15px"></div>

                <div style="
                        margin: 10px;
                        float: left;
                        height: 150px;
                        width: 50%;
                        background-size: cover;
                        background-image: url('<c:url value="../../../resources/img/rest1.jpg"/>');"
                     class="col-lg-4 p-1">
                </div>

                <div style="height: 100%" class="col-12">
                    <h2 style="font-size: 130%" class="post-title">
                            ${review.getRestaurant().getName()}
                    </h2>
                </div>

                <div style="height: 100%" class="col-12">
                    <h3>Na plus:</h3>
                    <h6 style="font-size: 100%" class="post-subtitle">${review.getDescriptionGood}</h6>
                    <h3>Na plus:</h3>
                    <h6 style="font-size: 100%" class="post-subtitle">${review.getDescriptionBad}<br> <br></h6>
                    <div>
                        <p>Ocena: ${review.getRate()}
                            <c:if test="${review.getRate() > 0 && review.getRate() <= 0.75}">
                                <i class="fa fa-star-half" style="color:gold"></i>
                            </c:if>
                            <c:if test="${review.getRate() > 0.75 && review.getRate() <= 1.25}">
                                <i class="fas fa-star" style="color:gold"></i>
                            </c:if>
                            <c:if test="${review.getRate() > 1.25 && review.getRate() <= 1.75}">
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fa fa-star-half" style="color:gold"></i>
                            </c:if>
                            <c:if test="${review.getRate() > 1.75 && review.getRate() <= 2.25}">
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                            </c:if>
                            <c:if test="${review.getRate() > 2.25 && review.getRate() <= 2.75}">
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fa fa-star-half" style="color:gold"></i>
                            </c:if>
                            <c:if test="${review.getRate() > 2.75 && review.getRate() <= 3.25}">
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                            </c:if>
                            <c:if test="${review.getRate() > 3.25 && review.getRate() <= 3.75}">
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fa fa-star-half" style="color:gold"></i>
                            </c:if>
                            <c:if test="${review.getRate() > 3.75 && review.getRate() <= 4.25}">
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                            </c:if>
                            <c:if test="${review.getRate() > 4.25 && review.getRate() <= 4.75}">
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fa fa-star-half" style="color:gold"></i>
                            </c:if>
                            <c:if test="${review.getRate() > 4.75 && review.getRate() <= 5}">
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

<%@include file="../dynamic/board.jspf" %>

<%@include file="../dynamic/js.jspf" %>

</body>

</html>
