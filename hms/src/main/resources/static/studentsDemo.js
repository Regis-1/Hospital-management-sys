angular.module('demo', []).controller(
		'studentsCtrl',
		function($scope, $http) {
			$http.get('http://localhost:8080/patient').then(
					function(response) {
						$scope.students = response.data;
					});
			$scope.first_name = '';
			$scope.last_name = '';
			$scope.idpatient = '';
			$scope.edit = true;
			$scope.error = false;
			$scope.incomplete = false;
			$scope.hideform = true;
			$scope.editStudentN = function() {
				$scope.hideform = false;
					$scope.edit = true;
					$scope.incomplete = true;
					$scope.idpatient = '';
					$scope.first_name = '';
					$scope.last_name = '';
			};
			$scope.editStudent = function(id) {
				$scope.hideform = false;
					$scope.edit = true;
					$scope.first_name = $scope.students[id].first_name;
					$scope.last_name = $scope.students[id].last_name;
					$scope.idpatient = $scope.students[id].idpatient;
			};

			$scope.saveStudent = function() {
				var obj = {
					idpatient : $scope.idpatient,
					first_name : $scope.first_name,
					last_name : $scope.last_name
				};
				$scope.hideform = true;
				
				if($scope.idpatient==='')
				$http.post('http://localhost:8080/patient', obj, {
					headers : {
						'Content-Type' : 'application/json; charset=UTF-8'
					},
					'Accept' : 'application/json'
				}).then(function onSuccess(data) {
					window.alert(JSON.stringify(data.data));
					$http.get('http://localhost:8080/patient').then(
							function(response) {
								$scope.students = response.data;
							});
				}, function onError(err) {
					// do something on error
				});
				else
				$http.put('http://localhost:8080/patient', obj, {
					headers : {
						'Content-Type' : 'application/json; charset=UTF-8'
					},
					'Accept' : 'application/json'
				}).then(function onSuccess(data) {
					window.alert(JSON.stringify(data.data));
					$http.get('http://localhost:8080/patient').then(
							function(response) {
								$scope.students = response.data;
							});
				}, function onError(err) {
					// do something on error
				});
				$scope.idpatient=''
			};

			$scope.$watch('idpatient', function() {
				$scope.test();
			});
			$scope.$watch('first_name', function() {
				$scope.test();
			});
			$scope.$watch('last_name', function() {
				$scope.test();
			});

			$scope.test = function() {
				$scope.incomplete = false;
				if ($scope.edit
						&& (!$scope.first_name.length || !$scope.last_name.length)) {
					$scope.incomplete = true;
				}
			};
		});