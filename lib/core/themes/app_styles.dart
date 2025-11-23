import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/core/themes/app_colors.dart';

class AppStyles {
  static TextStyle get ts24W400cGrey => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.cGrey,
  );

  static TextStyle get ts16W500cGrey600 => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.cGrey600,
  );

  static TextStyle get ts16WBoldcWhite => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.cWhite,
  );

  static TextStyle get ts14W500cWhite => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.cWhite,
  );

  static TextStyle get ts12W300cGrey => TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.cGrey,
  );

  static TextStyle get ts10W300cBlack => TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.cBlack,
  );

  static TextStyle get ts12cWhite =>
      TextStyle(fontSize: 12.sp, color: AppColors.cWhite);

  static TextStyle get ts12cGrey600 =>
      TextStyle(fontSize: 12.sp, color: AppColors.cGrey600);
}
