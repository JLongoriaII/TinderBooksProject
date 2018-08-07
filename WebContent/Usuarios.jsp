<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/fontawesome.min.css">
<link rel="stylesheet" href="css/StyleUsuarios.css">
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
                <li class="nav-item">
                    <a class="nav-link" href="Usuarios.jsp"><span class="fa-user fa"></span> Usuarios</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="PerfilUsuario.jsp">Perfil</a>
                </li>
                <li>
                    <form class="form-inline my-2 my-lg-0">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">@</span>
                            </div>
                            <input type="text" class="form-control mr-sm-2" placeholder="Username">
                        </div> 
                    </form>
                </li>
            </ul>
        </div>
    </nav>
    
    
        <script src="js/jqueris.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/fontawesome.min.js"></script>
        <script src="js/script.js"></script>
</body>
</html>