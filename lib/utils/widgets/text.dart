import 'package:coreinfra_project/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget smallText(
    {required String text,
    Color textColor = AppColors.homeSmallTextColor,
    double fontSize = 12,
    TextAlign textAlign = TextAlign.start,
    String fontFamily = 'Nunito Sans'}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w400,
        fontSize: fontSize.sp,
        
        fontFamily: fontFamily),
  );
}

Widget boldText(
    {required String text,
    Color textColor = AppColors.mainBoldTextColor,
    double fontSize = 20,
    String fontFamily = 'Nunito Sans',
    TextAlign textAlign = TextAlign.start}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w700,
        fontSize: fontSize.sp,
        fontFamily: fontFamily),
  );
}
