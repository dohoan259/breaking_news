// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../views/screens/breaking_news/breaking_news_screen.dart' as _i2;
import '../views/screens/login/login_screen.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.WrappedRoute(child: _i1.LoginScreen(key: args.key)),
      );
    },
    BreakingNewsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<BreakingNewsScreenRouteArgs>(
          orElse: () => const BreakingNewsScreenRouteArgs());
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.WrappedRoute(child: _i2.BreakingNewsScreen(key: args.key)),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          LoginScreenRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          BreakingNewsScreenRoute.name,
          path: '/breaking-news-screen',
        ),
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginScreenRoute extends _i3.PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({_i4.Key? key})
      : super(
          LoginScreenRoute.name,
          path: '/',
          args: LoginScreenRouteArgs(key: key),
        );

  static const String name = 'LoginScreenRoute';
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.BreakingNewsScreen]
class BreakingNewsScreenRoute
    extends _i3.PageRouteInfo<BreakingNewsScreenRouteArgs> {
  BreakingNewsScreenRoute({_i4.Key? key})
      : super(
          BreakingNewsScreenRoute.name,
          path: '/breaking-news-screen',
          args: BreakingNewsScreenRouteArgs(key: key),
        );

  static const String name = 'BreakingNewsScreenRoute';
}

class BreakingNewsScreenRouteArgs {
  const BreakingNewsScreenRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'BreakingNewsScreenRouteArgs{key: $key}';
  }
}
