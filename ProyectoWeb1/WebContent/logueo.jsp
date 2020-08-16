<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@  taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@  page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Herbolaria Joselyn</title>	
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
        crossorigin="anonymous">
	<link href="estilos/mis_estilos.css" type="text/css" rel="stylesheet" media="screen">
</head>
<body class="hidden">
    <div class="centrado" id="onload">
        <div class="lds-ellipsis"><div></div><div></div><div></div><div></div></div>
    </div>
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
                    <a href="#" id="enlace-inicio" class="btn-header">Iniciar Sesión/Registrarse</a>
                    <a href="#" id="enlace-colaboradores" class="btn-header">Colaboradores</a>
                    <a href="#" id="enlace-articulos" class="btn-header">Articulos</a>
                    <a href="#" id="enlace-contacto" class="btn-header">Contacto</a>
                </div>
                <div class="icono" id="open">
                    <span>&#9776;</span> <!--para el responsiv-->
                </div>
            </div>
        </nav>
        <div class="textos">
            <h1>Herbolaria Joselyn</h1>
            <h2>¡Encuentre recetas, tips y más! </h2>
        </div>
    </header>
    <main>
        <section class="team contenedor" id="iniciar_registrar">
            <div class="container">
                <div class="login-container">
                    <div class="register">
                        <h2>Registrarse</h2>
                        <form method="post" action="usuario.do" onsubmit="return validar()">
                        	<input  type="hidden" name="operacion" value="registra"  >
                            <label>Nombre y Apellido:<input class="box" type="text" id="Nombre" name="nombre" maxlength="50" style="color:#ffffff" required></label>
                            <label>Correo:<input class="box"  type="email" id="Correo" name="correo" maxlength="50" style="color:#ffffff" required></label>
                    
                            <label>Pais</label>
                            <select class="box" name="pais" style="color:#ffffff">
                                <option value="01">Perú</option>
                                <option value="02">Colombia</option>
                                <option value="03">Brasil</option>
                                <option value="04">Chile</option>
                            </select>

                            <label>Telefono:<input class="box" type="text" id="Telefono" name="telefono" maxlength="50" style="color:#ffffff" required></label>
                            <label>Fecha de Nacimiento:<input class="box"  type="text" name="fecnac" maxlength="50" placeholder="dd/mm/aa" style="color:#ffffff"required></label>
                            <label>Usuario:<input class="box"  type="text" name="usuario" maxlength="50" style="color:#ffffff" required></label>
                            <label>Contraseña:<input class="box" type="password" name="clave" maxlength="50" style="color:#ffffff" required></label>
                 
                            <input type="submit" class="submit" value="Registrarse">
                        </form>
                    </div>
                    <div class="login">
                        <h2>Iniciar Sesión</h2>
                        <form method="post" action="logueo">
                            <div class="login-items">
                                <label>Nombre:<input class="box1" id="" type="text" name="usuario" maxlength="50" required></label>
                                <label>Contraseña:<input class="box1" id="" type="password" name="clave" maxlength="50" required></label>
                                <input type="submit" class="submit" value="Iniciar Sesión">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <section class="team contenedor" id="colaboradores">
            <h3>Nuestros Colaboradores</h3>
            <p class="after">Con amplia experiencia y confianza</p>
            <div class="card">
                <div class="content-card">
                    <div class="people">
                        <img src="img/people1.jpg" alt="">
                    </div>
                    <div class="texto-team">
                        <h4>Lic.Esther Campos</h4>
                        <p>Profesora de Yoga</p>
                    </div>
                </div>
                <div class="content-card">
                    <div class="people">
                        <img src="img/people2.jpg" alt="">
                    </div>
                    <div class="texto-team">
                        <h4>Dr.Francisco Zuñiga</h4>
                        <p>Medicina General</p>
                    </div>
                </div>
                <div class="content-card">
                    <div class="people">
                        <img src="img/people3.jpg" alt="">
                    </div>
                    <div class="texto-team">
                        <h4>Lic.Juliana Casas</h4>
                        <p>Nutricionista</p>
                    </div>
                </div>
                <div class="content-card">
                    <div class="people">
                        <img src="img/people4.jpg" alt="">
                    </div>
                    <div class="texto-team">
                        <h4>Lc.David Flores</h4>
                        <p>Fitoterapeuta</p>
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
                        <h4>7 Ensaladas que te mantendra joven </h4>
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
    
    <script language="JavaScript" type="text/javascript" src="js/jquery.js"></script>
    <script language="JavaScript" type="text/javascript" src="js/main.js"></script>
    <script language="JavaScript" type="text/javascript" src="js/filtro.js"></script>
    <script language="JavaScript" type="text/javascript" src="js/validar.js"></script>
</body>
</html>