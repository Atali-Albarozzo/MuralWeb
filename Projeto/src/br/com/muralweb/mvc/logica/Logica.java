package br.com.muralweb.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Logica {
	void executa(HttpServletRequest req,
			HttpServletResponse res) throws Exception;
}