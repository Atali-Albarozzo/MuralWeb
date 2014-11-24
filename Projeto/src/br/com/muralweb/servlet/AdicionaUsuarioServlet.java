package br.com.muralweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.muralweb.jdbc.DAO.UsuarioDao;
import br.com.muralweb.modelo.Usuario;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

public class AdicionaUsuarioServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// writer
		PrintWriter out = response.getWriter();
		
		// buscando parametros de saída.
		String cd_usuario = request.getParameter("cd_usuario");
		String senha = request.getParameter("senha");
		String tp_usuario = request.getParameter("tp_usuario");
		
		Calendar dt_inclusao = null;
		
		try {
			Date curdate = new Date();
			dt_inclusao = Calendar.getInstance();
			dt_inclusao.setTime(curdate);
			
		} catch (ParseException e) {			
			out.println("Erro de conversão de Data.");
			return; // para a execução do método
		}
		
		// Monta objeto usuário
		Usuario usuario = new Usuario();
		usuario.setCd_usuario(cd_usuario);
		usuario.setSenha(senha);
		usuario.setTp_usuario(tp_usuario);
		usuario.setDt_inclusao(dt_inclusao);
		
		UsuarioDao dao = new UsuarioDao();
		dao.adiciona(usuario);
		
		RequestDispatcher rd = request.getRequestDispatcher("/usuario-adicionado.jsp");
		rd.forward(request,response);
		
	}
}

