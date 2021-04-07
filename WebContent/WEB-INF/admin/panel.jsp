<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Admin panel</title>
	</head>
	<body>
		<p>Admin panel soon™</p>
		<p>User is admin : ${ sessionScope["sessionUser"].admin }</p>
		<br />
		
		<h2>Actions :</h2>
		<p>Reset password :</p>
		<form method="post" action="<c:url value="/admin/resetpwd"/>">
			<label for="id">Id d'utilisateur</label>
			<input type="text" name="id" required/>
			<label for="expiration">Expiration (minutes)</label>
			<input type="text" name="expiration" required/>
			<input type="submit" value="Générer un token"/>
		</form>
		<br/>
		<p><a href="<c:url value="/admin/resetpwd"/>">Liste des tokens actifs</a></p>
		<br/>
		<form method="get" action="<c:url value="/admin/register"/>">
			<input type="submit" value="Nouvel Utilisateur"/>
		</form>
	</body>
</html>