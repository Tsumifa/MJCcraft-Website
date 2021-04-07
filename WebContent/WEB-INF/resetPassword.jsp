<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF8">
        <link type="text/css" rel="stylesheet" href="<c:url value="/res/css/global.css"/>">
        <link type="text/css" rel="stylesheet" href="<c:url value="/res/css/login.css"/>">
        <link type="text/css" rel="stylesheet" href="<c:url value="/res/css/form.css"/>">
        <link rel="icon" type="image/png" href="<c:url value="/res/img/MJCcraft_logo.png"/>" />
        <title>Wiki MjcCraft - Réinitialisation du mot de passe</title>
    </head>
    <body>
    	<c:choose>
    		<c:when test="${ token_valid }">
    			<section id="mainContainer">
		            <form method="post">
		                <p>Bonjour <strong><c:out value="${empty user.name ? user.pseudo : user.name}"/></strong>!
		                Remplissez les champs suivants pour changer de mot de passe :</p>
		                
		                <input id="username" type="password" name="password" placeholder="Nouveau mot de passe" required>
		                <span class="formError">${form.errors['password']}</span>
		                
		                <input id="password" type="password" name="confirmation" placeholder="Confimation" required>
		                <span class="formError">${form.errors['confirmation']}</span>
		                
		                <input id="loginbtn" type="submit" value="Valider">
		                <p>Vous rencontrez des problèmes ? Contacter un administrateur sur discord.</p>
		            </form>
		        </section>
    		</c:when>
    		<c:otherwise>
    			<!-- Cadre d'erreur quand pas le bon token -->
    			<section id="mainContainer">
    				<p>Token Invalide.</p>
    				<p>Veuillez contacter un administrateur pour en obtenir un nouveau.</p>
    				<p><a href="<c:url value="/login"/>">Retourner à l'acceuil</a></p>
    			</section>
    		</c:otherwise>
    	</c:choose>
    </body>
</html>