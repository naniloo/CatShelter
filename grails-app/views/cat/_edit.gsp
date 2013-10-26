<%@ page import="com.ethan.animals.Cat" %>
<div id="curtainEdit"></div>
<div id="modalEdit">
<div id="edit-cat" class="content scaffold-edit" role="main">
<div><h4 class="text-center text-warning">Edit Cat Details</h4></div>
	<g:if test="${flash.message}">
	<div class="message" role="status">${flash.message}</div>
	</g:if>
	<div id="editForm"></div>
	<div class="form-horizontal">
		<div class="control-group">
			<div class="controls">
				<input type="button"  class="btn btn-success" name="create" value="Update" ng-click="saveOrUpdateCatDetails('update')"/>
				<input type="button"  class="btn btn-success" name="create" value="Delete" ng-click="deleteCatDetails()"/>
			</div>
		</div>
	</div>
</div>
<a ng-click="closeModal('Edit')" class="modal-close" class="phark" href="#"></a>
</div>
