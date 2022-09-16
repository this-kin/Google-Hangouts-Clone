import 'package:chat_app/core/exports.dart';
import 'package:chat_app/widgets/auth_widgets/fields.dart';
import 'package:chat_app/widgets/custom_button.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: theme.backgroundColor,
          iconTheme: IconThemeData(color: blackColor),
          leading: const CustomBackButton(),
        ),
        backgroundColor: theme.backgroundColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.h),
                  Text(
                    "Username",
                    style: CustomTheme.mediumText(context),
                  ),
                  SizedBox(height: 10.h),
                  EmailField(
                    controller: TextEditingController(),
                    focusNode: FocusNode(),
                    hintText: "ichie200",
                    isEmpty: "Username is required",
                    errorText: "",
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    "Password",
                    style: CustomTheme.mediumText(context),
                  ),
                  SizedBox(height: 10.h),
                  kPasswordField(
                    controller: TextEditingController(),
                    focusNode: FocusNode(),
                    hintText: "********",
                    isEmpty: "Password is required",
                    errorText: "Enter a correct password",
                  ),
                  SizedBox(height: 15.h),
                  TextButton(
                    child: Text(
                      "Forgot Password?",
                      style: CustomTheme.mediumText(context).copyWith(
                        color: primaryColor,
                      ),
                    ),
                    onPressed: () {
                      // goto forgot
                    },
                  ),
                  SizedBox(height: 42.h),
                  PrimaryButton(
                    text: "Login",
                    onPressed: () {
                      // login
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
