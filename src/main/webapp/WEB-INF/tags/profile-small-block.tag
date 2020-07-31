<%@ tag language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<%@ attribute name="index" required="true" type="java.lang.Object"%>
<%@ attribute name="skill" required="false" type="com.vvs.resume.entity.Profile"%>

<div class="card mb-3">
	<div id="ui-item-${index }" class="row ui-item no-gutters">
		<div class="col-md-2">
			<img src="/media/avatar/4a4c91aa-5992-47b1-86bc-12875b957fe3.jpg" class="img-thumbnail w-100" alt="Profile image">
		</div>
		<div class="col-md-8">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a
					little bit longer.</p>
				<p class="card-text">
					<small class="text-muted">Last updated 3 mins ago</small>
				</p>
			</div>
		</div>
	</div>
</div>
