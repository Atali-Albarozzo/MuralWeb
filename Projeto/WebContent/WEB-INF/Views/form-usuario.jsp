<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title> Usuários </title>
		
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css"> 
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">	
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/form-usuarios.css">
</head>
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
					<a href='#'> </a>
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
						<li class='active'> <a href='#'> Usuários </a></li>
						<li> <a href="novoComunicado"> Comunicados </a></li>
						<li> <a href="novoEvento"> Eventos </a></li>
						<li> <a href="novaOportunidade"> Oportunidades </a></li>
					</ul>
				</div>	
			</div>	
			<div class='span9 search-usuario'>
				<div class='title-div'>
					<span>Usuários</span>
					<!-- <h2 class="title-search"> Cadastro de Usuários </h2> -->
				</div>
				<div class='well'>
					<form method="GET">
						<table class="search-table" cellpadding="5px">
							<thead>
								<tr>
									<th align="left">ID</th>
									<th align="left">Usuário</th>
									<th align="left">Tp. Usuário</th>
									<th align="left"></th>						
								</tr>
							</thead>	
							<tbody>
								<tr>
									<td>
										<input type='text' maxlength='200' id='CdUsuario' name='cd_usuario'/>
									</td>
									<td>
										<input type='text' id='NmUsuario' name='nm_usuario'/>
									</td>
									<td>
										<select name="tp_usuario">
											<option value=""></option>
											<option value="A">Administrador</option>
											<option value="T">Tutor</option> 
										</select>
									</td>
									<td>
										<input class="btn" type="button" value="Pesquisar" style="margin-bottom:10px;">
									</td>
								</tr>
							</tbody>
						</table>
					</form>
					
					<table class="table table-striped user-grid" id="userTable">
						<thead>
							<tr>
								<th>ID</th> 
								<th>Usuário</th>
								<th>Tp. Usuário</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td> 01 </td>	
								<td> Átali </td>	
								<td> U </td>	
							</tr>
							<tr>
								<td> 02 </td>	
								<td> Bovolino </td>	
								<td> U </td>	
							</tr>
							<tr>
								<td> 03 </td>	
								<td> MooMoo </td>	
								<td> U </td>	
							</tr>
							<tr>
								<td> 01 </td>	
								<td> Crow! </td>	
								<td> U </td>	
							</tr>
						</tbody>
					</table>
					<input type="button" class="btn btn-primary" value="Incluir" onclick="userModal();">
				</div>
			</div>
		</div>			
	</div>
	
	<div class="hidden" id="userModal">
		<form method="get">
			<table class="tableUser">
				<tr>
					<td>
						<label> Cd. Usuário </label> <input type="text" name="cd_usuario">
					</td>
					<td>
						<label> Senha </label><input type="password" name="senha">
					</td>
					<td>
						<label> Dt. Inclusão </label><input class="dateMask" type="text" name="dt_inclusao" disabled>
					</td>
				</tr>
				<tr> 	
					<td colspan="2" width="200">
						<label> Nome </label><input type="text" name="nm_usuario">
					</td>
					<td>
						<label> Tipo </label>
						<select name="tp_usuario">
							<option value=""></option>
							<option value="A">Administrador</option>
							<option value="T">Tutor</option> 
						</select>
						<!-- 					<input type="text" name="tp_usuario"> -->
					</td>
				</tr>
				<tr>
					<td>
						<label> Dt. Nascimento </label><input type="date" name="dt_nascimento">
					</td>
					<td colspan="2">
						<label> E-mail </label><input type="text" name="nm_email">
					</td>	
				</tr>	
				<tr>
					<td>
						<label> Telefone </label><input type="text"  name="nm_telefone" class="phoneMask">
					</td>
					<td>
						<label> Celular </label><input type="text" name="nm_celular" class="celMask" onchange="CelMask(this);">
					</td>
				</tr>
				<tr>	
					<td colspan="3">
						<label> Comentários </label><textarea name="nm_comentario"></textarea>
					</td>
				</tr>		
				<tr>
					<td>
						<input class="btn" type="submit" id="salvar" value="Salvar">
					</td>
				</tr>
			</table>
		</form>
		
<!-- 		<div class="modal-header"> -->
<!--     		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> -->
<!--     		<h3>Cabeçalho do modal</h3> -->
<!--   		</div> -->
<!--   		<div class="modal-body"> -->
<!--     		<p>Um corpo fino </p> -->
<!--   		</div> -->
<!--   		<div class="modal-footer"> -->
<!--     		<a href="#" class="btn">Fechar</a> -->
<!--     		<a href="#" class="btn btn-primary">Salvar mudanças</a> -->
<!--   		</div> -->
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
