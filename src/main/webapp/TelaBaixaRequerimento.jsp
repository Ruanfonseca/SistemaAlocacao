<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="./img/recurso.png">
<title>Baixa de Requerimento</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- Estilos customizados para esse template -->
<link href="offcanvas.css" rel="stylesheet">
</head>
<body>
	<div class="modal-body">

		<div class="input-group mb-3">
			<input type="text" class="form-control" placeholder="Nome do Usuario"
				aria-label="Nome do Usuario" aria-describedby="basic-addon2"
				id="nomeBusca">
			<div class="input-group-append">
				<button class="btn btn-success" type="button"">Pesquisar</button>
			</div>
		</div>

		<div style="height: 300px; overflow: scroll;">
			<table class="table table-striped table-dark" id="tabelaresultados">
				<thead>
					<tr>
						<th scope="col">ID</th>
						<th scope="col">Nome</th>
						<th scope="col">Ver</th>

					</tr>
				</thead>
				<tbody>


				</tbody>
			</table>

		</div>
</body>
</html>