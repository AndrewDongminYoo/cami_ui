// ignore_for_file: avoid_renaming_method_parameters

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/logger.dart';

class CustomRouteObserver extends RouteObserver<PageRoute> {
  void _logRoute({
    PageRoute<dynamic>? newRoute,
    PageRoute<dynamic>? oldRoute,
    String? routeType,
  }) {
    logger.i('[ROUTE $routeType] ${oldRoute.name} ➜ ${newRoute.name}');
  }

  PageRoute? _checkIfPageRoute(Route<dynamic>? route) {
    return (route is PageRoute) ? route : null;
  }

  @override
  void didPush(Route<dynamic> newRoute, Route<dynamic>? oldRoute) {
    super.didPush(newRoute, oldRoute);
    _logRoute(
      newRoute: _checkIfPageRoute(newRoute),
      oldRoute: _checkIfPageRoute(oldRoute),
      routeType: 'PUSH',
    );
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _logRoute(
      newRoute: _checkIfPageRoute(newRoute),
      oldRoute: _checkIfPageRoute(oldRoute),
      routeType: 'REPLACE',
    );
  }

  @override
  void didPop(Route<dynamic> newRoute, Route<dynamic>? oldRoute) {
    super.didPop(newRoute, oldRoute);
    _logRoute(
      newRoute: _checkIfPageRoute(oldRoute),
      oldRoute: _checkIfPageRoute(newRoute),
      routeType: 'POP',
    );
  }

  @override
  void didRemove(Route<dynamic> newRoute, Route<dynamic>? oldRoute) {
    super.didPop(newRoute, oldRoute);
    _logRoute(
      newRoute: _checkIfPageRoute(newRoute),
      oldRoute: _checkIfPageRoute(oldRoute),
      routeType: 'REMOVE',
    );
  }
}

extension on PageRoute<dynamic>? {
  String? get name => this?.settings.name;
}
