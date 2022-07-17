import 'package:chat_app/core/exports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
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
      designSize: const Size(375, 812),
      builder: (_, __) {
        return MaterialApp(
          title: 'XChat',
          theme: CustomTheme.lightTheme(),
          themeMode: ThemeMode.light,
          initialRoute: RoutGenerator.splash,
          onGenerateRoute: RoutGenerator.generateRoute,
        );
      },
    );
  }
}
