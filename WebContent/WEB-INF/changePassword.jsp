<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF8">
		<link type="text/css" rel="stylesheet" href="<c:url value="/res/css/global.css"/>">
		<link type="text/css" rel="stylesheet" href="<c:url value="/res/css/form.css"/>">
		<link rel="icon" type="image/png" href="<c:url value="/res/img/MJCcraft_logo.png"/>" />
		<title>Wiki MjcCraft - Changement du mot de passe</title>
	</head>
	<body>
		<section id="mainContainer">
			<form method="post">
				<p>
					Bonjour <strong><c:out value="${empty user.name ? user.pseudo : user.name}" /></strong>!
					Remplissez les champs suivants pour changer de mot de passe :
				</p>
	
				<input type="password" name="password" placeholder="Mot de passe" required>
				<span class="formError">${form.errors['password']}</span>
				<input type="password" name="newpassword" placeholder="Nouveau mot de passe" required>
				<span class="formError">${form.errors['newpassword']}</span>
				<input type="password" name="confirmation" placeholder="Confimation" required>
				<span class="formError">${form.errors['confirmation']}</span>
	
				<input class="button" type="submit" value="Valider">
				
				<p>Vous rencontrez des problèmes ? Contactez un administrateur sur discord.</p>
			</form>
		</section>
	</body>
</html>