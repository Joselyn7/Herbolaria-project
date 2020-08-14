<!-- Referenciamos a las librerias de jstl -->
<!--   
	El uri es el nombre logico de la libreria de etiquetas que queremos referenciar
	El prefijo es el nombre corto del uri
 -->
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
    <link rel="stylesheet" type="text/css"  href="estilos/lista_usuarios.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
        crossorigin="anonymous">
</head>
<body>
    <header>
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
        <section class="team contenedor" id="Lista">
            <div class="container">
                <div class="lista-container">
                    <div class="lista">
                        <h2>LISTA DE USUARIOS</h2>
		                   	<form method="post" action="usuario.do">
							<input type="hidden" name="operacion" value="lista">
							<table>
								<tr>
									<td class="control"><fmt:message key="listado.nombre" /></td>
									<td><input type="text" name="nombre" ></td>
									<td><input type="submit" name="boton01" value="listar"></td>
								</tr>
							</table>
							<c:if test="${requestScope.li_usuarios!=null}">
								<!-- Lista de Usuarios -->
								<table>
									<tr class="grilla_cabecera">
										<td><fmt:message key="listado.nombre" /></td>
										<td>Correo</td>
										<td>Fecha de Nacimiento</td>
										<td>Eliminar</td>
										<td>Modificar</td>
									</tr>
									<c:forEach var="usu" items="${requestScope.li_usuarios}">
										<tr class="grilla_campo">
											<td>${usu.nombre }</td>
											<td>${usu.correo }</td>
											<td><fmt:formatDate value="${usu.fecnac}" type="date" dateStyle="full" />
											</td>
											<td align="center"><a
												href="usuario.do?operacion=elimina&usuario=${usu.usuario}">E</a>
											</td>
											<td align="center"><a
												href="usuario.do?operacion=cargaModifica&usuario=${usu.usuario}">M</a>
											</td>
										</tr>
									</c:forEach>
									<tr class="control">
										<td colspan="5" align="right">
											<a href="nuevoUsuario.jsp">NuevoUsuario</a>
										</td>
									</tr>
								</table>
							</c:if>
							</form>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <script src="js/jquery.js"></script>
    <script src="js/main.js"></script>
    <script src="js/filtro.js"></script>
</body>
</html>
