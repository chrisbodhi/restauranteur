@restauranteur.controller 'RestaurantIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.restaurants = []
  $http.get('./restaurants.json').success((data) ->
    $scope.restaurants = data
  )

  $scope.viewRestaurant = (id) ->
    $location.url "/restaurants/#{id}"
]

# Translates to
# this.restauranteur.controller('RestaurantIndexCtrl', [
#   '$scope', '$location', '$http', function($scope, $location, $http) {
#     $scope.restaurants = [];
#     $http.get('./restaurants.json').success(function(data) {
#       return $scope.restaurants = data;
#     });
#     return $scope.viewRestaurant = function(id) {
#       return $location.url("/restaurants/" + id);
#     };
#   }
# ]);
