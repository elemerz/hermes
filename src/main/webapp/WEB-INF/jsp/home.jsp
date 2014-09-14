<%@ include file="taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
	<link type="text/css" href="resources/hermes/css/style.css" rel="stylesheet"/>
</head>

<body>
	Welcome!
	<h2>List of Users:</h2>
	<div>
		<c:if test="${users != null }">
			<c:forEach items="${users}" var="user">
				<p>${user.userId} - ${user.userName}</p>
			</c:forEach>
		</c:if>
	</div>
	
	<script type="text/javascript" src="resources/3rdparty/jquery/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="resources/3rdparty/dust/dust-full-2.4.2.min.js"></script>
</body>

</html>