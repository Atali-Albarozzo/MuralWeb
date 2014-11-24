package br.com.muralweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.muralweb.jdbc.DAO.UsuarioDao;
import br.com.muralweb.modelo.Usuario;

@Controller
public class ComunicadoController {
	
	@RequestMapping("novoComunicado")
	public String form(){
		return "form-comunicado";
	}	

}