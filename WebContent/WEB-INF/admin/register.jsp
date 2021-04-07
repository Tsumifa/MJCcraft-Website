<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Inscription</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="/res/css/global.css"/>">
        <link type="text/css" rel="stylesheet" href="<c:url value="/res/css/form.css"/>" />
    </head>
    <body>
    	<c:import url="/WEB-INF/inc/header.jsp"/>
        <form method="post" action="register">
            <fieldset>
                <legend>Inscription</legend>
                <p>Créer un utilisateur :</p>

                <label for="pseudo">Pseudo <span class="requis">*</span></label>
                <input type="text" id="pseudo" name="pseudo" value="<c:out value="${utilisateur.pseudo}"/>" size="25" maxlength="25" />
                <span class="erreur">${form.errors['pseudo']}</span>
                <br />

                <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
                <input type="password" id="motdepasse" name="motdepasse" value="" size="25" maxlength="25" />
                <span class="erreur">${form.errors['motdepasse']}</span>
                <br />

                <label for="confirmation">Confirmation du mot de passe <span class="requis">*</span></label>
                <input type="password" id="confirmation" name="confirmation" value="" size="25" maxlength="25" />
                <span class="erreur">${form.errors['confirmation']}</span>
                <br />

                <label for="nom">Nom d'utilisateur </label>
                <input type="text" id="nom" name="nom" value="<c:out value="${utilisateur.name}"/>" size="20" maxlength="20" />
                <span class="erreur">${form.errors['nom']}</span>
                <br />
                
                <label for="email">Email </label>
                <input type="email" id="email" name="email" value="<c:out value="${utilisateur.mail}"/>" size="20" maxlength="60" />
                <span class="erreur">${form.errors['email']}</span>
                <br />
                
                <label for="discord_id">Discord id </label>
                <input type="number" id="discord_id" name="discord_id" value="<c:out value="${utilisateur.discord_id}"/>" size="20" maxlength="60" />
                <span class="erreur">${form.errors['email']}</span>
                <br />
                
                <label for="profile_picture">Profile picture link </label>
                <input type="URL" id="profile_picture" name="profile_picture" value="<c:out value="${utilisateur.profile_picture}"/>" size="20" maxlength="255" />
                <span class="erreur">${form.errors['profile_picture']}</span>
                <br />

                <input type="submit" value="Inscription" class="button" />
                <br />
                
                <p class="${empty form.errors ? 'succes' : 'erreur'}">${form.resultat}</p>
            </fieldset>
        </form>
    </body>
</html>