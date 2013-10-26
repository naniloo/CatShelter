<g:form>
	<g:hiddenField id="catId" name="id" value="${catInstance?.id}" />
<table class="table table-striped">

	<g:if test="${catInstance?.name}">
	<tr class="fieldcontain">
		<td style="text-align:center;"><span id="name-label" class="property-label"><g:message code="cat.name.label" default="Name" /></span></td>
		
		<td><span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${catInstance}" field="name"/></span></td>
		
	</tr>
	</g:if>

	<g:if test="${catInstance?.arrivalDate}">
	<tr class="fieldcontain">
		<td style="text-align:center;"><span id="arrivalDate-label" class="property-label text-right"><g:message code="cat.arrivalDate.label" default="Arrival Date" /></span></td>
		
			<td><span class="property-value" aria-labelledby="arrivalDate-label"><g:formatDate format="MM/dd/yyyy" date="${catInstance?.arrivalDate}" /></span></td>
		
	</tr>
	</g:if>

	<g:if test="${catInstance?.breed}">
	<tr class="fieldcontain">
		<td style="text-align:center;"><span id="breed-label" class="property-label"><g:message code="cat.breed.label" default="Breed" /></span></td>
		
			<td><span class="property-value" aria-labelledby="breed-label"><g:link controller="catBreed" action="show" id="${catInstance?.breed?.id}">${catInstance?.breed?.encodeAsHTML()}</g:link></span></td>
		
	</tr>
	</g:if>

	<g:if test="${catInstance?.coat}">
	<tr class="fieldcontain">
		<td style="text-align:center;"><span id="coat-label" class="property-label"><g:message code="cat.coat.label" default="Coat" /></span></td>
		
			<td><span class="property-value" aria-labelledby="coat-label"><g:fieldValue bean="${catInstance}" field="coat"/></span></td>
		
	</tr>
	</g:if>

	<g:if test="${catInstance?.dateCreated}">
	<tr class="fieldcontain">
		<td style="text-align:center;"><span id="dateCreated-label" class="property-label"><g:message code="cat.dateCreated.label" default="Date Created" /></span></td>
		
			<td><span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate format="MM/dd/yyyy" date="${catInstance?.dateCreated}" /></span></td>
		
	</tr>
	</g:if>

	<g:if test="${catInstance?.lastUpdated}">
	<tr class="fieldcontain">
		<td style="text-align:center;"><span id="lastUpdated-label" class="property-label"><g:message code="cat.lastUpdated.label" default="Last Updated" /></span></td>
		
			<td><span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate format="MM/dd/yyyy" date="${catInstance?.lastUpdated}" /></span></td>
		
	</tr>
	</g:if>

</table>
</g:form>			