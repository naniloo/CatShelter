var app = angular.module('angular-remove', ['ngGrid']);

function MainCtrl($scope, $timeout, $http) {
  $scope.mySelections = [];
  
   $scope.refresh = function () {
      //$http.get('../js/data.json').success(function(data){
        $scope.myData = [
                         {
                             "name": "Moroni",
                             "age": 50
                         },
                         {
                             "name": "Tiancum",
                             "age": 43
                         },
                         {
                             "name": "Jacob",
                             "age": 27
                         },
                         {
                             "name": "Nephi",
                             "age": 29
                         },
                         {
                             "name": "Enos",
                             "age": 34
                         }
                     ]; 
      //});
    };
    
  $scope.refresh();
                 
  $scope.gridOptions = { data: 'myData',
        showFilter: true,
        showColumnMenu: true,
        showSelectionCheckbox: true,
        selectWithCheckboxOnly: true,
        selectedItems: $scope.mySelections,
        showFooter: true};
        
    var deferId;
    $scope.showUndo = false;
    $scope.removeWithUndo = function () {
        $scope.showUndo = true;       
        _.each($scope.mySelections, function (object) {
            var nameToDelete = object.name;
            $scope.myData = _.filter($scope.myData, function(element){ return element.name != nameToDelete;});          
        });

        deferId = $timeout(function () {
            $scope.showUndo = false;
            $scope.remove();
        }, 3000);
    };
        
    $scope.undoDeletion = function () {
        $timeout.cancel(deferId);
        $scope.showUndo = false;
        $scope.refresh();
        $scope.mySelections.splice(0, $scope.mySelections.length);
    };


    $scope.remove = function () {
        _.each($scope.mySelections, function (person) {
          //Real remove (i.e from datastore)
          $scope.myData = _.filter($scope.myData, function(element){ return element.name != person.name;});       
        });
       $scope.mySelections.splice(0, $scope.mySelections.length);
    };  
    
    $scope.templates = [{
        name: 'template1.html',
        url: 'template1.html'},
    {
        name: 'template2.html',
        url: 'template2.html'}];
    $scope.template = $scope.templates[0];

    $scope.myFunction = function() {
        $scope.color = 'red';
    }
}