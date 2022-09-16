import 'package:chat_app/constants/image_constants.dart';
import 'package:chat_app/core/exports.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // go back
        Navigator.pop(context);
      },
      child: Padding(
        padding: EdgeInsets.only(left: 20.w),
        child: SvgPicture.asset(
          ConstanceData.arrow_back,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({
    Key key,
    this.onPressed,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10.sp),
        ),
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(10.sp),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 130.w),
              child: Text(
                text,
                style: CustomTheme.mediumText(context).copyWith(
                  color: backgroundColor,
                  fontSize: 18.sp,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
