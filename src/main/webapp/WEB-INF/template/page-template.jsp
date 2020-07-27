<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="ru">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<jsp:include page="../section/css.jsp" />
</head>
<body class="resume">
	<jsp:include page="../section/header.jsp" />
	<jsp:include page="../section/nav.jsp" />
	<section class="main">
		<sitemesh:write property='body' />
	</section>
	<jsp:include page="../section/footer.jsp" />
	<jsp:include page="../section/js.jsp" />
</body>
</html>