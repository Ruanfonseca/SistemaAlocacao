<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tela de Escolha</title>
<link rel="icon" href="./img/recurso.png">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>
.escolha {
	/*Centralizando o form*/
	position: absolute;
	top: 50%;
	left: 33%;
	right: 33%;
}
</style>
</head>

<body>
<div class="container-xxl">
	<center>
		<img src="./img/logoUERJ.png" height=”200” width=”200”>
	    <h1 class="h1">Seja Bem vindo(a)!</h1>
	</center>
	
	<div class="escolha">
		<center height=”200” width=”200”>
			
			<div class="btn-group-vertical">
				<a href="TelaTipoReq.jsp" class="btn btn-primary
	        btn-lg btn-block">Abrir
					Requerimento</a> 
					<a href="TelaConsultaReq.jsp"
					class="btn btn-primary
	                    btn-lg btn-block">Consultar
					Requerimento</a> 
					<a href="TelaLogin.jsp"
					class="btn btn-primary
	                 btn-lg btn-block">Funcionário</a>
	                 <a href="https://www.uerj.br/"
					class="btn btn-primary
	                 btn-lg btn-block" target="_blanck">Portal Uerj</a>
			</div>
		</center>
	</div>
	</div>
</body>
</html>