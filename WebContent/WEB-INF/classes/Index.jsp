<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/stylesheet.css">
<title>TinderBooks</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"> <!--Le da la forma al navbar-->
		<a class="navbar-brand" href="Index.jsp">TinderBooks</a> <!--Le da el aspecto al boton-->
		<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>            <!--Pone el icono del toggler-->
		</button>				
		<div class="collapse navbar-collapse" id="navbarResponsive"> <!-- Hace la extencion del boton-->
			<ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Categorias<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">Drama</a></li>
						<li><a class="dropdown-item" href="#">Ciencia Ficcion</a></li>
						<li><a class="dropdown-item" href="#">Terror</a></li>
						<li><a class="dropdown-item" href="#">Romanticos</a></li>
						<li><a class="dropdown-item" href="#">Para Niños</a></li>
						<li><a class="dropdown-item" href="#">Educativos</a></li>
						<li><a class="dropdown-item" href="#">Baby la vida es un ciclo</a></li>
					</ul>
				</li>
				<!--<li class="nav-item ">
					<a class="nav-link" href="UsuariosServlet">Usuarios</a>
				</li>-->
				<form action="UsuariosServlet" method="post">
                    <li class="nav-item">
                        <input type="submit" id="btnUsuarios" class="nav-link" value="Usuarios">
                    </li>
                </form>
				<!--<li class="nav-item ">
					<a class="nav-link" href="PerfilUsuarioServlet">Perfil</a>
				</li>-->
				<form action="PerfilUsuarioServlet" method="post">
                    <li class="nav-item">
                        <input type="submit" id="btnPerfil" class="nav-link" value="Perfil">
                    </li>
                </form>
				<li>
					<form class="form-inline my-2 my-lg-0">
						<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					</form>
				</li>
			</ul>
		</div>
	</nav>


	<script src="js/jqueris.js"></script>
	<script src="js/tether.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
</body>
</html>

