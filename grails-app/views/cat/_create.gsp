<%@ page import="com.ethan.animals.Cat" %>
<div id="curtainCreate"></div>
<div id="modalCreate">
<div id="create-cat" class="content scaffold-create" role="main">
<div><h4 class="text-center text-warning">Create Cat Details</h4></div>
	<g:if test="${flash.message}">
	<div class="message" role="status">${flash.message}</div>
	</g:if>
	<g:form  class="form-horizontal" name="saveCatForm" action="save" >
		<div id="createForm"></div>
		<div class="control-group">
			<div class="controls">
				<input type="button"  class="btn btn-success" name="create" value="Save" ng-click="saveOrUpdateCatDetails('save')"/>
				<input type="button" class="btn btn-success" value="Cancel" ng-click="closeModal()"/>
			</div>
		</div>
	</g:form>
</div>
<a ng-click="closeModal('Create')" class="modal-close" class="phark" href="#"></a>
</div>