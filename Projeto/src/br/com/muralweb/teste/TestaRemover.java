package br.com.muralweb.teste;

import br.com.muralweb.jdbc.DAO.UsuarioDao;

public class TestaRemover {
	 
	public static void main(String[] args) {
		UsuarioDao dao = new UsuarioDao();
		
		dao.remove(1);
		
		System.out.println("Usuário removido com sucesso !");
	}

}
