<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="../dynamic/css.jspf" %>

<body>

<%@include file="../dynamic/navigationSub.jspf" %>
<script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJQYkMiN2SO_gEQ4Q_BLnqlfZpPn6Yp98&callback=initMap&libraries=&v=weekly"
        defer
></script>

<script>


    // Initialize and add the map
    function initMap() {

        const location = "${restaurant.address} Poznan";
        axios.get('https://maps.googleapis.com/maps/api/geocode/json', {
            params: {
                address: location,
                key: 'AIzaSyBJQYkMiN2SO_gEQ4Q_BLnqlfZpPn6Yp98'
            }
        })
            .then(function (response) {
                let lat = response.data.results[0].geometry.location.lat;
                let lng = response.data.results[0].geometry.location.lng;

                const restLocation = {lat: lat, lng: lng};
                // The map, centered at restaurant location
                const map = new google.maps.Map(document.getElementById("map"), {
                    zoom: 17,
                    center: restLocation,
                });
                // The marker, positioned at restaurant location
                const marker = new google.maps.Marker({
                    position: restLocation,
                    map: map,
                });
            })
            .catch(function (error) {
                console.log(error);
            });
    }
</script>

<!-- Main Content -->
<div class="container col-12 d-flex justify-content-center">
    <div class="p-3 post-title shadow-sm bg-light rounded post-preview col-8">


        <div style="
                margin: 10px;
                float: left;
                height: 380px;
                background-size: cover;
                background-image: url('<c:url value="/files/${restaurant.image}"/>');" class="col-lg-6 p-1 rounded">
        </div>


        <div style="min-height: 370px;" class="col- p-3">
            <h2 class="display-4">${restaurant.name}</h2>


            <c:forEach items="${restaurant.cuisines}" var="cuisine">
                <span class="badge badge-info">${cuisine.name}</span>
            </c:forEach>

            <div class="post-subtitle">
                <p class="lead">${restaurant.description}</div>
            <div class="post-subtitle">
                <p class="lead">
                    Adres: ${restaurant.address}<br>
                    Numer telefonu: ${restaurant.phone}
                </p>
            </div>
        </div>
        <p>
            <sec:authorize access="hasAuthority('USER')">
                <button class="btn btn-outline-info rounded-pill" type="button" data-toggle="collapse"
                        data-target="#addReview"
                        aria-expanded="false" aria-controls="multiCollapseExample1">Oceń nas!
                </button>
            </sec:authorize>
            <button class="btn btn-outline-info rounded-pill" type="button" data-toggle="collapse"
                    data-target="#allReviews"
                    aria-expanded="false" aria-controls="multiCollapseExample2">Zobacz wszystkie opinie
                (${review.size()})
            </button>

            <button class="btn btn-outline-info rounded-pill" type="button" data-toggle="collapse"
                    data-target="#googleMaps"
                    aria-expanded="false" aria-controls="multiCollapseExample2">Sprawdź gdzie jesteśmy
            </button>

        </p>
        <div class="col-12">
            <div class="collapse multi-collapse col-12" id="googleMaps">
                <hr>
                <div id="map" style="height: 400px; width: 100%;">
                </div>
            </div>

            <sec:authorize access="hasAuthority('USER')">
                <div class="collapse multi-collapse col-12" id="addReview">
                    <hr>
                    <form name="send" method="post" action='<c:url value="/allRestaurants/${restaurant.id}"/>'>
                        <p style="max-height: 0px;">Oceń naszą restaurację:</p>
                        <div class="row col-12">
                            <div class="rate">
                                <input type="radio" id="star5" name="rate" value="5">
                                <label for="star5" title="Bosko">5 stars</label>
                                <input type="radio" id="star4" name="rate" value="4">
                                <label for="star4" title="Dobrze">4 stars</label>
                                <input type="radio" id="star3" name="rate" value="3">
                                <label for="star3" title="Średnio">3 stars</label>
                                <input type="radio" id="star2" name="rate" value="2">
                                <label for="star2" title="Słabo">2 stars</label>
                                <input type="radio" id="star1" name="rate" value="1">
                                <label for="star1" title="Dlaczego trujecie ludzi?">1 star</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="pros">Co Ci się podoba?</label>
                            <textarea class="form-control" id="pros" name="pros" rows="3"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="cons">Co moglibyśmy poprawić?</label>
                            <textarea class="form-control" id="cons" name="cons" rows="3"></textarea>
                        </div>
                        <input type="hidden" value="<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" />"
                               name="createDate">
                        <input type="hidden" value="${restaurant.id}" name="restaurant">
                        <input type="hidden" value="<sec:authentication property="principal.username" />" name="user">

                        <input class="btn btn-info rounded-pill" type="submit" value="Dodaj recenzję" id="sendButton">
                    </form>
                </div>


            </sec:authorize>

            <c:forEach items="${review}" var="review">
                <div class="col-12 collapse multi-collapse" id="allReviews">
                    <hr>
                    <div class="reviews">
                        <h1 style="font-size: 90%;" class="post-title">${review.user.username}</h1>
                        <h1 style="font-size: 80%;" class="post-subtitle">Data dodania: ${review.createDate}</h1>

                        <p class="lead">Plusy: ${review.pros}</p>
                        <p class="lead">Minusy: ${review.cons}</p>
                        <div>
                            <p>Ocena: ${review.rate}
                                <c:if test="${review.rate == 1}">
                                    <i class="fas fa-star" style="color:gold"></i>
                                </c:if>
                                <c:if test="${review.rate == 2}">
                                    <i class="fas fa-star" style="color:#ffd700"></i>
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
    </div>
</div>

<hr>

<%@include file="../dynamic/board.jspf" %>

<%@include file="../dynamic/js.jspf" %>

</body>

</html>
