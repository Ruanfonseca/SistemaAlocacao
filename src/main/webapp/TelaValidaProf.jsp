<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./img/recurso.png">
<meta charset="utf-8">
<title>Validação</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
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
<script type="text/javascript" src = "ScriptsJS/validaProf.js"></script>

</head>
<body>
	<div class="container-xxl">
		<center>
			<img src="./img/logoUERJ.png" height=”200” width=”200”>
		</center>

		<h1 class="h1">Sistema de Alocação de Serviços Uerj/ZO</h1>

		<form method="Post"  name="frmValidaProf" id ="frmValidaProf" action = "ValidaProf"
		 class="row g-3 needs-validation" novalidate >
			<div class="mb-1">
				<label class="form-label" for="Login">Matrícula</label> <input
					class="form-control" type="text" name="matricula">
			</div>
			<input type="submit" value="Acessar" onclick = "validador()" class="btn btn-primary">
			<a href="TelaTipoReq.jsp" class="btn btn-primary btn-danger">Voltar</a>


		</form>

		<!-- Option 1: Bootstrap Bundle with Popper -->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
			crossorigin="anonymous"></script>
	</div>


</body>
</html>