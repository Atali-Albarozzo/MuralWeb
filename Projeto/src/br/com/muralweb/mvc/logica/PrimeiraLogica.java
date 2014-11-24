package br.com.muralweb.mvc.logica;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PrimeiraLogica implements Logica {
	public void executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		System.out.println("Exceutando a logica " + "e redirecionando ..." );
		
		RequestDispatcher rd = req.getRequestDispatcher("/primeira-logica.jsp");
		rd.forward(req,res);
	}
}
