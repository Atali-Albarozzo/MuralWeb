package br.com.muralweb.teste;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import br.com.muralweb.modelo.Usuario;

public class TestaUsuario {

	public static void main(String[] args){
		Usuario usuario = new Usuario();
		Calendar dt = Calendar.getInstance();
		
		try {
			String dtStr = new String("20/10/2014");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");	
			
			System.out.println(dtStr.replace('/', '-'));
			Date dt_inclusao = sdf.parse(dtStr.replace('/', '-'));
			

		} catch (ParseException e) {
			System.out.println("Erro de ParseException:" + e);
		}
		
		usuario.setCd_usuario("teste");
		dt.setTime(dt_inclusao);		
		
		System.out.println("Usuario: " + usuario.getCd_usuario());
		System.out.println("Dt. Inclusao: " + dt_inclusao);
		
	}

}
