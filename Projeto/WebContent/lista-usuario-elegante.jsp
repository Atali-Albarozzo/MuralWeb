<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Lista de usuários elegante</title>
</head>
<body>
	<jsp:useBean id="dao" class="br.com.muralweb.jdbc.DAO.UsuarioDao"/>
	<c:import url="cabecalho.jsp"/>	
	<table>
		<c:forEach var="usuario" items="${dao.lista}" varStatus="id">
			<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
				<td>${usuario.cd_usuario}</td>
				<td>${usuario.tp_usuario}</td>
				<td><fmt:formatDate value="${usuario.dt_inclusao.time}" pattern="dd/MM/yyyy"/></td>
				<td>
					<c:if test="${not empty usuario.nm_email}">
						<a href="mailto:${usuario.nm_email}">${usuario.nm_email}</a>
					</c:if>
					<c:if test="${empty contato.email}">
						E-mail não informado
					</c:if>
				</td>
			</tr>
		</c:forEach>
	</table>
	<c:import url="rodape.jsp"/>	
</body>
</html>
