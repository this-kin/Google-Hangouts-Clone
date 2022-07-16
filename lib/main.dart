import 'package:chat_app/core/exports.dart';
import 'package:chat_app/core/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, __) {
        return MaterialApp(
          title: 'Chat App',
          theme: CustomTheme.lightTheme(),
          darkTheme: CustomTheme.darkTheme(),
          initialRoute: RoutGenerator.home,
          onGenerateRoute: RoutGenerator.generateRoute,
        );
      },
    );
  }
}
