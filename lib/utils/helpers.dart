import 'package:coreinfra_project/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle changeTabTextStyle(int tabTextIndex, int tabIndex) {
  if (tabIndex == tabTextIndex) {
    return TextStyle(
        color: AppColors.homeBlackColor,
        fontWeight: FontWeight.w700,
        fontSize: 14.sp);
  }
  return TextStyle(
      color: AppColors.homeBlackColor,
      fontWeight: FontWeight.w300,
      fontSize: 14.sp);
}

Color changeTabIndicatorColor(int index) {
  switch (index) {
    case 0:
      return AppColors.approvedIndicatorColor;
    case 1:
      return AppColors.pendingIndicatorColor;
    case 2:
      return AppColors.mainColor;
    default:
      return AppColors.approvedIndicatorColor;
  }
}
