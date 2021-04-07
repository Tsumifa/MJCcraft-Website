<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="<c:url value="res/css/world.css"/>">

		<!--Bootstraps CSS link-->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

		
	</head>
	
	<body>
		<c:import url="/WEB-INF/inc/header.jsp"/>

			
			<div id="content">
				
				<!-- mettre le nom du monde ici -->
				<h1>Monde</h1>
				<nav id="worldOptions">
					<div class="btn-group" role="group" aria-label="Basic radio toggle button group">
					  	<input type="radio" class="btn-check" name="btnradio" id="descriptionButton" autocomplete="off" checked>
					  	<label class="btn btn-outline-success" for="descriptionButton">Description</label>
					
					  	<input type="radio" class="btn-check" name="btnradio" id="commandButton" autocomplete="off">
					  	<label class="btn btn-outline-success" for="commandButton">Commandes</label>
					</div>
				</nav>
				
				<!-- il faut importer le bon fichier en fonction de l'onglet actif -->
				<c:import url="/WEB-INF/inc/worldCommands.jsp"/>
				
			</div>


		<c:import url="/WEB-INF/inc/footer.jsp"/>
		
		<!--Bootstrap links-->
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
	</body>
</html>