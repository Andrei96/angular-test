var app = angular.module("onlineShop", [])

var shopInformation = {
    "name": "Fast Shop",
    "logo": "/images/logoFastShopHome.png"
};

app.controller("ShopController", ['$http',function($http){
    var controller = this;
    controller.details = shopInformation;
    controller.items = [];
    $http.get("/js/database.json").success(function(data){
        controller.items = data.items
    });

    controller.showComments = function (id) {
        var block = $("#"+id),
            item = $("#i"+id),
            comment = $("#c"+id);
        _comments("show", block, item, comment);
        _to(id);
    };

    controller.hideComments = function (id) {
        var block = $("#"+id),
            item = $("#i"+id),
            comment = $("#c"+id);
        _comments("hide", block, item, comment);
        setTimeout(function(){_to(id)}, 500);
    };
}]);