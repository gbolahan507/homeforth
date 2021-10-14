// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../core/model/photo_model.dart';
import '../ui/home/detail_view.dart';
import '../ui/home/home_view.dart';
import '../ui/login/login_view.dart';
import '../ui/splash/splash_view.dart';

class Routes {
  static const String startupView = '/';
  static const String loginView = '/login-view';
  static const String detailVIew = '/detail-vIew';
  static const String homeView = '/home-view';
  static const all = <String>{
    startupView,
    loginView,
    detailVIew,
    homeView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.detailVIew, page: DetailVIew),
    RouteDef(Routes.homeView, page: HomeView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const LoginView(),
        settings: data,
      );
    },
    DetailVIew: (data) {
      var args = data.getArgs<DetailVIewArguments>(
        orElse: () => DetailVIewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => DetailVIew(
          key: args.key,
          albumModel: args.albumModel,
        ),
        settings: data,
      );
    },
    HomeView: (data) {
      var args = data.getArgs<HomeViewArguments>(
        orElse: () => HomeViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => HomeView(key: args.key),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// DetailVIew arguments holder class
class DetailVIewArguments {
  final Key? key;
  final AlbumModel? albumModel;
  DetailVIewArguments({this.key, this.albumModel});
}

/// HomeView arguments holder class
class HomeViewArguments {
  final Key? key;
  HomeViewArguments({this.key});
}
