<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Dancing Script">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	<title>YoganismoInc</title>
</head>
<body>
	<!-------Header--------->
	<header>
        <div class="div_header_structure">
            <div class="div_img">
            	<img class="img" src="${pageContext.request.contextPath}/img/LogoYY.png" alt="">
            </div>
            <div class="div_text text-center">
                <a>Asana Léxico</a>
            </div>
        </div>
    </header>

	<!-------Section--------->
	<section class="container">
	<div class="container">
		<div class="card-body mt-4 text-center">
			<p><a href="./index.html" class="btn btn-outline-success">Ir 
			al Inicio</a></p>
		</div>
		<div class="row pb-4">
			<div class="col"></div>
			<div class="col mb-5 text-center">
				<div class="card mb-3" style="width: 100%;">
					<img src="<c:out value="./${rutaImagen}.jpg" />" class="card-img-top" alt="...">
					<div class="card-body card-header">
						<h5 class="card-title">ASANA</h5>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item"><c:out value="Sánscrito: ${sancrito}" /></li>
						<li class="list-group-item"><c:out value="Inglés: ${ingles}" /></li>
						<li class="list-group-item"><c:out value="Español: ${español}" /></li>	
						<li class="list-group-item card-header"> <h6>Morfemas Usados</h6> </li>
						<c:forEach var="morfema" items="${morfemas}">
							<li class="list-group-item"><c:out value="Sánscrito: ${morfema.nombreMorfema}" /></li>
							<c:out value="Español:"/>
							<c:out value="${morfema.traduccionEsp}"/>. Ingles:
							<c:out value="${morfema.traduccionIngles}"/>
							<br>
						</c:forEach>	
					</ul>
				</div>
			</div>
			<div class="col"></div>
		</div>
	</div>
	</section>
	
	<!-------Footer--------->
	<footer class="footer">
        <div>
            <a>
               © 2023 SoftwareBoys. Todos los derechos reservados.
            </a>
        </div>
    </footer>

</body>
</html>