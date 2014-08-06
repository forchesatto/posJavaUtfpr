<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Código</th>
				<th>Nome</th>
				<th>Valor</th>
				<th>Data</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${produtoList}" var="produto">
				<tr>
					<td>
						<a href="${linkTo[ProdutoController].visualizar(produto)}">
					 		${produto.codigo}</a>
					</td>
					<td>${produto.nome}</td>
					<td>${produto.valor}</td>
					<td>${produto.dataVencimento}</td>
				</tr>				
			</c:forEach>
		</tbody>
	</table>
</body>
</html>