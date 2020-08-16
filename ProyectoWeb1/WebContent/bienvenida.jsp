<!--  Hacemos referencia a las librerias de jstl -->
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@  taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Herbolaria Joselyn</title>
    <link rel="stylesheet" type="text/css" href="estilos/bienvenida.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
        crossorigin="anonymous">
</head>
<body>
    <header style="background-image: linear-gradient(to bottom,
    								 rgba(204, 204, 203, 0.6),
    								 rgba(29,241,171, 0.6),
    								 rgba(7,109,150, 0.45)
  									 ),url('img/fondo.jpg');">
        <nav id="nav" class="nav1">
            <div class="contenedor-nav">
                <div class="logo">
                    <img src="img/logo.png" alt="">
                </div>
                <div class="enlaces" id="enlaces">
                    <a href="bienvenida.jsp"  class="btn-header">Cuenta</a>
                    <a href="listadoDeUsuarios.jsp"  class="btn-header">Usuarios</a>
                    <a href="nuevoUsuario.jsp"  class="btn-header">Registrar</a>
                    <a href="logueo.jsp"  class="btn-header">Salir</a>
                </div>
                <div class="icono" id="open">
                    <span>&#9776;</span> <!--para el responsiv-->
                </div>
            </div>
        </nav>
    </header>
    <main>
        <section class="team contenedor" id="Cuenta">
            <div class="container">
                <div class="cuenta-container">
                    <div class="cuenta">
                        <h2>¡BIENVENIDO! - Datos Personales de Usuario</h2>
                        <form action="">
                            <div class="inf-items">
                                Nombre: ${sessionScope.b_usuario2.nombre} <br>
							    Correo: ${sessionScope.b_usuario2.correo} <br>
								Pais: ${sessionScope.b_usuario2.pais} <br>
								Telefono: ${sessionScope.b_usuario2.telefono} <br>
								Fecha Nacimiento: ${sessionScope.b_usuario2.fecnac} <br>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <section class="work contenedor" id="articulos">
            <h3>Articulos</h3>
            <p class="after">¡Puedes encontrar aqui lo que necesitas!</p>
            <div class="botones-work">
                <ul>
                    <li class="filter active" data-nombre='todos'>Todos</li>
                    <li class="filter" data-nombre='estetica'>Estética</li>
                    <li class="filter" data-nombre='salud'>Salud</li>
                    <li class="filter" data-nombre='yoga'>Yoga</li>
                    <li class="filter" data-nombre='alimentacion'>Alimentación</li>
                </ul>
            </div>
            <div class="galeria-work">
                <div class="cont-work estetica">
                    <div class="img-work">
                        <img src="img/Estetica1.jpg" alt="">
                    </div>
                    <div class="textos-work">
                        <h4>Despídete de la piel grasa y los poros abiertos</h4>
                    </div>
                </div>
                <div class="cont-work estetica">
                    <div class="img-work">
                        <img src="img/Estetica2.jpg" alt="">
                    </div>
                    <div class="textos-work">
                        <h4>Elimina el vello facial con esta mascarilla ¡Súper efectiva!</h4>
                    </div>
                </div>
                <div class="cont-work salud">
                    <div class="img-work">
                        <img src="img/Salud1.jpg" alt="">
                    </div>
                    <div class="textos-work">
                        <h4>Pimienta de cayena</h4>
                    </div>
                </div>
                <div class="cont-work salud">
                    <div class="img-work">
                        <img src="img/Salud2.jpg" alt="">
                    </div>
                    <div class="textos-work">
                        <h4>Una hierba femenina</h4>
                    </div>
                </div>
                <div class="cont-work yoga">
                    <div class="img-work">
                        <img src="img/Yoga1.jpg" alt="">
                    </div>
                    <div class="textos-work">
                        <h4>10 Ejecicios que te mantendra sano</h4>
                    </div>
                </div>
                <div class="cont-work yoga">
                    <div class="img-work">
                        <img src="img/Yoga2.jpg" alt="">
                    </div>
                    <div class="textos-work">
                        <h4>La meditación</h4>
                    </div>
                </div>
                <div class="cont-work alimentacion">
                    <div class="img-work">
                        <img src="img/Alimentacion1.jpg" alt="">
                    </div>
                    <div class="textos-work">
                        <h4>5 maravillosas recetas saludables</h4>
                    </div>
                </div>
                <div class="cont-work alimentacion">
                    <div class="img-work">
                        <img src="img/Alimentacion2.jpg" alt="">
                    </div>
                    <div class="textos-work">
                        <h4>¡Pierda grasa con este delicioso licuado!</h4>
                    </div>
                </div>
                <div class="cont-work alimentacion">
                    <div class="img-work">
                        <img src="img/Alimentacion3.jpg" alt="">
                    </div>
                    <div class="textos-work">
                        <h4>7 Ensaladas que te matendra joven </h4>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer id="contacto" style="background-image: url('img/fondo.jpg');">
        <div class="footer contenedor">
            <div class="marca-logo">
                <img src="img/logo.png" alt="">
            </div>
            <div class="iconos">
                <i class="fab fa-youtube"></i>
                <i class="fab fa-facebook-square"></i>
                <i class="fab fa-twitter-square"></i>
            </div>
            <p>Siguenos en nuestras redes sociales</p>
        </div>
    </footer>
    <script src="js/jquery.js"></script>
    <script src="js/main.js"></script>
    <script src="js/filtro.js"></script>
</body>
</html>