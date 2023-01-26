<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ page import="Model.TarefaProjetor"%>
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
<script type="text/javascript" src = "ScriptsJS/validaProjetor.js"></script>
</head>

<body>

	<center>
		<img src="./img/logoUERJ.png" height=”50” width=”50”>
		<h3 class="h3">Formulario Correspondente a Solicitação de
			Projetor</h3>
	</center>

	<div class="container">
	<div id="mensagem" class="alert alert-light" role="alert"></div>
		<form name="frmProjetor" method="post" onsubmit= 'return validadorProjetor()' action="tfProfProjetor">
			<h6>Se não houver projetores disponíveis , o mesmo deverá
				aguardar email , ou contato direto do funcionário da logística</h6>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputEmail4">Nome</label> 
					<input type="text" name="nome"
						class="form-control" id="inputEmail4" placeholder="Nome">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Matricula</label> <input type="text"
					name="matricula" class="form-control" id="inputPassword4" placeholder="Matrícula">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Email</label> <input type="text"
						name="email" class="form-control" id="inputPassword4" placeholder="Email">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Telefone</label> <input type="text"
						name="telefone" class="form-control" id="inputPassword4" placeholder="Telefone">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Sala em que utilizará o
						projetor </label> <input type="text" class="form-control"
						name="sala"
						id="inputPassword4" placeholder="Sala">
				</div>

			</div>
			<div style="margin-top: 5px;">
				<input type="submit" class="btn btn-primary" value="Enviar"
					></input> <a href="TelaDeEscolha.jsp"
					class="btn btn-danger">Voltar</a>
			</div>
		</form>
		
	</div>
	</div>
	
</body>
</html>