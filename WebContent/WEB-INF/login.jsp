<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF8">
        <link type="text/css" rel="stylesheet" href="<c:url value="res/css/global.css"/>">
        <link type="text/css" rel="stylesheet" href="<c:url value="res/css/login.css"/>">
        <link rel="icon" type="image/png" href="<c:url value="res/img/MJCcraft_logo.png"/>" />
        <link type="text/css" rel="stylesheet" href="<c:url value="res/css/form.css"/>">
        <title>Wiki Mjc Craft - Connexion</title>
    </head>
    <body>
    	<c:import url="/WEB-INF/inc/header.jsp"/>
        <section id="mainContainer">
            <form method="post" action="<c:url value="/login"/>">
                <input id="username" type="text" name="username" placeholder="Username" value="<c:out value="${utilisateur.pseudo}" />" required>
                <input id="password" type="password" name="password" placeholder="Password" required>
                <input class="button" type="submit" value="Login">
                <p>Vous avez oublié vos identifiants ? Contacter un administrateur sur discord.</p>
            </form>
            <c:if test="${!empty form.errors}">
            	<!-- TODO : Centrer le cadre en dessous du login -->
            	<article>Identifiant ou mot de passe incorrect.</article>
            </c:if>
        </section>
    </body>
</html>