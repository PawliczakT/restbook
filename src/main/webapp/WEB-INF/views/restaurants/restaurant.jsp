<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="../dynamic/css.jspf" %>

<body>

<%@include file="../dynamic/navigationSub.jspf" %>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="jumbotron">
            <h1 class="display-4">Restauracja Ratuszowa</h1>
            <img src="../../../resources/img/rest1.jpg" class="img-fluid" alt="Responsive image">
            <!--
            <table>
               <tr>
                  <td><img src="img/rest1.jpg"  height="200px" alt="Responsive image"></td> <td><img src="img/menu1.jpg" height="200px" alt="Responsive image"></td>
               </tr>
            </table>
            -->
            <div class="jumbotron jumbotron-fluid">
                <div class="onas">
                    <h1 class="display-4">O nas</h1>
                    <p class="lead">Opis zajebistej restauracji serwujacej jedzenie w cenach umiarkowanych.</p>
                </div>
            </div>
            <p>Oceń naszą restaurację:</p>
            <form>
                <div class="rate">
                    <input type="radio" id="star5" name="rate" value="5"/>
                    <label for="star5" title="bosko">5 stars</label>
                    <input type="radio" id="star4" name="rate" value="4"/>
                    <label for="star4" title="dobrze">4 stars</label>
                    <input type="radio" id="star3" name="rate" value="3"/>
                    <label for="star3" title="średnio">3 stars</label>
                    <input type="radio" id="star2" name="rate" value="2"/>
                    <label for="star2" title="słabo">2 stars</label>
                    <input type="radio" id="star1" name="rate" value="1"/>
                    <label for="star1" title="dlaczego trujecie ludzi?">1 star</label>
                </div>
            </form>
            <br><br><br>

            <form>
                <div class="form-group">
                    <label for="pros">Co Ci się podoba?</label>
                    <textarea class="form-control" id="pros" name="pros" rows="3"></textarea>
                </div>
                <div class="form-group">
                    <label for="cons">Co moglibyśmy poprawić?</label>
                    <textarea class="form-control" id="cons" name="cons" rows="3"></textarea>
                </div>
                <input class="btn btn-success pull-left"  type="submit" value="Wyślij" id="searchButton"></input>
<%--                <button type="button" class="btn btn-outline-primary">Wyślij</button>--%>
            </form>
        </div>

    </div>
</div>

<hr>

<%@include file="../dynamic/board.jspf" %>

<%@include file="../dynamic/js.jspf" %>

</body>

</html>
