<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Tela de login</title>
<script type="text/javascript" src = "ScriptsJS/validaLogin.js"></script>
<style>
form {
	/*Centralizando o form*/
	position: absolute;
	top: 50%;
	left: 33%;
	right: 33%;
}

h1 {
	position: absolute;
	top: 40%;
	left: 24%;
}
</style>

<link rel="icon" href="./img/recurso.png">
</head>
<body>


	<div class="container-xxl">
		<center>
			<img src="./img/logoUERJ.png" height=”200” width=”200”>
		</center>



		<h1 class="h1">Sistema de Alocação de Serviços Uerj/ZO</h1>

         <div id="mensagem" class="alert alert-light" role="alert"></div>
		<form method="post" name="frmLogin" id ="frmLogin" class="row g-3 needs-validation"
		    onsubmit='return validadorLogin()'  action = "LoginFunc">
		

			<div class="mb-1">
				<label class="form-label" for="Login">Matrícula</label> <input
					class="form-control"  name="matricula" type="text" >
			</div>
			<div class="mb-1">
				<label class="form-label" >Cpf</label> <input
					class="form-control" type="password"  name="cpf">
			</div>

			<input type="submit" value="Acessar"
			class="btn btn-primary">
			<a href="TelaDeEscolha.jsp" class="btn btn-primary btn-danger">Voltar</a>
		</form>

		<!-- Option 1: Bootstrap Bundle with Popper -->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
			crossorigin="anonymous"></script>
	</div>
</body>
</html>