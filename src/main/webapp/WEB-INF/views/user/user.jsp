<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

<div class="col-lg-8 col-md-8 mx-auto">
    <div style="font-size: 90%" class="shadow-sm bg-light rounded post-preview col-12">

        <div class="spacer" style="height: 15px"></div>

        <div style="float: left" class="col-lg-4 p-1">
            <img style="width: 90%; height: 100%; align-content: center;"
                 src="../../../resources/img/restaurant-img.jpg">
        </div>
        <a href="#">
            <div style="height: 100%" class="col-12">
                <h2 style="font-size: 130%" class="post-title">
                    !RESTAURANT NAME
                </h2>
            </div>
        </a>
        <div style="height: 100%" class="col-12">

            <h3 style="font-size: 100%" class="post-subtitle">
                <br>Na plus:
            </h3>
            <h8 style="font-size: 100%" class="post-subtitle">no zajebista knajpka, zajebista, dobre majo jedzono i
                super przaśny klimat we lokalu. uguem git i naprawdę można się najeść porcje są mega duże i kelnerki
                ładne <br> <br></h8>
            <h3 style="font-size: 100%" class="post-subtitle">
                Na minus:
            </h3>
            <h8 style="font-size: 100%" class="post-subtitle">dalek het na jakimś wygwizdowie i podajo na kartonowych
                papiurach zamiast na normalnych talerzach, kto to widział takie dziwy w xxi wieku odjaniepawlać, i
                jeszcze cza puacić jak za zboże, dobre jedzono bo dobre ale za takie pieniondze to ja se moglbym cauom
                krowe kupic i oporzondzic
            </h8>


            <div>
                <p>Ocena: 4,5
                    <i class="fas fa-star" style="color:gold"></i>
                    <i class="fas fa-star" style="color:gold"></i>
                    <i class="fas fa-star" style="color:gold"></i>
                    <i class="fas fa-star" style="color:gold"></i>
                    <i class="fa fa-star-half" style="color:gold"></i>
                    <br> <br>
                </p>
            </div>
        </div>
    </div>
</div>
<div class="col-lg-8 col-md-8 mx-auto">
    <div style="font-size: 90%" class="shadow-sm bg-light rounded post-preview col-12">

        <div class="spacer" style="height: 15px"></div>

        <div style="float: left" class="col-lg-4 p-1">
            <img style="width: 90%; height: 100%; align-content: center;"
                 src="../../../resources/img/restaurant-img.jpg">
        </div>
        <a href="#">
            <div style="height: 100%" class="col-12">
                <h2 style="font-size: 130%" class="post-title">
                    !RESTAURANT NAME
                </h2>
            </div>
        </a>
        <div style="height: 100%" class="col-12">

            <h3 style="font-size: 100%" class="post-subtitle">
                <br>Na plus:
            </h3>
            <h8 style="font-size: 100%" class="post-subtitle">no zajebista knajpka, zajebista, dobre majo jedzono i
                super przaśny klimat we lokalu. uguem git i naprawdę można się najeść porcje są mega duże i kelnerki
                ładne <br> <br></h8>
            <h3 style="font-size: 100%" class="post-subtitle">
                Na minus:
            </h3>
            <h8 style="font-size: 100%" class="post-subtitle">dalek het na jakimś wygwizdowie i podajo na kartonowych
                papiurach zamiast na normalnych talerzach, kto to widział takie dziwy w xxi wieku odjaniepawlać, i
                jeszcze cza puacić jak za zboże, dobre jedzono bo dobre ale za takie pieniondze to ja se moglbym cauom
                krowe kupic i oporzondzic
            </h8>


            <div>
                <p>Ocena: 4,5
                    <i class="fas fa-star" style="color:gold"></i>
                    <i class="fas fa-star" style="color:gold"></i>
                    <i class="fas fa-star" style="color:gold"></i>
                    <i class="fas fa-star" style="color:gold"></i>
                    <i class="fa fa-star-half" style="color:gold"></i>
                    <br> <br>
                </p>
            </div>
        </div>
    </div>
</div>

<%@include file="../dynamic/board.jspf" %>

<%@include file="../dynamic/js.jspf" %>

</body>

</html>
