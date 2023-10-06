<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>
<!doctype html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="style/sidebars.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css"
	rel="stylesheet">
<title>Listagem de galaxias</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>

<body>
		<!-- ######################Sidebars -->
<body>
	<main class="d-flex flex-nowrap">
		<h1 class="visually-hidden">Sidebars examples</h1>

		<div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark"
			style="width: 280px;">
			<a href="index.html"
				class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
				<svg class="bi pe-none me-2" width="40" height="32">
            <use xlink:href="#bootstrap" />
            </svg> 
            <img class="img-logo" src="https://cdn.pixabay.com/animation/2023/04/27/05/49/05-49-58-802_512.gif">
 			</a>
            <p><span class="fs-1">Mapeador de Galaxias</span></p>
			<hr>
			<ul class="nav nav-pills flex-column mb-auto">
			
			<li>
		 	    <a href="index.html" class="nav-link text-white"> 
		 	    <use xlink:href="#speedometer2" /> 
				   <i class="bi bi-house"></i>
				</svg> inicio </a>
			</li>
		 
				<li><a href="salvarGalaxias.html" class="nav-link text-white"> <use
							xlink:href="#speedometer2" /> <i class="bi bi-save"></i> </svg> Salvar
						galaxias
				</a></li>
				
				<li><a href="listCatalog" class="nav-link text-white"> 
				  <use xlink:href="#speedometer2" /><i class="bi bi-tropical-storm"></i> 
				  </svg>Galaxias catalogadas</a>
				</li>

				<li><a href="GalaxyCreate" class="nav-link text-white"> <use
							xlink:href="#speedometer2" /> <i class="bi bi-list-check"></i> </svg>
						Listar galaxias
				</a></li>
		</div>

		<!-- ######################fim Sidebars -->

		<br> <br> <br> <br> <br> <br> <br>


 		<div class="container">
			<div class="row mt-4">
				<div
					class="col-lg-12 d-flex justify-content-between align-items-center">
					<div class="card" style="width: 51rem;">
						<div class="card-body">
							<div>
								<h7 class="text-primary"> Lista de galáxias bem conhecidas
								por: um conjunto de coordenadas, ou uma melhor, designação
								sistemática de obtenção e identificação de suas estruturas
								físicas e matemáticas. </h7>
							</div>
						</div>
					</div>
					<a href="index.html" class="btn btn-primary btn-lg active"
						role="button" href="index.html" aria-pressed="true">Registrar galaxia</a>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-lg-12">
					<div id="showAlert"></div>
				</div>
			</div>
			<!-- Inclusão de listagem  -->
 

			<div class="row">
				<div class="col-lg-14">
					<div class="table-responsive">
						<table
							class="table-responsive-xl table table-sm table-bordered text-center">
							<thead>
								<tr>
 									<th>Nome</th>
									<th>Constelações</th>
									<th>tipo</th>
									<th>Distancia da terra</th>
									<th>Ano de descoberta</th>
									<th>magnitude</th>
									<th>Estrelas a proximadas</th>
									<th>Ações</th>
								</tr>
							</thead>
						</tbody>


								<c:forEach items="${galaxi}" var="resultado">
									<tr>
 										<td>${resultado.nome}</td>
										<td>${resultado.constelacao}</td>
										<td>${resultado.tipo}</td>
										<td>${resultado.distancia}</td>
										<td>${resultado.ano}</td>
										<td>${resultado.magnitude}</td>
										<td>${resultado.qtproxima}</td>
										<td>
										<a class="btn btn-warning" href="galaxyUpdate?id=${resultado.id}" role="button">Editar</a>
										 <a class="btn btn-danger" href="galaxyDel?id=${resultado.id}" role="button">Excluir</a>
										</td>
									</tr>
								</c:forEach>
							</thead>
							
 
												 
						</table>
					</div>
				</div>
			</div>
		</div>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
			crossorigin="anonymous">
			
		</script>
</body>


</html>