<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/stylePrincipal.css">
<title>TinderBooks</title>
</head>
<body>
<header>
    <div id="navbar-principal">
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark fixed-top"> <!--Le da la forma al navbar-->
            <a class="navbar-brand" href="Principal.jsp">TinderBooks</a>    <!--Cabecera y que quede afuera del navbar-toggler-->
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>                   <!--Pone el icono del toggler-->
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">    <!--Hace que al acercarse el texto dentro del div se meta al toggler-->
                <ul class="navbar-nav ml-auto">                             <!--Lo manda a la derecha :D-->
                    <form class="form-inline my-2 my-lg-0" action="" method="post">
                        <li class="nav-item">
                            <input class="form-control my-2 my-lg-0" type="text" id="txtEmailUser" name="txtEmailUser" placeholder="User or Email">
                        </li>
                        <li class="nav-item">
                            <input class="form-control my-2 my-lg-0" type="password" id="txtPasswordUser" name="txtPasswordUser" placeholder="Password">
                        </li>
                        <li>
                            <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Login</button>
                        </li>
                    </form>
                </ul>
            </div>
        </nav>
    </div>
</header>

<section>
    <div id="cuerpo">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 col-lg-6 col-xm-8 col-md-6" id="part-left"> <!--Parte izquierda de la pantalla-->
                    <div class="container">
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators black">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>    
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img cclass="d-block w-100" src="images/600x400.png"> <!--Imagen 1-->
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images/600x400_2.jpg">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images/600x400_3.png">
                                </div>
                                <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                                        <span class="carousel-control-next-icon"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-lg-6 col-xm-8 col-md-6" id="part-right"> <!--Parte derecha de la pantalla-->
                    <form action="#" method="post">
                        <h1>Create an Account</h1>
                        <div class="row">
                            <div class="col-xs-6 col-md-6">
                                <input class="form-control" type="text" name="txtFirstName" placeholder="First Name" required>
                            </div>
                            <div class="col-xs-6 col-md-6">
                                <input class="form-control" type="text" name="txtLastName" placeholder="Last Name" required>
                            </div>
                        </div>
                        <input class="form-control" type="email" name="txtEmail" placeholder="example@hotmail.com" required>
                        <input class="form-control" type="password" name="txtPassword" placeholder="Password" required>
                        <input class="form-control" type="password" name="txtPassword2" placeholder="Re-Enter Password" required>
                        <p>
                            <label for="txtBirthday">Birth Date:</label>
                            <input class="form-control" type="date" name="txtBirthday" required>
                        </p>
                        <div class="row">
                            <div class="col-xs-3 col-md-6">
                                <label class="radio-inline" for="chkCheckBoxMale">Male</label>
                                <input type="radio" name="chkSex" id="chkCheckBoxMale" value="male">
                            </div>
                            <div class="col-xs-3 col-md-6">
                                <label class="radio-inline" for="chkCheckBoxFemale">Female</label>
                                <input type="radio" name="chkSex" id="chkCheckBoxFemale" value="famle">
                            </div>
                        </div>
                        <br/>
                        <p>
                            <input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign Up">
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<footer>
    CopyRight
</footer>

    <script src="js/jqueris.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scriptPrincipal.js"></script>
</body>
</html>