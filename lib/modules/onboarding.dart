import 'package:chat_app/constants/image_constants.dart';
import 'package:chat_app/core/exports.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Container(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Container(
                    height: 360.h,
                    width: 350.w,
                    decoration: BoxDecoration(
                      color: theme.backgroundColor,
                      borderRadius: BorderRadius.all(Radius.circular(30.sp)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 45.h),
                        Text(
                          "Enjoy the new exprience of\nchatting with new friends",
                          textAlign: TextAlign.center,
                          style: CustomTheme.semiLargeText(context),
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor incididunt ut labore\net dolore magna aliqua. Ut enim",
                          textAlign: TextAlign.center,
                          style: CustomTheme.normalText(context).copyWith(
                            color: darkGreyTextColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 80.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: SlideAction(
                            elevation: 0,
                            height: 75.h,
                            innerColor: theme.backgroundColor,
                            outerColor: theme.primaryColor,
                            submittedIcon: SvgPicture.asset(
                              ConstanceData.arrow_forward,
                              color: backgroundColor,
                            ),
                            text: "Swipe to start...",
                            borderRadius: 40.sp,
                            textStyle: CustomTheme.mediumText(context).copyWith(
                              color: theme.backgroundColor,
                              fontWeight: FontWeight.w500,
                            ),
                            onSubmit: () {
                              // go to register
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
