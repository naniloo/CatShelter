<%@ page import="com.ethan.animals.Cat" %>
<div class="control-group required">
	<label class="control-label" for="name">Name</label>
	 <div class="controls">
		<input type="text" name="name" id="catName" required="" placeholder="Enter Cat Name…" value="${catInstance?.name}">
	</div>
</div>

<div class="control-group required">
	<label class="control-label" for="arrivalDate">Arrival Date</label>
	<div class="controls">
		<input type="text" class="dateRange" name="arrivalDate"  value="<g:formatDate format='MM/dd/yyyy' date='${catInstance?.arrivalDate}'/>" />
		<script type="text/javascript">
         	$('.dateRange').datepicker();
    	</script>
	</div>
</div>

<div class="control-group required">
	<label class="control-label" for="breed">Breed</label>
	<div class="controls">
		<g:select id="breed" name="breed.id" from="${com.ethan.common.CatBreed.list()}" optionKey="id" required="" value="${catInstance?.breed?.id}" class="many-to-one"/>
	</div>
</div>

<div class="control-group required">
	<label class="control-label" for="coat">Coat</label>
	<div class="controls">
		<g:select name="coat" from="${catInstance.constraints.coat.inList}" required="" value="${catInstance?.coat}" valueMessagePrefix="cat.coat"/>
	</div>
</div>
