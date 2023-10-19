<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>
<!doctype html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="style/sidebars.css" rel="stylesheet">
<link href="style/card.css" rel="stylesheet">

<link rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css"
	rel="stylesheet">
<title>Catalago de galaxias</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>

<body>
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
 
 	 <section class="bg-light">
				<div class="container">
					<div class="row justify-content-center">
                      <c:forEach items="${galaxi}" var="resultado">
						<article
							class="card borda-card imagem-card p-0 m-4 col-12 col-md-4">
							<img src="${resultado.img}"/>
							<div class="card-body">
						     <h5 class="card-title">${resultado.nome}</h5>
						       <li class="list-group-item">Idade : ${resultado.ano}</li>
							   <li class="list-group-item">Magnitude Aparente (V) : ${resultado.magnitude}</li>
							   <li class="list-group-item">Quatidade de estrlas :  ${resultado.qtproxima}</li>
							   <li class="list-group-item">Estrutura fisica :  ${resultado.tipo}</li> 
								<p class="card-text">${resultado.descricao}</p>
 							</div>
						</article>
                     </c:forEach>
					</div>
				</div>
		</section>
		     
</body>