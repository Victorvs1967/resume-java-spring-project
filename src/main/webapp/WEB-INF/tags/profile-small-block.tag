<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<%@ attribute name="profile" required="false" type="com.vvs.resume.entity.Profile"%>

<div class="container">
	<div class="card border-secondary mb-2">
		<div class="row no-gutter">
			<div class="col-md-3">
				<a href="/${profile.uid }"><img src="${profile.largePhoto }" class="img-thumbnail m-1 " alt="Profile image"></a>
			</div>
			<div class="col-md-9">
				<div class="card-body">
					<div class="card-title d-flex">
						<h4><a style="color: black; text-decoration: none;" href="/${profile.uid }">${profile.fullName}, ${profile.age }</a></h4>
						<a class="btn btn-secondary ml-auto" href="/${profile.uid }">Detail</a>
					</div>
					<p class="card-text">${profile.objective }</p>
					<p class="card-text">${profile.summary }</p>
					<p class="card-text"><small class="text-muted">${profile.created }</small></p>
				</div>
			</div>
		</div>
	</div>
</div>