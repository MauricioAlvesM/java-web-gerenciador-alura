<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Usuario"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/entrada?acao=RemoveEmpresas" var="LinkRemoveEmpresa" />

<!DOCTYPE html>
<html>

<body>

	<c:import url="logout-parcial.jsp"></c:import>
	
	Usuario Logado: ${usuarioLogado.login}
	<br>
	<c:if test="${not empty empresa }">
		Empresa ${ empresa } cadastrada com sucesso!
	</c:if>


	<hr />
	<br />
	<h2>Lista de empresas:</h2>
	<br />

	<ul>
		<c:forEach items="${empresas}" var="empresa">

			<li><h3>${empresa.nome}
					-
					<fmt:formatDate value="${empresa.dataAbertura}"
						pattern="dd/MM/yyyy" />
					<a href="${LinkRemoveEmpresa}&id=${empresa.id}">
						<button>Remove</button>
					</a> <a
						href="/gerenciador1/entrada?acao=MostraEmpresas&id=${empresa.id }">
						<button>Edita</button>
					</a>
				</h3></li>

		</c:forEach>
	</ul>
</body>
</html>