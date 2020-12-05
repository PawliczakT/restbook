<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="../dynamic/css.jspf" %>

<body class="bg-gradient-primary">

<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block bg-login-image" style="background-image: url('<c:url value="/resources/img/login.png"/>'); background-size: 100%"></div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4" style="font-family: Georgia, serif;">Witaj!</h1>
                                </div>
                                <form class="user" method="post" action='<c:url value="/login"/> '>
                                    <div class="form-group">
                                        <input type="text" class="form-control form-control-user" name="username" id="exampleInputUsername" aria-describedby="emailHelp" style="font-family: Georgia, serif;" placeholder="Wprowadź nazwę użytkownika">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user" name="password" id="exampleInputPassword" style="font-family: Georgia, serif;" placeholder="Hasło">
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small">
                                            <input type="checkbox" class="custom-control-input" id="customCheck">
                                            <label class="custom-control-label" for="customCheck" style="font-family: Georgia, serif;">Zapamiętaj mnie</label>
                                        </div>
                                    </div>

                                    <input type="submit" class="btn btn-primary btn-user btn-block" value="login">

                                    <hr>

                                </form>
                                <div class="text-center">
                                    <a class="small" href="register.jsp">Utwórz konto!</a>
                                </div>
                            </div>
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