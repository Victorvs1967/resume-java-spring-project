<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div class="container d-flex">
	<div class="row">
		<div class="col-lg-4">
			<resume:profile-main />
			<resume:languages />
			<resume:hobbi />
			<resume:additional />
		</div>
		<div class="col-lg-8">
			<resume:objective />
			<resume:skill />
			<resume:practice />
			<resume:certificates />
			<resume:courses />
			<resume:education />
		</div>
	</div>
</div>