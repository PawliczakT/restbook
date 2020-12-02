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

    <%@include file="../dynamic/restaurantDisplay.jspf" %>

</div>

<%@include file="../dynamic/board.jspf" %>

<%@include file="../dynamic/js.jspf" %>
</body>

</html>
