package br.com.muralweb.teste;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import br.com.muralweb.jdbc.DAO.UsuarioDao;
import br.com.muralweb.modelo.Usuario;


class Teste<T>{
	
	List<T> list  = new ArrayList<T>(); 
	
	void adcionarNaLista(T t){
		list.add(t);
	}
	public T getT(){
		return list.get(0);
	}
}

public class TestaLista {
	
	public static void main(String[] args) throws ParseException {
		UsuarioDao dao = new UsuarioDao();
		List<Usuario> usuarios = dao.getLista();
		
		for (Usuario usuario : usuarios){
			String dataFormatada = new SimpleDateFormat("dd/MM/yyyy").format(usuario.getDt_inclusao().getTime());
			System.out.println("Usuario: " + usuario.getCd_usuario());
			System.out.println("Tp. Usuario: " + usuario.getTp_usuario());
			System.out.println("Dt. Inclusão: " + dataFormatada);
			System.out.println("-");

		}
		//Teste<Integer> t = new Teste<Integer> ();
		//Teste<String> t1 = new Teste<String> ();
	}

}


