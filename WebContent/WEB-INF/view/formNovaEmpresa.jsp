
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada" var="LinkEntrada" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:import url="logout-parcial.jsp"></c:import>
	<form action="${LinkEntrada }" method="post">

		Nome: <input type="text" name="nome" /><input type="submit" /> <br />
		Data Abertura: <input type="text" name="data" /><input type="submit" />
		<input type="hidden" name="acao" value="NovaEmpresa">
	</form>

</body>
</html>

