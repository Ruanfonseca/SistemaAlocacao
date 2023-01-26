<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="icon" href="./img/recurso.png">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<title>Formulário</title>
</head>

<body>

	<center>
		<img src="./img/logoUERJ.png" height=”50” width=”50”>
		<h3 class="h3">Formulario Correspondente a Solicitação de Sala</h3>
	</center>
	<div class="container">
		<form name="frmSala" id = "formSala" method = "post" action="tfProfSala">
			<h6>Se não houver salas disponíveis , o mesmo deverá
				aguardar email , ou contato direto do funcionário da logística<br>
				Exemplo de período .: 13:00/17:00 </h6>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputEmail4">Nome</label> <input type="text"
					name="nome"	 class="form-control" id="inputEmail4" placeholder="Nome">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Matricula</label> <input type="text"
						name="matricula"
						class="form-control" id="inputPassword4" placeholder="Matrícula">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Email</label> <input type="text"
						name="email"
						class="form-control" id="inputPassword4" placeholder="Email">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Telefone</label> <input type="text"
						name="telefone"
						class="form-control" id="inputPassword4" placeholder="Telefone">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Período de tempo que dará Aula
					 </label> <input type="text" class="form-control"
						id="inputPassword4" name="periodo" placeholder="Período">
				</div>

			</div>
			<div style="margin-top: 5px;">
				<input type="submit" class="btn btn-primary" value="Enviar" onclick = "validadorSala()"></input>
				<a href="TelaDeEscolha.jsp" class="btn btn-danger">Voltar</a>
			</div>
		</form>
	</div>
</body>
</html>