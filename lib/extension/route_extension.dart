import 'package:flutter/cupertino.dart';

import '../splash/screen/splash_screen.dart';

extension RouteSettingExtension on RouteSettings {
  Route<dynamic>? generatePage() {
    Widget? page;
    switch (name) {
      case SplashScreen.routeName:
        page = SplashScreen();
        break;
    }

    if (page == null) return null;
    return CupertinoPageRoute(builder: (context) => page!, settings: this);
  }
}
