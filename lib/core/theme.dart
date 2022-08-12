import 'package:chat_app/constants/string_constant.dart';
import 'package:chat_app/core/exports.dart';

class CustomTheme {
  static TextStyle largeText(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 25.0.sp,
          fontWeight: FontWeight.w700,
          color: blackColor,
          fontFamily: baseFontUrl,
        );
  }

  static TextStyle semiLargeText(BuildContext context) {
    return Theme.of(context).textTheme.headline3.copyWith(
          fontSize: 20.0.sp,
          fontWeight: FontWeight.w700,
          color: blackColor,
          fontFamily: baseFontUrl,
        );
  }

  static TextStyle mediumText(BuildContext context) {
    return Theme.of(context).textTheme.headline6.copyWith(
          fontSize: 16.0.sp,
          fontWeight: FontWeight.w700,
          color: blackColor,
          fontFamily: baseFontUrl,
        );
  }

  static TextStyle normalText(BuildContext context) {
    return Theme.of(context).textTheme.headline5.copyWith(
          fontSize: 14.0.sp,
          fontWeight: FontWeight.w500,
          color: blackColor,
          fontFamily: baseFontUrl,
        );
  }

  static TextStyle smallText(BuildContext context) {
    return Theme.of(context).textTheme.headline1.copyWith(
          fontSize: 12.0.sp,
          fontWeight: FontWeight.w300,
          color: blackColor,
          fontFamily: baseFontUrl,
        );
  }

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
