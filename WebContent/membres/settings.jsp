<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Paramètres</title>
	</head>
	<body>
		<p>User panel soon™</p>
		<br/>
		
		<h2>Informations générales :</h2>
		<p>Id : ${sessionScope["sessionUser"].id}</p>
		<p>Pseudo : ${sessionScope["sessionUser"].pseudo}</p>
		<p>Prénom : ${sessionScope["sessionUser"].name}</p>
		<p>Id discord : ${sessionScope["sessionUser"].discord_id}</p>
		<p>Mail : ${sessionScope["sessionUser"].mail}</p>
		<p>Date d'inscription : ${sessionScope["sessionUser"].register_date}</p>
		<p>Image de profil : ${sessionScope["sessionUser"].profile_picture}</p>
		<p>Admin : ${sessionScope["sessionUser"].admin}</p>
		<br />
		
		<h2>Liens :</h2>
		<form method="get" action="<c:url value="/changepass"/>">
			<input type="submit" value="Changer le mdp"/>
		</form>
		<form method="get" action="<c:url value="/membres/profil"/>">
			<input type="submit" value="Accéder au profil"/>
		</form>
		
		<c:if test="${ sessionScope['sessionUser'].admin == true}">
			<%-- L'utilisateur est un admin --%>
			<form method="get" action="<c:url value="/admin/panel"/>">
				<input type="submit" value="Panel admin"/>
			</form>
		</c:if>
		
		<h2>Statistique :</h2>
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>Nom</th>
					<th>Description</th>
					<th>Valeur</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${not empty sessionScope['sessionUser'].stats}">
				<c:forEach var="s" varStatus="i" items="${sessionScope['sessionUser'].stats}">
					<tr class="${i.index % 2 == 0 ? 'pair' : 'impair' }">
						<td>${s.value.id}</td>
						<td>${s.value.name}</td>
						<td>${s.value.description}</td>
						<td>${s.value.value}</td>
					</tr>
				</c:forEach>
				</c:if>
			</tbody>
		</table>
		
	</body>
	<style>
		thead {
			background-color:#8a8a8a;
			border: 1px solid black;
			text-align: center;
		}
		
		td {
			padding: 10px;
		}
		
		.pair {
			background-color: #9ee7ff;
		}
		
		.impair {
			background-color: #edfbff;
		}
	
	</style>
</html>