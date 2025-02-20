import 'package:flutter/material.dart';
import 'package:mark_six/util/logger.dart';

class NavigationLogger extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if(previousRoute == null) return;
    debugLog('Route Push', route.settings.name ?? 'Unknown');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    debugLog(
      'Route Push',
      'Old Route: ${oldRoute?.settings.name ?? 'Unknown'} --->  New Route: ${newRoute?.settings.name ?? 'Unknown'}',
    );
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    debugLog('Route Remove', route.settings.name ?? 'Unknown');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    debugLog('Route Pop', route.settings.name ?? 'Unknown');
  }
}
