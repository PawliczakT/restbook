<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="dynamic/css.jspf" %>

<body>

<%@include file="dynamic/navigationMain.jspf" %>

<!-- Main Content -->
<div class="container">


    <%@include file="dynamic/restaurantDisplay.jspf" %>

            <!-- Pager -->
            <div class="clearfix col-10">
                <a class="btn btn-primary float-right rounded-pill" href='<c:url value="/allRestaurants"/>'>Zobacz wszystkie &rarr;</a>
            </div>
</div>

<hr>


<%@include file="dynamic/board.jspf" %>

<%@include file="dynamic/js.jspf" %>

</body>

</html>
