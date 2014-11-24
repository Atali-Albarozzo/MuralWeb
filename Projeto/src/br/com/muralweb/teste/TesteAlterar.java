package br.com.muralweb.teste;

import br.com.muralweb.jdbc.DAO.UsuarioDao;
import br.com.muralweb.usuarios.Usuario;

public class TesteAlterar {

	public static void main(String[] args) {
		Usuario usuario = new Usuario();
		UsuarioDao dao = new UsuarioDao();
		
		usuario.setCd_usuario("master");
		dao.altera(usuario, 2);
		
		System.out.println("Usuário alterado com sucesso !");
		
	}

}
