package br.com.muralweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventoController {

	@RequestMapping("novoEvento")
	public String form(){
		return "form-evento";
	}
	
}
