import 'package:chat_app/core/exports.dart';
import 'package:chat_app/modules/onboarding.dart';
import 'package:chat_app/modules/splash.dart';

class RoutGenerator {
  static const String splash = '/';
  static const String onboarding = '/onboarding';

  // generate routes
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => Splash());
      case onboarding:
        return MaterialPageRoute(builder: (context) => Onboarding());
      default:
        return MaterialPageRoute(builder: (context) => Splash());
    }
  }
}
