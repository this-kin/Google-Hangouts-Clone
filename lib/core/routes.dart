import 'package:chat_app/core/exports.dart';
import 'package:chat_app/modules/login.dart';
import 'package:chat_app/modules/onboarding.dart';
// import 'package:chat_app/modules/splash.dart';

class RouteGenerator {
  static const String splash = '/';
  static const String onboarding = '/';
  static const String login = '/login';

  // generate routes
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case splash:
      //   return MaterialPageRoute(builder: (context) => Splash());
      case onboarding:
        return MaterialPageRoute(builder: (context) => const Onboarding());
      case login:
        return MaterialPageRoute(builder: (context) => const Login());
      default:
        return MaterialPageRoute(builder: (context) => Onboarding());
    }
  }
}
