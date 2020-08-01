<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="resume" tagdir="/WEB-INF/tags"%>

<div class="container-fluid pl-0 pr-0">
	<div class="card">
		<div class="card-body pl-4 pr-4">
			<h3 class="data-header">Технические навыки во фреймворках и технологиях</h3>
			<hr />
			<div class="row" style="margin-bottom: 20px;">
				<div class="col-xs-5 col-sm-4 col-md-2">
					<h4>Категория</h4>
				</div>
				<div class="col-xs-7 col-sm-8 col-md-10">
					<h4>Фреймворк и технология</h4>
				</div>
			</div>
			<form:form action="/edit/skills" method="post" modelAttribute="skillForm">
				<div id="ui-block-container">
					<c:forEach var="skill" items="${skillForm.items }" varStatus="status">
						<resume:edit-skill-block index="${status.index}" skill="${skill }" />
					</c:forEach>
				</div>
				<div class="row pl-4">
					<div class="col-xs-12">
						<a href="javascript:void(0);">+ Добавить навык</a>
					</div>
				</div>
				<hr />
				<div class="row mb-2  text-center d-block">
					<div class="col-xs-12">
						<a href="/${uid }" class="btn btn-primary btn-lg" tabindex="-1" role="button" aria-disabled="true">Сохранить</a>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</div>