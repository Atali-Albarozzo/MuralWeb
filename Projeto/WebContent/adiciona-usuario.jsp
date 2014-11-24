<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<link type="text/css" href="WEB-INF/css/jquery-ui.css" rel="stylesheet">
	<script type="text/javascript" src="/WEB-INF/js/jquery.js"></script>
	<script type="text/javascript" src="/WEB-INF/js/jquery-ui.min.js"></script>
	<script type="text/javascript">
		$(document).ready((function() {
		    	$( "#dataNascimento" ).datepicker();
		  	})
		);
	</script>
	
	<title>Insert title here</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	
	<form action="adicionaUsuario" method="post">
		Usuário <input type="text" name="cd_usuario"/><br>
		Senha 	<input type="password" name="senha"/><br>
		Tipo Usuário <input type="text" name="tp_usuario"/><br>
		Data Nascimento <input type="text" name="dt_nascimento"/><br>
		E-mail <input type="text" name="tp_usuario"/><br>
		Tipo Usuário <input type="text" name="tp_usuario"/><br>
		Tipo Usuário <input type="text" name="tp_usuario"/><br>
		Tipo Usuário <input type="text" name="tp_usuario"/><br>
		
		<!-- Data Nascimento <input id="dataNascimento" type="text" name="dt_nascimento"/><br> -->	

		<input type="submit" id="gravar">		
	</form>
	
	<c:import url="rodape.jsp" />
	
</body>
</html>