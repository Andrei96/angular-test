<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="uk" ng-app="onlineShop">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta charset="UTF-8"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Angular Demo</title>
    <link type="text/css" rel="stylesheet" href="/css/base.css" />
    <script type="application/javascript" src="/js/jquery-2.1.1.js"></script>
    <script type="application/javascript" src="/js/angular.js"></script>
    <script type="application/javascript" src="/js/angular-resource.js"></script>
    <script type="application/javascript" src="/js/script.js"></script>
    <script type="application/javascript" src="/js/application.js"></script>
</head>
<body ng-controller="ShopController as shop">
<div class="container">
    <div class="header clearfix">
        <nav>
            <ul class="nav nav-pills pull-right">
                <li role="presentation" class="active"><a href="#">Головна</a></li>
                <li role="presentation"><a href="#">Контакти</a></li>
            </ul>
        </nav>
        <h3>
            <img ng-src="{{shop.details.logo}}">
            Welcome to {{shop.details.name}}
        </h3>
    </div>
    <div class="row marketing">
        <div class="col-md-6" ng-repeat="item in shop.items" id="{{item.id}}">
            <div id="i{{item.id}}">
                <h3>
                    {{item.name}}
                    <span class="pull-right">{{item.price | currency}}</span>
                </h3>
                <img ng-src="{{item.img}}">
                <p>{{item.description}}</p>
                <button class="btn btn-primary">
                    <i class="glyphicon glyphicon-shopping-cart"></i>
                    Придбати
                </button>
                <button class="btn btn-default" ng-click="shop.showComments(item.id)">
                    <i class="glyphicon glyphicon-comment"></i>
                    Коментарі
                    <span class="badge">{{item.comments.length}}</span>
                </button>
            </div>
            <div id="c{{item.id}}" style="display: none">
                <h3>> коментарі
                <button class="btn btn-default pull-right" ng-click="shop.hideComments(item.id)">Приховати &times;</button>
                </h3>
                <div class="alert alert-info" ng-repeat="comment in item.comments">
                    <strong>{{comment.email}}</strong><br>
                    {{comment.message}}
                </div>
            </div>
        </div>
    </div>
    <footer class="footer">
        <p>&copy; Codaline</p>
    </footer>
</div>
</body>
</html>







