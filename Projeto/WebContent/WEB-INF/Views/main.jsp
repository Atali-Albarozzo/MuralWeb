<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>MuralWeb@</title>

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="css/main.css" />
	<link rel="stylesheet" type="text/css" href="css/jquery-ui.css" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css" />
	<!--<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.min.css" />-->

</head>
<body onload="main_bodyLoad();">

	<!--  MENU -->
	<div class="menu visible-desktop visible-tablet">
		<ul class="nav nav-pills">
			<li class="active"><a href="#">Home</a>
			</li>
			<li><a href="http://localhost:8080/bootstrap/comunicados.jsp">Comunicados</a>
			</li>
			<li><a href="#">Eventos</a>
			</li>
			<li><a href="#">Oportunidades</a>
			</li>
			<li><a href="#">Sobre</a>
			</li>
			<li class="pull-right">
				<input type="button" value="Login" class="btn btn-primary" id="btnMenuLogin" onclick="login();"/>
			</li>
			<span class="pull-right" style="color: white; margin: 6px 10px;">
				<b>MuralWeb<span style="color: #00FFFF">@</span></b>
			</span>
		</ul>
	</div>
	
	<div class="btn btn-primary visible-phone">Menu (teste)</div>
	
	<!-- MAIN -->
	<div class="content">
	<div class="container">
	
		<!--  mobile configuration -->
		<div class="navbar visible-phone" style="margin-top:10px;">
			<div class="navbar-inner">
			<center>
				<ul class="nav" style="text-align:center;">
					<li class="active"><a href="#">Comunicados</a></li>
					<li><a href="#">Eventos</a></li>
					<li><a href="#">Oportunidades</a></li>
				</ul>
			</center>
			</div>
		</div>
		<!-- /mobile configuration -->
		
		<!-- COMUNICADOS -->
		<div class="communication-panel visible-desktop visible-tablet" id="communicationPanel">
			<div class="title-div">
				<span id="communicationPanelTitle">Comunicados</span>
			</div>
			<!-- Carregamento das communication-div via JavaScript -->
		</div>
	
		<!-- EVENTOS / OPORTUNIDADES -->
		<div class="board visible-desktop visible-tablet">
			<div class="title-div">
				<span id="boardPanelTitle">Mural</span>
			</div>
	
			<div class="container">
				<div class="event-panel">
					<div class="sub-title-div">
						<center>
							<img src="img/icon-calendar.png" />
							<span id="eventPanelTitle">Eventos</span>
						</center>
					</div>
	
					<div class="accordion" id="accordEvents">
						<!-- Colapsáveis -->
						<div class="accordion-group">
							<!-- #1 -->
							<div class="accordion-heading">
								<div class="marker pull-left">
									<img src="img/Marker-Push-Azure.png" width="24px" height="24px" />
								</div>
								<a class="accordion-toggle" data-toggle="collapse"
									data-parent="#accordEvents" href="#collapseEvent1">
									<span id="eventHeading1">Big Data Training</span>
									<span class="pull-right">Dia: 16/04/2014 </span>
								</a>
							</div>
							<div id="collapseEvent1" class="accordion-body collapse">
								<div class="accordion-inner">
									<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa esciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla 	assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer arm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p>
								</div>
							</div>
							<!-- #2 -->
							<div class="accordion-heading">
								<div class="marker pull-left">
									<img src="img/Marker-Push-Azure.png" width="24px" height="24px" />
								</div>
								<a class="accordion-toggle" data-toggle="collapse"
									data-parent="#accordEvents" href="#collapseEvent2"> 
									<span id="eventHeading2"	title="Turma ADS Noite - Treinamento intensivo de Javascript, CSS, HTML e SpringMVC">Turma ADS Noite - Treinamento intensivo de Javascript, CSS, HTML e	SpringMVC</span>
									<span class="pull-right">Dia: 16/04/2014 </span> 
								</a>
							</div>
							<div id="collapseEvent2" class="accordion-body collapse">
								<div class="accordion-inner">
									<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa esciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla 	assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer arm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
	
				<div class="opp-panel">
					<div class="sub-title-div">
						<center>
							<img src="img/icon-curriculum.png" />
							<span id="oppPanelTitle">Oportunidades</span>
						</center>
					</div>
	
					<!-- Colapsáveis -->
					<div class="accordion" id="accordOpp">
						<div class="accordion-group">
							<div class="accordion-heading">
								<div class="marker pull-left">
									<img src="img/Marker-Push-Green.png" width="24px" height="24px" />
								</div>
								<a class="accordion-toggle" data-toggle="collapse" 
								data-parent="#accordOpp" href="#collapseOpp1">
									<span id="oppHeading1">Oportunidade GFT</span>
									<span class="pull-right">Dia: 16/04/2014 </span>
								</a>
							</div>
							<div id="collapseOpp1" class="accordion-body collapse">
								<div class="accordion-inner">
									<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa esciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla 	assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer arm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p>
								</div>
							</div>
	
							<div class="accordion-heading">
								<div class="marker pull-left">
									<img src="img/Marker-Push-Green.png" width="24px" height="24px" />
								</div>
								<a class="accordion-toggle" data-toggle="collapse"
									data-parent="#accordOpp" href="#collapseOpp2">
									<span id="oppHeading2"	title="Turma Fabricação - Curso Montagem industrial e desenho tecnico avançado(a noite).">Turma Fabricação - Curso Montagem industrial e desenho tecnico avançado(a noite).</span>
									<span class="pull-right">Dia: 16/04/2014 </span>
								</a>
							</div>
							<div id="collapseOpp2" class="accordion-body collapse">
								<div class="accordion-inner">
									<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa esciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla 	assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer arm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.</p>
								</div>
							</div>
						</div>
					</div>
				</div><!-- Fim <div opp-panel> -->
			</div>  <!-- Fim <div container> -->
		</div>
	</div>
	</div> <!-- Fim MAIN -->

	<!-- FOOTER -->
	<div id="footer">
		<div class="container">
			<p class="muted credit">Copyright &copy; Todos os direitos
				reservados ®</p>
		</div>
	</div>
	
	<!--  FORM LOGIN -->
	<div id="loginModal" class="hidden">
	    <div class="container">
			<form class="form-signin">
		    	<h4 class="form-signin-heading">Digite o Usuários e Senha:</h4>
		        <input type="text" class="input-block-level" placeholder="Usuário">
		        <input type="password" class="input-block-level" placeholder="Senha">
		        <label class="checkbox">
		        	<input type="checkbox" value="remember-me" disabled> Lembrar Usuário
		        </label>
		        <button class="btn btn-primary" type="button" id="login">Login</button>
		        <button class="btn" type="button" onclick="$('#loginModal').dialog('close');">Cancelar</button>
			</form>
	    </div> 
	</div>

	<!--  FORM showCOMMUNICATION -->
	<div id="communicationModal" class="hidden">
		<div id="userImage">
			<img src="img/fatec.png" alt="Sem foto"/>
		</div>
		<div id="communicationModalText">
		
		</div>
		<span class="pull-right" style="font-size:xx-small;"><i>postado por</i> Fatec Sorocaba</span>
	</div>

	<!-- SCRIPTS -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/muralweb.js"></script>	
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/jquery.mask.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>