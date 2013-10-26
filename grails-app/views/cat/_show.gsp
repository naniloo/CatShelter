<div id="curtainShow"></div>
<div id="modalShow">
<%@ page import="com.ethan.animals.Cat" %>
		<div id="show-cat" class="content scaffold-show" role="main">
		<div><h4 class="text-center text-warning">Show Cat Details</h4></div>
			<div id="showForm"></div>
			<div class="form-horizontal">
				<div class="control-group">
					<div class="controls">
						<input type="button" class=" btn btn-success" ng-click="editCatDetails()" value="Edit"/>
						<input type="button" class=" btn btn-success" ng-click="deleteCatDetails()" value="Delete"/>
					</div>
				</div>
			</div>
		</div>
		<a ng-click="closeModal('Show')" class="modal-close" class="phark" href="#"></a>
</div>
