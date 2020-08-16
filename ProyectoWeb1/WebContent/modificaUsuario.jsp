<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Herbolaria Joselyn</title>
    <link rel="stylesheet" type="text/css" href="estilos/nuevoUsuario.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
        crossorigin="anonymous">
</head>

<body class="hidden">
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
        <section class="team contenedor" id="Modificar">
            <div class="container">
                <div class="registrar-container">
                    <div class="registrar">
                        <h2>MODIFICAR</h2>
                        	<form  method="post" action="usuario.do" onsubmit="return validar()" >
						        <input  type="hidden" name="operacion" value="modifica">
						              <label>Nombre y Apellido:<input class="box"  type="text" 
						              							name="nombre" maxlength="50" 
						              							style="color:#000000" 
						              							value="${requestScope.b_usuario.nombre}" required></label>
						              <label>Correo:<input class="box" type="text"
						              				 name="correo" maxlength="50" 
						              				 style="color:#000000" 
						              				 value="${requestScope.b_usuario.correo}" required></label>
						                    
						              <label>Pais</label>
						              <select class="box" name="pais" style="color:#000000">
						                   <option value="1">Perú</option>
						                   <option value="2">Colombia</option>
						                   <option value="3">Brasil</option>
						                   <option value="4">Chile</option>
						              </select>
						
						              <label>Telefono:<input class="box" type="text" name="telefono"
						              						 maxlength="50" style="color:#000000" 
						              						 value="${requestScope.b_usuario.telefono}" required></label>
						              <label>Fecha de Nacimiento:<input class="box"  type="date" name="fecnac" 
						              							 maxlength="50" placeholder="dd/mm/aa" 
						              							 style="color:#000000" 
						              							 value="${requestScope.b_usuario.fecnac}" required></label>
						              <label>Usuario:<input class="box" type="text" name="usuario" 
						              				 maxlength="50" style="color:#000000" 
						              				 value="${requestScope.b_usuario.usuario}" required></label>
						              <label>Contraseña:<input class="box" type="password" name="clave" 
						              					 maxlength="50" style="color:#000000" 
						              					 value="${requestScope.b_usuario.clave}" required></label>
						                 
						              <input type="submit" class="submit" value="Modificar">
    						</form>
                    </div>
                </div>
            </div>
        </section>
        
    <script language="JavaScript" type="text/javascript" src="js/jquery.js"></script>
    <script language="JavaScript" type="text/javascript" src="js/main.js"></script>
    <script language="JavaScript" type="text/javascript" src="js/filtro.js"></script>
    <script language="JavaScript" type="text/javascript" src="js/validar.js"></script>
</body>
</html>