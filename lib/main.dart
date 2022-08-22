import 'package:chat_app/core/exports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
    );
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (_, __) {
        return MaterialApp(
          title: 'XChat',
          theme: CustomTheme.lightTheme(),
          themeMode: ThemeMode.light,
          debugShowCheckedModeBanner: false,
          initialRoute: RouteGenerator.onboarding,
          onGenerateRoute: RouteGenerator.generateRoute,
        );
      },
    );
  }
}
