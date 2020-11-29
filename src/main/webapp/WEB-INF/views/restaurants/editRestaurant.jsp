<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>

<body>

<%@include file="../dynamic/navigationMain.jspf" %>

<!-- Main Content -->
<form name="send" method="post" action='<c:url value="/"/>'>
    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Content Row -->
        <div class="row">
            <div class="col-xl-12 col-md-12 mb-12">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <div class="form-group row">
                            <label for="picture" class="col-2 col-form-label">Dodaj zdjęcie:</label>
                            <div class="col-10">
                                <div>
                                    <form action="..." enctype="multipart/form-data">
                                        <input type="file" name="nazwa">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="address" class="col-2 col-form-label">Dodaj adres:</label>
                            <div class="col-10">
                                <input class="form-control" type="text" id="lastName" name="lastName"
                                       placeholder="Wprowadź adres restauracji">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="address" class="col-2 col-form-label">Wybierz rodzaj kuchni:</label>
                            <div class="col-10">

                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2"
                                           value="option2">
                                    <label class="form-check-label" for="inlineCheckbox2">Amerykańska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Arabska</label>
                                </div>

                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1"
                                           value="option1">
                                    <label class="form-check-label" for="inlineCheckbox1">Bezglutenowe</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2"
                                           value="option2">
                                    <label class="form-check-label" for="inlineCheckbox2">Burgery</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1"
                                           value="option1">
                                    <label class="form-check-label" for="inlineCheckbox1">Chińskia</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Curry</label>
                                </div>

                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1"
                                           value="option1">
                                    <label class="form-check-label" for="inlineCheckbox1">Dania na lunch</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2"
                                           value="option2">
                                    <label class="form-check-label" for="inlineCheckbox2">Desery</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Drób</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Falafel</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Francuska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Grecka</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Indyjska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Japońska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Kanapki</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Kebab</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Koreańska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Makarony</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Meksykańska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Menu dla dzieci</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Międzynarodowa</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Naleśniki</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Owoce morza</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Pierogi</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Pizza</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Polska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Przekąski</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Ryby</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Sałatki</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Sushi</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Tajska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Turecka</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Wegańska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Wegetariańska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Wieprzowina</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Wietnamska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Wołowina</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Wrapy</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Włoska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Zupy</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                           value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Śniadania</label>
                                </div>
                            </div>

                        </div>


                        <div class="form-group row">
                            <label for="start" class="col-2 col-form-label">Dodaj opis:</label>
                            <div class="col-10">
                                <textarea class="form-control" rows="5" id="start" name="start"
                                          placeholder="Dodaj opis restauracji"></textarea>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
        <input class="btn btn-success pull-left" type="submit" value="Wyślij" id="searchButton"></input>


        <!-- /.container-fluid -->
</form>

<hr>

<%@include file="../dynamic/board.jspf" %>

<%@include file="../dynamic/js.jspf" %>

</body>
</html>
