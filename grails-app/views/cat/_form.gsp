<%@ page import="com.ethan.animals.Cat" %>



<div class="fieldcontain ${hasErrors(bean: catInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="cat.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${catInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: catInstance, field: 'arrivalDate', 'error')} required">
	<label for="arrivalDate">
		<g:message code="cat.arrivalDate.label" default="Arrival Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="arrivalDate" precision="day"  value="${catInstance?.arrivalDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: catInstance, field: 'breed', 'error')} required">
	<label for="breed">
		<g:message code="cat.breed.label" default="Breed" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="breed" name="breed.id" from="${com.ethan.common.CatBreed.list()}" optionKey="id" required="" value="${catInstance?.breed?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: catInstance, field: 'coat', 'error')} required">
	<label for="coat">
		<g:message code="cat.coat.label" default="Coat" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="coat" from="${catInstance.constraints.coat.inList}" required="" value="${catInstance?.coat}" valueMessagePrefix="cat.coat"/>
</div>

