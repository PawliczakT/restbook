<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="dynamic/css.jspf" %>

<body>

<%@include file="dynamic/navigationMain.jspf" %>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">

            <hr>
            <div style="font-size: 90%" class="shadow-sm bg-light rounded post-preview col-12">
                <a href='<c:url value="restaurants/restaurant.jsp"/>'>
                    <div style="float: left" class="col-lg-4 p-1">
                        <img style="width: 90%; height: 100%; align-content: center;"
                             src='<c:url value="/resources/img/restaurant-img.jpg"/>'/>
                    </div>
                    <div style="height: 100%" class="col-12">

                        <h2 style="font-size: 130%" class="post-title">
                            Restauracja "Zjedz cebulę"
                        </h2>
                        <h3 style="font-size: 100%" class="post-subtitle">
                            Bardzo cenimy sobie cebule. Cebule są super mega dobre i w ogóle trzeba je jeść w
                            nieskończoność do końca wszechświata i jeszcze dwadzieścia dni dłużej. Polecamy pyszny
                            cebularz z Lublina. Będzie smakował każdemu. Mniam, mniam.

                        </h3>

                        <div>
                            <p>Ocena: 4,5
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fa fa-star-half" style="color:gold"></i>
                            </p>
                        </div>
                    </div>
                </a>
            </div>


            <hr>
            <div style="font-size: 90%" class="shadow-sm bg-light rounded post-preview col-12">
                <a href="#">
                    <div style="float: left" class="col-lg-4 p-1">
                        <img style="width: 90%; height: 100%; align-content: center;"
                             src='<c:url value="/resources/img/restaurant-img.jpg"/>'/>
                    </div>
                    <div style="height: 100%" class="col-12">

                        <h2 style="font-size: 130%" class="post-title">
                            Restauracja "Zjedz cebulę"
                        </h2>
                        <h3 style="font-size: 100%" class="post-subtitle">
                            Bardzo cenimy sobie cebule. Cebule są super mega dobre i w ogóle trzeba je jeść w
                            nieskończoność do końca wszechświata i jeszcze dwadzieścia dni dłużej. Polecamy pyszny
                            cebularz z Lublina. Będzie smakował każdemu. Mniam, mniam.

                        </h3>

                        <div>
                            <p>Ocena: 4,5
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fa fa-star-half" style="color:gold"></i>
                            </p>
                        </div>
                    </div>
                </a>
            </div>


            <hr>
            <div style="font-size: 90%" class="shadow-sm bg-light rounded post-preview col-12">
                <a href="#">
                    <div style="float: left" class="col-lg-4 p-1">
                        <img style="width: 90%; height: 100%; align-content: center;"
                             src='<c:url value="/resources/img/restaurant-img.jpg"/>'/>
                    </div>
                    <div style="height: 100%" class="col-12">

                        <h2 style="font-size: 130%" class="post-title">
                            Restauracja "Zjedz cebulę"
                        </h2>
                        <h3 style="font-size: 100%" class="post-subtitle">
                            Bardzo cenimy sobie cebule. Cebule są super mega dobre i w ogóle trzeba je jeść w
                            nieskończoność do końca wszechświata i jeszcze dwadzieścia dni dłużej. Polecamy pyszny
                            cebularz z Lublina. Będzie smakował każdemu. Mniam, mniam.

                        </h3>

                        <div>
                            <p>Ocena: 4,5
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fa fa-star-half" style="color:gold"></i>
                            </p>
                        </div>
                    </div>
                </a>
            </div>


            <hr>
            <div style="font-size: 90%" class="shadow-sm bg-light rounded post-preview col-12">
                <a href="#">
                    <div style="float: left" class="col-lg-4 p-1">
                        <img style="width: 90%; height: 100%; align-content: center;"
                             src='<c:url value="/resources/img/restaurant-img.jpg"/>'/>
                    </div>
                    <div style="height: 100%" class="col-12">

                        <h2 style="font-size: 130%" class="post-title">
                            Restauracja "Zjedz cebulę"
                        </h2>
                        <h3 style="font-size: 100%" class="post-subtitle">
                            Bardzo cenimy sobie cebule. Cebule są super mega dobre i w ogóle trzeba je jeść w
                            nieskończoność do końca wszechświata i jeszcze dwadzieścia dni dłużej. Polecamy pyszny
                            cebularz z Lublina. Będzie smakował każdemu. Mniam, mniam.

                        </h3>

                        <div>
                            <p>Ocena: 4,5
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fas fa-star" style="color:gold"></i>
                                <i class="fa fa-star-half" style="color:gold"></i>
                            </p>
                        </div>
                    </div>
                </a>
            </div>


            <hr>

            <!-- Pager -->
            <div class="clearfix">
                <a class="btn btn-primary float-right" href="#">Zobacz wszystkie &rarr;</a>
            </div>
        </div>
    </div>
</div>

<hr>


<%@include file="dynamic/board.jspf" %>

<%@include file="dynamic/js.jspf" %>

</body>

</html>
