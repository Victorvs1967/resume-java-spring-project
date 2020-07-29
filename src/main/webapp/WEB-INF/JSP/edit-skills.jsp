<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Skills</title>
</head>
<body>
	<select name="category" class="form-control">
		<c:forEach var="category" items="${skillCategories }">
		<option value="${category.id }">${category.category }</option>
		</c:forEach>
	</select>
</body>
</html>