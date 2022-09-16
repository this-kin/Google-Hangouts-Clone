import 'package:chat_app/core/exports.dart';
import 'package:chat_app/widgets/auth_widgets/fields.dart';
import 'package:chat_app/widgets/custom_button.dart';

class Signup extends StatelessWidget {
  const Signup({Key key}) : super(key: key);

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
          title: Text(
            "Register",
            style: CustomTheme.semiLargeText(context),
          ),
        ),
        backgroundColor: theme.backgroundColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                Text(
                  "Email Address",
                  style: CustomTheme.mediumText(context),
                ),
                SizedBox(height: 10.h),
                EmailField(
                  controller: TextEditingController(),
                  focusNode: FocusNode(),
                  hintText: "formatable2018@gmail.com",
                  isEmpty: "Email is required",
                  errorText: "Enter a correct email",
                ),
                SizedBox(height: 15.h),
                Text(
                  "First Name",
                  style: CustomTheme.mediumText(context),
                ),
                SizedBox(height: 10.h),
                EmailField(
                  controller: TextEditingController(),
                  focusNode: FocusNode(),
                  hintText: "Adekunle",
                  isEmpty: "Email is required",
                  errorText: "Enter a correct email",
                ),
                SizedBox(height: 15.h),
                Text(
                  "Last Name",
                  style: CustomTheme.mediumText(context),
                ),
                SizedBox(height: 10.h),
                EmailField(
                  controller: TextEditingController(),
                  focusNode: FocusNode(),
                  hintText: "Damilola",
                  isEmpty: "Email is required",
                  errorText: "Enter a correct email",
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
                SizedBox(height: 20.h),
                Text(
                  "By clicking Sign Up, you are indicating that you have read and acknowledge the Terms and Privacy Notice",
                  style: CustomTheme.normalText(context).copyWith(
                    color: darkGreyTextColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 42.h),
                PrimaryButton(
                  text: "Sign Up",
                  onPressed: () {
                    // login
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
