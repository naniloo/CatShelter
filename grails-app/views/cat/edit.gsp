
<g:hasErrors bean="${catInstance}">
<ul class="errors" role="alert">
	<g:eachError bean="${catInstance}" var="error">
	<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
	</g:eachError>
</ul>
</g:hasErrors>
<g:form class="form-horizontal" name="updateCatForm" action="update" method="post" >
	<g:hiddenField id="cadEditId" name="id" value="${catInstance?.id}" />
	<g:hiddenField name="version" value="${catInstance?.version}" />
	<fieldset class="form">
		<g:render template="form"/>
	</fieldset>
</g:form>
