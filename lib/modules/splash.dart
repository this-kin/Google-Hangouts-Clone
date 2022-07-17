import 'package:chat_app/core/exports.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
