<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div class="container d-flex">
	<div class="row">
		<div class="col-lg-4">
			<resume:profile-main />
			<resume:profile-languages />
			<resume:profile-hobbi />
			<resume:profile-additional />
		</div>
		<div class="col-lg-8">
			<resume:profile-objective />
			<resume:profile-skill />
			<resume:profile-practice />
			<resume:profile-certificates />
			<resume:profile-courses />
			<resume:profile-education />
		</div>
	</div>
</div>