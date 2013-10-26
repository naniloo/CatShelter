<!DOCTYPE html>
<html xmlns:ng="http://angularjs.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Cat Shelter</title>
<meta name="layout" content="main" />
<link type="text/css" rel="stylesheet"
	href="${resource(dir:'css',file:'ng-grid.css')}" />
<link type="text/css" rel="stylesheet"
	href="${resource(dir:'css',file:'jquery-ui-smoothness.css')}" />
<link type="text/css" rel="stylesheet"
	href="${resource(dir:'css',file:'cat.crud.css')}" />
<link type="text/css" rel="stylesheet"
	href="${resource(dir:'css',file:'dialog.css')}" />
<link type="text/css" rel="stylesheet"
	href="${resource(dir:'css',file:'bootstrap.css')}" />
<g:javascript src="lib/jquery-1.9.1-ui.js" />
<g:javascript src="lib/angular.js" />
<g:javascript src="angular/ng-grid.js" />
<g:javascript src="angular/cat.angular.js" />
<style>
h3.phark {
	width: 300px;
	height: 75px;
	background: url(test.png);
	text-indent: -9999px;
}
</style>
</head>
<body>
	<div ng-app="MyApp" id="ng-app"
		ng-controller="assetFieldImportanceCtrl">
		<div class="control-group">
			<div class="controls">
				<div>
					<input type="button" class="btn btn-success" value="Add Cat Details" ng-click="addCatDetails()" />
				</div>
			</div>
		</div>
		<div>
			<div id="messageId" class="message" style="display: none"></div>
		</div>
		<div class="gridStyle" ng-grid="gridOptions"></div>
		<div id="catDetails" style="display: none">
			<g:render template="create" />
		</div>
		<div id="showCatDetails" style="display: none">
			<g:render template="show" />
		</div>
		<div id="editCatDetails" style="display: none">
			<g:render template="edit" />
		</div>
	</div>
</body>
</html>