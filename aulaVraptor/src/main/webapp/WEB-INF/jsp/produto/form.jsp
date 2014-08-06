<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="error" items="${errors}">
	    ${error.category} - ${error.message}<br />
	</c:forEach>
	<form action="${linkTo[ProdutoController].adicionar}" method="post">
		<label for="nome">Nome:</label>
		<input name="produto.nome" id="nome" type="text" value="${produto.nome}"/>
	
		<label for="valor">Valor:</label>
		<input name="produto.valor" id="valor" type="text" value="${produto.valor}"/>
		
		<label for="valor">Data Vencimento:</label>
		<input name="produto.dataVencimento" id="dataVencimento" type="text" value="${produto.dataVencimento}"/>
		
		<button type="submit">Salvar</button>
	</form>
</body>
</html>