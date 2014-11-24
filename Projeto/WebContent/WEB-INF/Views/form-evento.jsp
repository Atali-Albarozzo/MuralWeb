<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Eventos</title>
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css"> 
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">	
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/form-evento.css">
</head>
<body>
	<!-- MENU -->
	<div class='navbar navbar-inverse'> 
		<div class='navbar-inner'>
			<a class="brand logout" href="#"> <b>Logout</b> </a>
			<a class="brand welcome-text"> Bem vindo(a), Maria Angélica </a>
			<ul class='nav'>
				<a class="brand"> <b>MuralWeb<span style="color: #0088cc">@</span></b> </a>
				
				<li>
					<a href='/main'> </a>
				</li>
			</ul>
		</div>
	</div>
	
	<!-- BODY -->	
	<div class='container-fluid'>
		<div class='row-fluid'>
			<div class='span3'>
				<div class='well sidebar-nav'>
					<ul class='nav nav-list'>
						<li class='nav-header'> Menu </li>
						<li> <a href='novoUsuario'> Usuários </a></li>
						<li> <a href="novoComunicado"> Comunicados </a></li>
						<li class='active'> <a href="novoEvento"> Eventos </a></li>
						<li> <a href="novaOportunidade"> Oportunidades </a></li>
					</ul>
				</div>	
			</div>
		<div class='span9 search-event'>
				<div class='title-div'>
					<span>Eventos</span>
					<!-- <h2 class="title-search"> Cadastro de Usuários </h2> -->
				</div>
				<div class='well'>
					<!-- SEARCH -->
					<table class="search-table" cellpadding="5px">
						<thead>
							<tr>
								<th align="left">Título Evento</th>
								<th align="left">Curso</th>
								<th align="left">Dt. Postagem</th>
								<th align="left"></th>
							</tr>	
						</thead>	
						<tbody>
							<tr>
								<td>
									<input type='text' maxlength='60' id='NmTitulo' name='nm_titulo'/>
								</td>
								<td>
									<select name="cd_seq_curso">
										<option value="" ></option>
										<option value="1" style="overflow: nowrap;">Análise de Sistemas</option>
										<option value="2">Fabricação Mecânica</option> 
									</select>
								</td>
								<td>
									<input type='text' id='DtPostagem' name='dt_postagem' class="dateMask"/>
								</td>
								<td>
									<input class="btn" type="button" value="Pesquisar" style="margin-bottom:10px;">
								</td>
							</tr>
						</tbody>
					</table>
					
					<!-- GRID RESULTS -->
					<table class="table table-striped event-grid" id="eventTable">
						<thead>
							<tr>
								<th>
									Título
								</th>
								<th>
									Descrição
								</th>
								<th>
									Dt. Início
								</th>
								<th>
									Dt. Fim
								</th>
								<th>
									Local
								</th>
								<th>
									Curso Alvo
								</th>
								<th>
									Obs.
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									Teste
								</td>
								<td>
									Testando blablablá
								</td>
								<td>
									01/11/2014
								</td>
								<td>
									07/11/2014 19:00
								</td>
								<td>
									07/11/2014 21:00
								</td>
								<td>
									FUNDEC
								</td>
								<td>
									Apresentação do Quarteto de Cordas com o cellista Jeffeson Perez.
								</td>
							</tr>
						</tbody>
					</table>
					<input type="button" class="btn btn-primary" value="Incluir" onclick="eventModal();">
				</div>
			</div>		
		</div>	
	</div>
	
	<div class="hidden" id="eventModal">
		<table class="tableEvent">
			<tr>
				<td colspan="2">
					<label> Título </label><input type="text" name="nm_titulo">
				</td>
				<td>
					<label> Dt. Postagem </label><input type="text" class="dateMask" name="dt_postagem" disabled>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<label> Descrição </label><input type="text" maxlength="200" name="nm_descricao">
				</td>
			</tr>
			<tr> 	
				<td colspan="2">
					<label> Local </label><input type="text" name="nm_local">
				</td>
				<td>
					<label> Curso </label>
					<select name="cd_seq_curso">
						<option value="" ></option>
						<option value="1" style="overflow: nowrap;">Análise de Sistemas</option>
						<option value="2">Fabricação Mecânica</option> 
					</select>
				</td>
			</tr>
			<tr>
				<td>
					<label> Dt. Início </label>
				<div style="white-space: nowrap;">
					<input type="text" class="dateHourMask datePicker" name="dt_evento_ini"/>
					<span class="add-on"><i class="icon-calendar"></i></span>
				</div>
				</td>
				<td>
					<label> Dt. Fim </label>
				<div style="white-space: nowrap;">
					<input type="text" class="dateHourMask datePicker" name="dt_evento_fim"/>
					<span class="add-on"><i class="icon-calendar"></i></span> 
				</div>						
				</td>
			</tr>
			<tr>	
				<td colspan="3">
					<label> Observações </label><textarea  name="nm_observacao" ></textarea>
				</td>
			</tr>		
			<tr>
				<td>
					<input class="btn" type="submit" id="salvar" value="Salvar">
				</td>
			</tr>
		</table>
	</div>
	
	<!-- SCRIPTS -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/jquery.mask.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/muralweb.js"></script>
</body>
</html>