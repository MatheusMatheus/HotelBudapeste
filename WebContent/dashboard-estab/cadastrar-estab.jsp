<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="../js/jquery.js"></script>
<title>Cadastro de Estabelecimento</title>
</head>
<body>
	<h1>Cadastro de Estabelecimento</h1>
	<form action="mvc" method="post">
		<br>CNPJ
		<br> <input type="text" name="cnpj" /> 
		<br> <br>Telefone
		<br> <input type="date" name="telefone" /> 
		<br> <br>Data final 
		<br> <input type="date" name="dataFinal" /> 
		<br> <br>Quantidade	de pessoas 
		<br> <input type="number" name="qtdPessoas" /> 
		<input type="hidden" name="ProcuraHotel" /> 
		
		<br> <br>

		<jsp:useBean id="dao" class="br.com.modelo.dao.EstabelecimentoDAO"></jsp:useBean>
		
		<select name="cidade" id = "selecao" onclick= "buscaEstabelecimentos()">
			<c:forEach var="estabelecimento" items="${dao.estabVagos}">
				<option>${estabelecimento.nome }</option>
			</c:forEach>

		</select>
		 <input type="submit" value="Pesquisar" />
	</form>
</body>

<script type="text/javascript">
	$(document).ready(function() {
		$("#selecao").click(function() {
			$.ajax ({
				type: "GET",
				data: {},
				url: "/CadastroEstabController",
				success: function(result) {

				}
			});
		});
	});
</script>
</html>