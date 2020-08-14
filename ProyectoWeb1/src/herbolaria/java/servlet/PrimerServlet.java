package herbolaria.java.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class PrimerServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	// se seleccion dop + ctrl + space
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Dentro del doPost");

		// Recuperamos los parametros que llegan desde el jsp
		String vnombre = req.getParameter("nombre");
		String vcorreo = req.getParameter("correo");
		String vpais = req.getParameter("pais");
		String vsexo = req.getParameter("sexo");
		
		// Vamos a retornar como respuesta un mensaje de saludo
		// Le estamos indicando al cliente que tipo de dato le vamos a retornar
		resp.setContentType("text/html"); // mime - type con esto ya no se verian los <>
		//resp.setContentType("text/html"); // mime - type con esto saldria con todo esto <>

		PrintWriter salida = resp.getWriter();
		salida.println("<font color=red size=7>");
		salida.println("Sus datos son;)");
		salida.println("</font>");
		salida.println("<br></br>");
		salida.println("Nombre: " + vnombre + " <br/>");
		salida.println("Correo: " + vcorreo + "<br/>");
		salida.println("Pais: " + vpais + "<br/>");
		if (vsexo.equals("M")) {
			salida.println("Sexo: Masculino" + "<br/>");
		} else {
			salida.println("Sexo: Femenino" + "<br/>");
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Dentro del método doGet");

		// Vamos a retornar como respuesta un mensaje de saludo
		// Le estamos indicando al client que tipo de dato le vamos a retornar
		resp.setContentType("text/html"); // mime - type con esto ya no se verian los <>
		// resp.setContentType("text/html"); // mime - type con esto saldria con todo esto <>

		PrintWriter salida = resp.getWriter();
		salida.println("<font color=green size=7>");
		salida.println("Hola mundo, welcome to java EE(we're on doGet)");
		salida.println("</font>");
		salida.close();
	}

}