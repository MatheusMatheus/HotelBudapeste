package br.com.controller.logica;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mvc")
public class ControllerServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String parametro = request.getParameter("logica");
		String nomeClasse = "br.com.controller.logica." + parametro;
		
		try {
			Class<?> classe = Class.forName(nomeClasse);
			Logica logica = (Logica) classe.newInstance();
			
			// Recebe o String ap�s a execu��o da l�gica
			String pagina = logica.executa(request, response);
			
			// Faz o forward para a p�gina JSP
			request.getRequestDispatcher(pagina).forward(request, response);
		} catch (Exception e) {
			throw new ServletException("A l�gica de neg�cios causou uma exce��o");
		}
	}
}
