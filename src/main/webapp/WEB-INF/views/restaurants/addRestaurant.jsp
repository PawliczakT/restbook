<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>

<body>

<%@include file="../dynamic/navigationSub.jspf" %>

<!-- Main Content -->
<form name="send" method="post" action='<c:url value="/addNewRestaurant"/>'>
    <!-- Begin Page Content -->
    <div class="container">

        <!-- Content Row -->
        <div class="row col-12 justify-content-center">
            <div class="col-12 justify-content-center">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <div class="form-group row">
                            <label for="image" class="col-3 col-form-label">Dodaj zdjęcie:</label>
                            <div class="col-4">

                                <form>
                                    <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="customFile">
                                        <label class="custom-file-label" for="customFile">Wybierz plik</label>
                                    </div>
                                </form>

                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="name" class="col-3 col-form-label">Nazwa restauracji:</label>
                            <div class="col-4">
                                <input class="form-control" type="text" id="name" name="name"
                                       placeholder="Wprowadź nazwę restauracji">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="phone" class="col-3 col-form-label">Numer telefonu:</label>
                            <div class="col-4">
                                <input class="form-control" type="text" id="phone" name="phone"
                                       placeholder="+48">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="address" class="col-3 col-form-label">Adres restauracji:</label>
                            <div class="col-6">
                                <input class="form-control" type="text" id="address" name="address"
                                       placeholder="Wprowadź adres restauracji">
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="description" class="col-3 col-form-label">Opis:</label>
                            <div class="col-6">
                                        <textarea class="form-control" rows="5" id="description" name="description"
                                                  placeholder="Dodaj opis restauracji"></textarea>
                            </div>
                        </div>
                        <div class="form-group">


                            <!-- Button trigger modal -->
                            <button type="button" class="p-2 btn btn-info rounded-pill col-3" data-toggle="modal"
                                    data-target="#addCuisineModal">
                                Dodaj rodzaje kuchni
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
                                            <h5 class="modal-title d-flex justify-content-center" id="addCuisineModalTitle">Rodzaje kuchni:</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>

                                        <div class="modal-body col-12 d-flex justify-content-center">
                                            <div class="row col-12">
                                                <c:forEach items="${cuisine}" var="cuisine">
                                                    <div class="p-1 btn-group-toggle col-4" data-toggle="buttons">
                                                        <label class="p-2 btn btn-outline-info rounded-pill col-12">
                                                            <input style="" type="checkbox"
                                                                   autocomplete="off">${cuisine.name}
                                                        </label>
                                                    </div>
                                                </c:forEach>

                                            </div>
                                        </div>


                                        <div class="modal-footer">
                                            <button type="button" class="p-2 btn btn-info rounded-pill">Dodaj</button>
                                            <button type="button" class="p-2 btn btn-secondary rounded-pill"
                                                    data-dismiss="modal">Zamknij
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <input type="hidden" value="<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" />" name="createDate">
                        <input class="btn btn-info rounded-pill" type="submit" value="Dodaj restaurację"
                               id="sendButton">
                    </div>
                </div>
            </div>
        </div>
    </div>

        <!-- /.container-fluid -->
</form>

<hr>

<%@include file="../dynamic/board.jspf" %>

<%@include file="../dynamic/js.jspf" %>

<script>
    // Add the following code if you want the name of the file appear on select
    $(".custom-file-input").on("change", function() {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });
</script>

</body>
</html>
