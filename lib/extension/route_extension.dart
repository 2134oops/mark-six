import 'package:flutter/cupertino.dart';
import 'package:mark_six/home/screen/home_screen.dart';

import '../splash/screen/splash_screen.dart';

extension RouteSettingExtension on RouteSettings {
  Route<dynamic>? generatePage() {
    Widget? page;
    switch (name) {
      case SplashScreen.routeName:
        page = SplashScreen();
        break;

      case HomeScreen.routeName:
        page = HomeScreen();
        break;
    }

    if (page == null) return null;
    return CupertinoPageRoute(builder: (context) => page!, settings: this);
  }
}
