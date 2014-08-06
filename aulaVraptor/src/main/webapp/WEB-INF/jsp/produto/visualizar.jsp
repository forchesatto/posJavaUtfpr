<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${linkTo[ProdutoController].alterar(produto)}" method="post">
		<label for="nome">Nome:</label>
		<input name="produto.nome" id="nome" type="text" 
						value="${produto.nome}"/>
	
		<label for="valor">Valor:</label>
		<input name="produto.valor" id="valor" type="text"
					value="${produto.valor}"/>
		
		<button type="submit" name="_method" value="PUT">Salvar</button>
		<button type="submit" name="_method" value="DELETE">Remover</button>
	</form>
</body>
</html>