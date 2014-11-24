package br.com.muralweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OportunidadeController {

	@RequestMapping("novaOportunidade")
	public String form(){
		return "form-oportunidade";
	}
	
}