import 'package:chat_app/constants/string_constant.dart';
import 'package:chat_app/core/exports.dart';

class CustomTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      scaffoldBackgroundColor: backgroundColor,
      platform: TargetPlatform.iOS,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      canvasColor: backgroundColor,
      fontFamily: baseFontUrl,
      brightness: Brightness.light,
      typography: Typography(),
      pageTransitionsTheme: PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }
}
