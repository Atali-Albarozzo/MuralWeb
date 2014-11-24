package br.com.muralweb.teste;

import java.util.Calendar;

import br.com.muralweb.jdbc.DAO.UsuarioDao;
import br.com.muralweb.usuarios.Usuario;

public class TesteAdicionar {

	public static void main(String[] args) {
		Usuario usuario = new Usuario();
		
		usuario.setCd_usuario("admin");
		usuario.setSenha("admin");
		usuario.setTp_usuario("A");
		usuario.setDt_inclusao(Calendar.getInstance());
		
		UsuarioDao dao = new UsuarioDao();
		
		dao.adiciona(usuario);
		
		System.out.println("Usuário adicionado com sucesso !");

	}

}
