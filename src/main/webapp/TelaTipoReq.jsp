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
<title>Aloca Uerj/ZO</title>
<script type="text/javascript" src = "ScriptsJS/auxiliar.js"></script>
</head>
<body>
	<div class="container-xxl">
		<center>
			<img src="./img/logoUERJ.png" height=”200” width=”200”>
			<h1 class="h1">Escolha o tipo de Requerimento abaixo</h1>
		</center>


		<div class="escolha">
			<center height=”200” width=”200”>


				<div class="btn-group-vertical">
					<a href="TelaFormAcessoWIFI.jsp"
						class="btn btn-primary
	                        btn-lg btn-block">Acesso
						a Rede Wireless</a> <a href="TelaValidaProf.jsp"
						class="btn btn-primary
	                    btn-lg btn-block "><input
						type="hidden" value="" action="/Controller" id="um">Projetor</a>

					<a href="TelaValidaProf.jsp"
						class="btn btn-primary
	                   btn-lg btn-block">
	                   Sala
						</a> 
						
						
						<a href="TelaDeEscolha.jsp"
						class="btn btn-primary
	        btn-lg btn-block btn btn-danger"
						style="color: #fff">Voltar</a>
				</div>
			</center>
		</div>
	</div>

</body>
</html>