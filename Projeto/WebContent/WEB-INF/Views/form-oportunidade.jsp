<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Oportunidade</title>
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css"> 
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">	
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/form-oportunidade.css">
</head>
<body>
	<!-- MENU -->
	<div class='navbar navbar-inverse'> 
		<div class='navbar-inner'>
			<a class="brand logout" href="#"> <b>Logout</b> </a>
			<a class="brand welcome-text"> Bem vindo(a), Maria Ang�lica </a>
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
						<li> <a href='novoUsuario'> Usu�rios </a></li>
						<li> <a href="novoComunicado"> Comunicados </a></li>
						<li> <a href="novoEvento"> Eventos </a></li>
						<li class="active"> <a href="novaOportunidade"> Oportunidades </a></li>
					</ul>
				</div>	
			</div>
		<div class='span9 search-opportunity'>
				<div class='title-div'>
					<span>Oportunidades</span>
					<!-- <h2 class="title-search"> Cadastro de Usu�rios </h2> -->
				</div>
				<div class='well'>
					<!-- SEARCH -->
					<table class="search-table" cellpadding="5px">
						<thead>
							<tr>
								<th align="left">Oportunidade</th>
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
										<option value="1" style="overflow: nowrap;">An�lise de Sistemas</option>
										<option value="2">Fabrica��o Mec�nica</option> 
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
					<table class="table table-striped opportunity-grid" id="opportunityTable">
						<thead>
							<tr>
								<th>
									T�tulo	
								</th>
								<th>
									Descri��o
								</th>
								<th>
									Empresa
								</th>
								<th>
									Cargo
								</th>
								<th>
									Sal�rio
								</th>
								<th>
									Curso
								</th>
								<th>
									Obs.
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									Oportunidade Est�gio GFT
								</td>
								<td>
									Vaga de est�gio em uma empresa multi-nacional do ramo de TI com grande reconhecimento em Sorocaba.
								</td>
								<td>
									GFT
								</td>
								<td>
									Estagi�rio
								</td>
								<td>
									A Definir
								</td>
								<td>
									An�lise de Sistemas
								</td>
								<td>
									A GFT est� dando a oportunidade para os alunos participarem do programa STARTER 2014. A empresa selecionar� 20 estagi�rios para realizarem treinamentos e participa��es em pequenos projetos internos. 
								</td>
							</tr>
						</tbody>
					</table>
					<input type="button" class="btn btn-primary" value="Incluir" onclick="opportunityModal();">
				</div>
			</div>		
		</div>	
	</div>
	
	<div class="hidden" id="opportunityModal">
		<table class="tableOpportunity">
			<tr>
				<td colspan="2">
					<label> T�tulo </label><input type="text" name="nm_titulo">
				</td>
				<td>
					<label> Dt. Postagem </label><input type="text" class="dateMask" name="dt_postagem" disabled>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<label> Descri��o </label><input type="text" maxlength="200" name="nm_descricao">
				</td>
			</tr>
			<tr> 	
				<td colspan="2">
					<label> Empresa </label><input type="text" name="nm_empresa">
				</td>
				<td>
					<label> Curso </label>
					<select name="cd_seq_curso">
						<option value="" ></option>
						<option value="1" style="overflow: nowrap;">An�lise de Sistemas</option>
						<option value="2">Fabrica��o Mec�nica</option> 
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<label> Cargo </label>
					<input type="text" name="vl_salario"/>
				</td>
				<td>
					<label> Sal�rio </label>
					<input type="text" class="valueMask" name="nm_cargo"/> 
				</td>				
			</tr>
			<tr>	
				<td colspan="3">
					<label> Observa��es </label><textarea  name="nm_observacao" ></textarea>
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
