<%--
  Created by IntelliJ IDEA.
  User: Dagi
  Date: 29.11.2020
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>RestBook</title>
</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
        <a class="navbar-brand" href="index.html">Start Bootstrap</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.html">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="post.html">Sample Post</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.html">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Header -->
<header class="masthead" style="background-image: url('img/home-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-10 mx-auto">
                <div class="site-heading">
                    <h1>Clean Blog</h1>
                    <span class="subheading">A Blog Theme by Start Bootstrap</span>
                </div>
            </div>
        </div>
    </div>
</header>

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
                                        <input type="file" name="nazwa" >
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
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                                    <label class="form-check-label" for="inlineCheckbox2">Amerykańska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Arabska</label>
                                </div>

                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                                    <label class="form-check-label" for="inlineCheckbox1">Bezglutenowe</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                                    <label class="form-check-label" for="inlineCheckbox2">Burgery</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                                    <label class="form-check-label" for="inlineCheckbox1">Chińskia</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Curry</label>
                                </div>

                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                                    <label class="form-check-label" for="inlineCheckbox1">Dania na lunch</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                                    <label class="form-check-label" for="inlineCheckbox2">Desery</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Drób</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Falafel</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Francuska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Grecka</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Indyjska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Japońska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Kanapki</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Kebab</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Koreańska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Makarony</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Meksykańska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Menu dla dzieci</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Międzynarodowa</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Naleśniki</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Owoce morza</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Pierogi</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Pizza</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Polska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Przekąski</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Ryby</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Sałatki</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Sushi</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Tajska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Turecka</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Wegańska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Wegetariańska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Wieprzowina</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Wietnamska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Wołowina</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Wrapy</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Włoska</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                                    <label class="form-check-label" for="inlineCheckbox3">Zupy</label>
                                </div>
                                <div class="form-check form-check-inline col-1">
                                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
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

<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-10 mx-auto">
                <ul class="list-inline text-center">
                    <li class="list-inline-item">
                        <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                </span>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                </span>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                </span>
                        </a>
                    </li>
                </ul>
                <p class="copyright text-muted">Copyright &copy; Your Website 2020</p>
            </div>
        </div>
    </div>
</footer>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Custom scripts for this template -->
<script src="js/clean-blog.min.js"></script>

</body>
</html>
