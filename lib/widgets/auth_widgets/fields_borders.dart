import 'package:chat_app/core/exports.dart';

OutlineInputBorder focusBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.sp),
    borderSide: BorderSide(
      color: primaryColor,
      width: 1.w,
    ),
  );
}

OutlineInputBorder primaryBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.sp),
    borderSide: BorderSide(
      color: greyBorderColor,
      width: 1.w,
    ),
  );
}

OutlineInputBorder errorBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.sp),
    borderSide: BorderSide(
      color: redColor,
      width: 1.w,
    ),
  );
}

OutlineInputBorder searchBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.sp),
    borderSide: BorderSide(
      color: greyBorderColor,
      width: 1.w,
    ),
  );
}
