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
<script type="text/javascript" src="ScriptsJS/validaAluno.js"></script>
</head>

<body>

	<center>
		<img src="./img/logoUERJ.png" height=”50” width=”50”>
		<h3 class="h3">Formulario Correspondente ao Acesso ao WIFI</h3>
	</center>


	<div class="container">
       <div id="mensagem" class="alert alert-light" role="alert"></div>	
		<form name="frmAluno" id="formAluno" method="post"
			onsubmit='return validadorAluno()'action="tfAlunoServ">
			<h6>OBS.: Escolha uma senha na qual você tenha facilidade de se
				lembrar , pois caso você finalize a solicitação, e esqueça , será
				necessário realizar um novo requerimento. Não utilize caracteres
				especiais, tais como (@,#,$,%,& e etc). Utilize números e letras
				somente.</h6>
			<div class="form-row">
				<input type="hidden" name="acao" id="acao" value="">
				<div class="form-group col-md-6">
					<label>Nome</label> <input type="text" name="nome"
						class="form-control" id="nome" placeholder="Nome">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Matricula</label> <input type="text"
						name="matricula" class="form-control" id="inputPassword4"
						placeholder="Matrícula">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Cpf</label> <input type="text"
						name="cpf" class="form-control" id="inputPassword4"
						placeholder="Cpf">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Email</label> <input type="text"
						name="email" class="form-control" id="inputPassword4"
						placeholder="Matrícula">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Telefone</label> <input type="text"
						name="telefone" class="form-control" id="inputPassword4"
						placeholder="Telefone">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">Senha</label> <input type="text"
						name="senha" class="form-control" id="inputPassword4"
						placeholder="Senha">
				</div>

			</div>
			<div style="margin-top: 5px;">
				<input type="submit" class="btn btn-primary" value="Enviar"
					></input> <a href="TelaDeEscolha.jsp"
					class="btn btn-danger">Voltar</a>
			</div>
		</form>
	</div>
</body>
</html>