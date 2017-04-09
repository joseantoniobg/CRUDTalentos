$scope.someSelected = function (object) {
    return Object.keys(object).some(function (key) {
        return object[key];
    });
}