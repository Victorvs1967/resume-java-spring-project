<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var="profile" items="${profiles }">
	<div class="container">
		<div class="card border-secondary mb-2">
			<div class="row p-2">
				<div class="col-md-1 mr-4">
					<a href="/${profile.uid }"><img src="${profile.smallPhoto }" class="photo-thumbnail m-1 mt-3" alt="Profile image"></a>
				</div>
				<div class="col-md-10 m-2 ml-4">
					<div class="card-body p-1">
						<div class="card-title d-flex mb-0">
							<h4><a style="color: black; text-decoration: none;" href="/${profile.uid }">${profile.id }) ${profile.fullName}, ${profile.age }</a></h4>
							<a class="btn btn-secondary mb-0 ml-auto" href="/${profile.uid }">Detail</a>
						</div>
						<p class="card-text mb-0">${profile.objective }</p>
						<p class="card-text mb-0"><small>${profile.city }, ${profile.country }</small></p>
						<p class="card-text mb-0"><small>${profile.summary }</small></p>
						<p class="card-text mb-0"><small class="text-muted">${profile.created }</small></p>
					</div>
				</div>
			</div>
		</div>
	</div>	
</c:forEach>

