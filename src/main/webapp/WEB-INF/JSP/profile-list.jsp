<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<c:forEach var="profile" items="${profiles }">
	<div class="container">
		<div class="card border-secondary mb-2">
			<div class="row no-gutter">
				<div class="col-md-3">
					<a href="/${profile.uid }"><img src="${profile.largePhoto }" class="img-thumbnail m-1" alt="Profile image"></a>
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h5 class="card-title">
							<a style="color: black; text-decoration: none;" href="/${profile.uid }">${profile.fullName}, ${profile.age }</a>
						</h5>
						<p class="card-text">${profile.objective }</p>
						<p class="card-text">${profile.summary }</p>
						<p class="card-text">
							<small class="text-muted">${profile.created }</small>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:forEach>
