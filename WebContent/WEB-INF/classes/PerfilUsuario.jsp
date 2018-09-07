<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/fontawesome.min.css">
<link rel="stylesheet" href="css/stylePerfil.css">
<title>TinderBooks</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"> <!--Le da la forma al navbar-->
        <a class="navbar-brand" href="Index.jsp">TinderBooks</a> <!--Le da el aspecto al boton-->
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>                   <!--Pone el icono del toggler-->
        </button>				
        <div class="collapse navbar-collapse" id="navbarResponsive"> <!-- Hace la extencion del boton-->
            <ul class="navbar-nav ml-auto">
                <!--<li class="nav-item ">
                    <a class="nav-link" href="Usuarios.jsp">Usuarios</a>
                </li>-->
                <form action="UsuariosServlet" method="post">
                    <li class="nav-item">
                        <input type="submit" id="btnUsuarios" class="nav-link" value="Usuarios">
                    </li>
                </form>
                <!--<li class="nav-item">
                    <a class="nav-link" href="PerfilUsuario.jsp">Perfil</a>
                </li>-->
                <form action="PerfilUsuarioServlet" method="post">
                    <li class="nav-item">
                        <input type="submit" id="btnPerfil" class="nav-link" value="Perfil">
                    </li>
                </form>
                <form action="LogoutServlet" method="post">
                    <li class="nav-item">
                        <input type="submit" id="logout" class="nav-link" value="Logout">
                    </li>
                </form>
            </ul>
        </div>
    </nav>

    <section>
        <div class="form-control col-lg-10 offset-lg-1" id="divUser" >
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-lg-6 col-xm-8 col-md-6" id="firstPart">
                        <p>
                            <div class="form-control" id="divPhoto">
                                Photo
                            </div>
                        </p>
                        <p>
                            <div class="form-control" id="divName">
                                First Name - Last Name
                            </div>
                        </p>
                    </div>
                    <div class="col-xs-12 col-lg-6 col-xm-8 col-md-6" id="secondPart">
                        <div id="followUser">

                        </div>
                        <p>
                            <div id="divCalificaciones">
                                <h6 id="calificacionUser">Calificación de Usuario:</h6>
                                <form class="form-control" id="clasificacionStartUser">
                                    <p class="clasificacion">
                                    <input id="radio1" type="radio" name="estrellas" value="5">
                                    <label for="radio1">★</label><!--
                                    --><input id="radio2" type="radio" name="estrellas" value="4"><!--
                                    --><label for="radio2">★</label><!--
                                    --><input id="radio3" type="radio" name="estrellas" value="3"><!--
                                    --><label for="radio3">★</label><!--
                                    --><input id="radio4" type="radio" name="estrellas" value="2"><!--
                                    --><label for="radio4">★</label><!--
                                    --><input id="radio5" type="radio" name="estrellas" value="1"><!--
                                    --><label for="radio5">★</label>
                                    </p>
                                </form>
                            </div>
                        </p>
                        <p>
                            <div id="divDesGeneral">
                                <h6>Descripción:</h6>
                                <div class="form-control" id="divDes">
                                    Descripción...
                                </div>
                            </div>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <p>
            <div class="form-control col-lg-10 offset-lg-1" id="divInfoGeneral" >
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-12 col-lg-6 col-xm-8 col-md-6" id="infoPart">
                            <ul class="nav">
                                <li class="nav-item">
                                    <h5>Información</h5>
                                </li>
                                <li class="btn-group ml-auto">
                                    <input type="button" value="Editar" id="btnEditar" name="btnEditar" class="btn btn-outline-secondary" data-toggle="modal" data-target="#myModal">
                                    <div class="modal" id="myModal">
                                        <div class="modal-dialog modal-lg">
                                          <div class="modal-content">
                                          
                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Actualizar Perfil</h4>
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            </div>
                                          
                                            <!-- Modal body -->
                                            <div class="modal-body" id="idBodyInfo">
                                                <p>
                                                    <div>
                                                        <label for="txtDescripcion">Ingresa tu Descripción</label>
                                                        <input type="text" class="form-control" name="txtDescripcion" id="txtDescripcion" placeholder="Ingresar.." required>
                                                    </div>
                                                </p>
                                                <p>
                                                    <div>
                                                        <label for="txtEdad">Ingresa tu Edad</label>
                                                        <input type="text" class="form-control" name="txtEdad" id="txtEdad" placeholder="Ingresar.." required>
                                                    </div>
                                                </p>
                                                <p>
                                                    <div>
                                                        <label for="txtNacionalidad">Ingresa tu Nacionalidad</label>
                                                        <input type="text" class="form-control" name="txtNacionalidad" id="txtNacionalidad" placeholder="Ingresar.." required>
                                                    </div>
                                                </p>
                                                <p>
                                                    <div>
                                                        <label for="txtCiudad">Ingresa tu Ciudad</label>
                                                        <input type="text" class="form-control" name="txtCiudad" id="txtCiudad" placeholder="Ingresar.." required>
                                                    </div>
                                                </p>
                                                <p>
                                                    <div>
                                                        <label for="txtAcademica">Ingresa tu Formación Academica</label>
                                                        <input type="text" class="form-control" name="txtAcademica" id="txtAcademica" placeholder="Ingresar.." required>
                                                    </div>
                                                </p>
                                            </div>
                                          
                                            <!-- Modal footer -->
                                            <div class="modal-footer">
                                                <input type="button" name="btnInformacion" id="btnInformacion" class="btn btn-outline-success" value="Guardar">
                                                <input type="button" class="btn btn-outline-danger" data-dismiss="modal" value="Cancelar">
                                            </div>
                                          	
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <div id="divInfo">
                                <p>
                                    <div id="divEdadGeneral">
                                        <h6>Edad:</h6>
                                        <div id="divEdad">
                                            23 años
                                        </div>
                                    </div>
                                </p>
                                <p>
                                    <div id="divNacionalidadGeneral">
                                        <h6>Nacionalidad:</h6>
                                        <div id="divNacionalidad">
                                            Mexicana
                                        </div>
                                    </div>
                                </p>
                                <p>
                                    <div id="divCiudadGeneral">
                                        <h6>Ciudad:</h6>
                                        <div id="divCiudad">
                                            Guadalajara
                                        </div>
                                    </div>
                                </p>
                                <p>
                                    <div id="divFormacionAcademicaGeneral">
                                        <h6>Formación Academica:</h6>
                                        <div id="divFormacionAcademica">
                                            CETI
                                        </div>
                                    </div>
                                </p>
                            </div>
                        </div>
                        <div class="col-xs-12 col-lg-6 col-xm-8 col-md-6" id="locationPart">
                            <h5>Ubicación</h5>
                            <div id="divLocationMap">
                                Aqui va el mapa jeje
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </p>
    </section>
    
    
    <script src="js/jqueris.js"></script>
    <script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/fontawesome.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAY2L0gZgpVxVjV7-J90kfLbEzdpu0Aukw"></script>
    <script src="js/scriptPerfilUsuario.js"></script>
    
</body>
</html>