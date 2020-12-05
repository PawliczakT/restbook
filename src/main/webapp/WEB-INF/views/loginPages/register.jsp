<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="../dynamic/css.jspf" %>

<body class="bg-gradient-primary">

<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg-6 d-none d-lg-block bg-login-image" style="background-image: url('<c:url value="/resources/img/login.png"/>'); background-size: 100%"></div>
                <div class="col-lg-6">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4" style="font-family: Georgia, serif;">Utwórz konto!</h1>
                        </div>
                        <form class="user">
                            <div class="form-group row">
                                <div class="col-sm-12">
                                    <input type="text" class="form-control form-control-user" id="exampleUsername" placeholder="Nazwa użytkownika">
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control form-control-user" id="exampleInputEmail" placeholder="Email">
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Hasło">
                                </div>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Powtórz hasło">
                                </div>
                            </div>
                            <a href="login.jsp" class="btn btn-primary btn-user btn-block">
                                Rejestruj
                            </a>
                            <hr>

                        </form>
                        <div class="text-center">
                            <a class="small" href='<c:url value="/login"/>'>Masz już konto? Zaloguj się!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<%@include file="../dynamic/js.jspf"%>

</body>

</html>