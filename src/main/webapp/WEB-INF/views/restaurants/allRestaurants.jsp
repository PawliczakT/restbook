<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>

<body>

<%@include file="../dynamic/navigationSub.jspf" %>

<!-- Main Content -->

<!-- Cuisine Header -->
<header>
    <nav class="navbar navbar-light bg-light col-12 justify-content-center">
        <div class="col-12 justify-content-center">

            <button class="p-1 btn btn-outline-info rounded-pill col-1" type="button">Pokaż wszystkie</button>

            <c:forEach items="${top10Cuisines}" var="top10Cuisine">
                <button class="p-1 btn btn-outline-info rounded-pill col-1" type="button">${top10Cuisine.name}</button>
            </c:forEach>


            <div class="form-group">

                <!-- Button trigger modal -->
                <button type="button" class="p-2 btn btn-info rounded-pill col-1" data-toggle="modal"
                        data-target="#addCuisineModal">
                    Więcej
                </button>


                <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">
                                    Rodzaje kuchni
                                </h4>
                            </div>
                            <div class="modal-body">
                                <p id="checkid"></p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Zamknij
                                </button>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- Modal -->
                <div class="modal fade" id="addCuisineModal" tabindex="-1" role="dialog"
                     aria-labelledby="addCuisineModalTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="addCuisineModalTitle">Rodzaje kuchni:</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>

                            <div class="modal-body col-12 align-self-center">
                                <div class="row col-12">
                                    <c:forEach items="${cuisine}" var="cuisine">
                                        <div class="p-1 btn-group-toggle col-4" data-toggle="buttons">
                                            <label class="p-2 btn btn-outline-info rounded-pill col-12">
                                                <input type="checkbox"
                                                       autocomplete="off">${cuisine.name}
                                            </label>
                                        </div>
                                    </c:forEach>

                                </div>
                            </div>


                            <div class="modal-footer">
                                <button type="button" class="p-2 btn btn-secondary rounded-pill"
                                        data-dismiss="modal">Zamknij
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </nav>
</header>

<div class="container">
    <div class="spacer" style="height: 30px"></div>

    <%@include file="../dynamic/restaurantDisplay.jspf" %>

</div>

<hr>

<%@include file="../dynamic/board.jspf" %>

<%@include file="../dynamic/js.jspf" %>
</body>

</html>
