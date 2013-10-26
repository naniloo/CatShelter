var app = angular.module("MyApp", ['ngGrid']);
var catId
var MODAL_TOP = 100; 
app.factory('fieldFactory',function($http){
	return{
		getFields : function() {
			return $http({
				url: "../cat/catListJson",
				method: 'GET'
			})
		}
	}
});


app.controller('assetFieldImportanceCtrl', function ($scope,$http,fieldFactory) {
	$scope.fields = [];
	fieldFactory.getFields().success(function(data){
		$scope.fields=data;
	});
	
	$scope.gridOptions = { 
			data: 'fields',
			showGroupPanel: true ,
			columnDefs: [{field: 'name', displayName: 'Name', cellTemplate: '<div ng-click="showCatDetails(row.getProperty(col.field))">{{row.getProperty(col.field)}}</div>'},
						 {field:'breeds', displayName:'Breed'},
						 {field: 'coats', displayName: 'Coat'},
						 {field: 'dateOfArrival', displayName: 'Date Of Arrival'},
						 {field: 'id', displayName: 'Actions', width: "80" ,
						 cellTemplate: '<div>&nbsp;&nbsp;<img ng-click="editCatDetails(row.getProperty(col.field))" src="../images/skin/database_edit.png"/>&nbsp;&nbsp;<img ng-click="deleteCatDetails(row.getProperty(col.field))" src="../images/skin/database_delete.png"/></div>'}]
		        };
	
	$scope.addCatDetails = function(s) {
		jQuery.ajax({
			url : "../cat/create",
			method: "POST",
		}).success (function(resp) {
			$("#catDetails").show()
			$("#createForm").html(resp)
			$scope.createModal('Create')
		}).error(function(resp, status, headers, config) {
			alert("An Unexpected error while creating Cat Details.")
		});
	}
	
	$scope.showCatDetails = function(catName){
		jQuery.ajax({
			url : "../cat/show",
			method: "POST",
			data:{'catName':catName}
		}).success (function(resp) {
			$('#showCatDetails').show();
			$('#showForm').html(resp);
			$scope.createModal('Show');
			catId = $('#catId').val()
		}).error(function(resp, status, headers, config) {
			alert("An Unexpected error while showing the Cat details.")
		});
	}
	$scope.editCatDetails = function(id){
		if(!id || id == undefined){
			id = catId
		}
		jQuery.ajax({
			url : "../cat/edit",
			method: "POST",
			data:{'id':id}
		}).success (function(resp) {
				$("#editCatDetails").show()
				$("#editForm").html(resp)
				$scope.closeModal('Show');
				$scope.createModal('Edit')
				catId = $('#cadEditId').val()
				fieldFactory.getFields().success(function(data){
					$scope.fields=data;
				});
		}).error(function(resp, status, headers, config) {
			alert("An Unexpected error while "+type+"ing Cat details.")
		});
	}
	$scope.deleteCatDetails = function (id){
		if(!id || id == undefined){
			id = catId
		}
		confirm("Are You Sure You want to delete?")
		jQuery.ajax({
			url : "../cat/delete",
			method: "POST",
			data:{'id':id}
		}).success (function(resp) {
				fieldFactory.getFields().success(function(data){
					$scope.fields=data;
				});
				$scope.closeModal('Edit');
				$scope.closeModal('Show');
				$("#messageId").show();
				$("#messageId").html('Deleted Cat Number '+id+' Successfully');
		}).error(function(resp, status, headers, config) {
			alert("An Unexpected error while "+type+"ing Cat details.")
		});
	}
   $scope.saveOrUpdateCatDetails = function(type){
		jQuery.ajax({
			url: $('#'+type+'CatForm').attr('action'),
			data: $('#'+type+'CatForm').serialize(),
			type:'POST',
			success: function(data) {
				$('#showCatDetails').show();
				$('#showForm').html(data);
				$scope.closeModal('Create');
				$scope.closeModal('Edit');
				$scope.createModal('Show');
				catId = $('#catId').val();
				fieldFactory.getFields().success(function(data){
					$scope.fields=data;
				});
			},
			error: function(jqXHR, textStatus, errorThrown) {
				if(type=='save'){
					$('#createCatDetails').show();
					$('#createForm').html(jqXHR.responseText);
					$scope.closeModal('Show');
					$scope.closeModal('Edit');
					$scope.createModal('Create');
				} else {
					$('#editCatDetails').show();
					$('#editForm').html(jqXHR.responseText);
					$scope.closeModal('Show');
					$scope.closeModal('Create');
					$scope.createModal('Edit');
				}
			}
		});
   }
   $scope.createModal = function(type){
	   $('#modal'+type).fadeOut('fast', function(){
			$(this).show();
		});
		$('#curtain'+type).fadeOut('normal', function(){
			$(this).show();
		});  
		if($('html').is('.ie8, .ie7, .ie6')){
			$("#curtain"+type).css({ opacity: 0.66 });
		}
		$('#curtain'+type).fadeIn('fast');
		if($('html').is('.ie8, .ie7, .ie6')){
			$('#modal'+type).css({'top' : document.documentElement.scrollTop + MODAL_TOP + 'px', 'left': '30%' }).fadeIn('fast');
		}else{
			$('#modal'+type).css({'top' : window.pageYOffset + MODAL_TOP + 'px', 'left': '30%'}).fadeIn('fast');
		}
	}
	$scope.closeModal = function(type){
	  $('#modal'+type).fadeOut('fast', function(){
	    $(this).hide();
	  });
	    
	  $('#curtain'+type).fadeOut('normal', function(){
		$(this).hide();
	  });  
	}
});