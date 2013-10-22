
<%@ page import="com.ethan.animals.Cat" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cat.label', default: 'Cat')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cat" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cat" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cat">
			
				<g:if test="${catInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="cat.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${catInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${catInstance?.arrivalDate}">
				<li class="fieldcontain">
					<span id="arrivalDate-label" class="property-label"><g:message code="cat.arrivalDate.label" default="Arrival Date" /></span>
					
						<span class="property-value" aria-labelledby="arrivalDate-label"><g:formatDate date="${catInstance?.arrivalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${catInstance?.breed}">
				<li class="fieldcontain">
					<span id="breed-label" class="property-label"><g:message code="cat.breed.label" default="Breed" /></span>
					
						<span class="property-value" aria-labelledby="breed-label"><g:link controller="catBreed" action="show" id="${catInstance?.breed?.id}">${catInstance?.breed?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${catInstance?.coat}">
				<li class="fieldcontain">
					<span id="coat-label" class="property-label"><g:message code="cat.coat.label" default="Coat" /></span>
					
						<span class="property-value" aria-labelledby="coat-label"><g:fieldValue bean="${catInstance}" field="coat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${catInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="cat.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${catInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${catInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="cat.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${catInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${catInstance?.id}" />
					<g:link class="edit" action="edit" id="${catInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
