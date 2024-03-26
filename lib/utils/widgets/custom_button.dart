import 'package:coreinfra_project/utils/constants/colors.dart';
import 'package:coreinfra_project/utils/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customButton({required String text, bool isDecline = false,required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 31.w, vertical: 10.h),
      decoration: BoxDecoration(
          color: isDecline != true ? AppColors.greenColor : null,
          borderRadius: BorderRadius.circular(10.sp),
          border: isDecline ? Border.all(color: Colors.red) : null),
      child: boldText(
          text: text,
          textColor: isDecline == true ? AppColors.mainColor : Colors.white,
          fontSize: 18.sp),
    ),
  );
}
