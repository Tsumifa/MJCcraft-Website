<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Password reset token</title>
	</head>
	<body>
		<p>${requestScope['response']}</p>
		<c:if test="${ not empty link }">
			<p>Lien : <a href="<c:url value="${ link }"/>"><c:url value="${ link }"/></a></p>
		</c:if>
	</body>
</html>