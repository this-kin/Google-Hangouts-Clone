import 'package:chat_app/core/exports.dart';
import 'package:chat_app/modules/login.dart';
import 'package:chat_app/modules/onboarding.dart';
import 'package:chat_app/modules/signup.dart';
// import 'package:chat_app/modules/splash.dart';

class RouteGenerator {
  static const String splash = '/';
  static const String onboarding = '/';
  static const String login = '/login';
  static const String signup = "/signup";

  // generate routes
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case splash:
      //   return MaterialPageRoute(builder: (context) => Splash());
      case onboarding:
        return MaterialPageRoute(builder: (context) => const Onboarding());
      case login:
        return MaterialPageRoute(builder: (context) => const Login());
      case signup:
        return MaterialPageRoute(builder: (context) => const Signup());
      default:
        return MaterialPageRoute(builder: (context) => Onboarding());
    }
  }
}
