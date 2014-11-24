package br.com.muralweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.muralweb.jdbc.DAO.UsuarioDao;
import br.com.muralweb.modelo.Usuario;

@Controller
public class UsuarioController {
	
	@RequestMapping("novoUsuario")
	public String form(){
		return "form-usuario";
	}	
	
	@RequestMapping("adicionaUsuario")
	public String adiciona(Usuario usuario){
		UsuarioDao dao = new UsuarioDao();
		dao.adiciona(usuario);
		return "adicionada";	
	}	
}
