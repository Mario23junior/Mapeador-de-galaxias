 <%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>
<!doctype html>
 <head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="style/sidebars.css" rel="stylesheet">
<link rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css" rel="stylesheet">
<title>Atualização de galaxias</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
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
          </svg> <span class="fs-4">Mapeador de Galaxias</span>
			</a>
			<hr>
			<ul class="nav nav-pills flex-column mb-auto">
				<li class="nav-item"><a href="index.html"
					class="nav-link active" aria-current="page"> <svg
							class="bi pe-none me-2" width="3" height="16">
                <use xlink:href="#home" />
                <i class="bi bi-house"></i>
               </svg> Inicio
				</a></li>

				<li><a href="index.html" class="nav-link text-white"> <use
							xlink:href="#speedometer2" /> <i class="bi bi-save"></i> </svg> Salvar
						galaxias
				</a></li>
				
					<li><a href="catalagoGalaxy.jsp" class="nav-link text-white"> 
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

 

		<div class="col-md-7 offset-md-1">
			<br> <br>
			<h4 class="">Atualização de galaxias</h4>
			<form class="needs-validation" action=galaxyUpdate method="POST">

				<div class="row g-9">
					<div class="col-sm-10">
 					<input class="form-control"	value="${galaxy.id}" name="id" style="visibility:hidden" type="number"/>
 					</div>
 					
					
 					<div class="col-sm-6">
						<label for="firstName" class="form-label"> Nome</label> <input
							value="${galaxy.nome}" name="nome" type="text" class="form-control"
							id="firstName" required>
						<div class="invalid-feedback"></div>
					</div>
					

					<div class="col-sm-6">
						<label for="lastName" class="form-label">Tipo</label> <input
							type="text"value="${galaxy.tipo}" name="tipo" class="form-control" id="lastName"
							placeholder="" required>
						<div class="invalid-feedback"></div>
					</div>

					<div class="col-12">
						<label for="username" class="form-label">Ano</label>
						<div class="input-group has-validation">
							<input type="text"value="${galaxy.ano}" name="ano" class="form-control" value=""
								id="username" required>
						</div>
					</div>

					<div class="col-12">
						<label for="username" class="form-label">Maguinitude</label>
						<div class="input-group has-validation">
							<input type="text" value="${galaxy.magnitude}" name="magnitude" class="form-control" value=""
								id="username" required>
						</div>
					</div>


					<div class="col-12">
						<label for="address" class="form-label">Quantidade de
							estrelas</label> 
							<input type="text"  value="${galaxy.qtproxima}"  name="qtproxima" value=""
							class="form-control" id="address" required>
					</div>

					<div class="col-12">
						<label for="address2" class="form-label">Distancia em anos
							luz <span class="text-body-secondary"></span> 
							<input type="text"name="distancia" value="${galaxy.distancia}" class="form-control" value="" id="address2">
						</label>
					</div>

					<div class="col-12">
						<label for="address2" class="form-label">Constelação<span
							class="text-body-secondary"></span></label> 
							<input type="text" name="constelacao" value="${galaxy.constelacao}"  class="form-control" value="">
					</div>

					<div class="col-12">
						<label for="address2" class="form-label">URL da imagem<span
							class="text-body-secondary"></span></label> 
							<input type="text"value="${galaxy.img}" name ="img"   class="form-control" value="">
					</div>
					
						<div class="col-12">
						<label for="address2" class="form-label">Descrição da galaxia<span
							class="text-body-secondary"></span></label> 
							<input type="text"value="${galaxy.descricao}" name ="descricao"   class="form-control" value="">
					</div>
					

					<br> <br> <br> <br>
				</div>
				<hr class="my-12">
				<button class="w-100 btn btn-primary btn-lg" type="submit">Atualizar</button>
			</form>
			</br> </br> </br> </br> </br> </br> </br> </br>
		</div>
