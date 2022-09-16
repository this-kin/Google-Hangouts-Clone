import 'package:chat_app/core/exports.dart';
import 'package:chat_app/widgets/auth_widgets/fields_borders.dart';

class EmailField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String errorText;
  final FocusNode focusNode;
  final String isEmpty;

  const EmailField({
    Key key,
    this.controller,
    this.errorText,
    this.focusNode,
    this.hintText,
    this.isEmpty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      style: CustomTheme.mediumText(context).copyWith(
        color: blackShadeTextColor,
        fontSize: 15.sp,
      ),
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: backgroundColor,
        filled: true,
        errorStyle: TextStyle(fontSize: 13.5.sp),
        border: primaryBorder(),
        focusedBorder: focusBorder(),
        errorBorder: errorBorder(),
        enabledBorder: primaryBorder(),
        focusedErrorBorder: focusBorder(),
        hintStyle: CustomTheme.mediumText(context).copyWith(
          color: lightGreyTextColor,
          fontSize: 15.sp,
        ),
      ),
      validator: (dynamic v) {
        if (emailRegex.hasMatch(v)) {
          return null;
        } else if (v.isEmpty) {
          return isEmpty;
        }
        return errorText;
      },
    );
  }
}

class kPasswordField extends StatelessWidget {
  final String hintText;
  final String isEmpty;
  final TextEditingController controller;
  final String errorText;
  final FocusNode focusNode;

  const kPasswordField({
    Key key,
    this.controller,
    this.errorText,
    this.focusNode,
    this.isEmpty,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      style: CustomTheme.mediumText(context).copyWith(
        color: blackShadeTextColor,
        fontSize: 15.sp,
      ),
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: backgroundColor,
        filled: true,
        errorStyle: TextStyle(fontSize: 13.5.sp),
        border: primaryBorder(),
        focusedBorder: focusBorder(),
        errorBorder: errorBorder(),
        enabledBorder: primaryBorder(),
        focusedErrorBorder: focusBorder(),
        hintStyle: CustomTheme.mediumText(context).copyWith(
          color: lightGreyTextColor,
          fontSize: 15.sp,
        ),
      ),
      validator: (dynamic v) {
        if (passwordRegex.hasMatch(v)) {
          return null;
        } else if (v.isNotEmpty && !passwordRegex.hasMatch(v)) {
          return "Password must contain At least 8 Characters including a Number, Uppercase letter and Special Character";
        } else if (v.isEmpty) {
          return isEmpty;
        }
        return errorText;
      },
    );
  }
}
