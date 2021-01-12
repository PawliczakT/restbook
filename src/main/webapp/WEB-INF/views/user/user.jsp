<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="../dynamic/css.jspf" %>

<body>

<%@include file="../dynamic/navigationSub.jspf" %>

<!-- Main Content -->
<div class="container shadow-sm bg-light rounded">
    <div>
        <div class="col-lg-8 col-md-10 mx-auto" style="font-size: 75px; height: 150px">
            <i class="fas fa-user-circle fa-stack-2x"></i>
        </div>
        <hr>
        <div style="text-align: center">
            ${user.username}
        </div>
    </div>
    <hr>

    <div style="text-align: center">
        <button class="btn btn-outline-info rounded-pill" type="button" data-toggle="collapse"
                data-target="#allUserReviews"
                aria-expanded="false" aria-controls="multiCollapseExample2">Zobacz swoje recenzje! (${review.size()})
        </button>

    </div>

    <div class="spacer" style="height: 30px"></div>

    <c:forEach items="${review}" var="review">
        <div class="col-12 collapse multi-collapse" id="allUserReviews">
            <hr>
            <div class="reviews">
                <a href="/allRestaurants/${review.restaurant.id}">
                    <h1 style="font-size: 90%;" class="post-title">Restauracja: ${review.restaurant.name}</h1>
                </a>
                <h1 style="font-size: 80%;" class="post-subtitle">Data dodania: ${review.getCreateDate()}</h1>
                <p class="lead">Plusy: ${review.pros}</p>
                <p class="lead">Minusy: ${review.cons}</p>
                <div>
                    <p>Ocena: ${review.rate}
                        <c:if test="${review.rate == 1}">
                            <i class="fas fa-star" style="color:gold"></i>
                        </c:if>
                        <c:if test="${review.rate == 2}">
                            <i class="fas fa-star" style="color:gold"></i>
                            <i class="fas fa-star" style="color:gold"></i>
                        </c:if>
                        <c:if test="${review.rate == 3}">
                            <i class="fas fa-star" style="color:gold"></i>
                            <i class="fas fa-star" style="color:gold"></i>
                            <i class="fas fa-star" style="color:gold"></i>
                        </c:if>
                        <c:if test="${review.rate == 4}">
                            <i class="fas fa-star" style="color:gold"></i>
                            <i class="fas fa-star" style="color:gold"></i>
                            <i class="fas fa-star" style="color:gold"></i>
                            <i class="fas fa-star" style="color:gold"></i>
                        </c:if>
                        <c:if test="${review.rate == 5}">
                            <i class="fas fa-star" style="color:gold"></i>
                            <i class="fas fa-star" style="color:gold"></i>
                            <i class="fas fa-star" style="color:gold"></i>
                            <i class="fas fa-star" style="color:gold"></i>
                            <i class="fas fa-star" style="color:gold"></i>
                        </c:if></p>
                </div>
            </div>
        </div>
    </c:forEach>

</div>

<%@include file="../dynamic/board.jspf" %>

<%@include file="../dynamic/js.jspf" %>

</body>

</html>