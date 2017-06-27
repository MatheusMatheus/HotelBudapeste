<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Estabelecimento</title>
</head>
<body>
	<h1>Cadastro de Estabelecimento</h1>
	<form action = "mvc" method = "post">
		<br>Nome da cidade
		<br><input type = "text" name = "cidade"/>
		<br><br>Data inicial
		<br><input type = "date" name = "dataInicial"/>
		<br><br>Data final
		<br><input type = "date" name = "dataFinal"/>
		<br><input type = "number" name = "qtdPessoas"/>
		<input type = "hidden" name = "ProcuraHotel"/>
		<br><br><input type = "submit" value = "Pesquisar"/>	
	</form>
</body>
</html>