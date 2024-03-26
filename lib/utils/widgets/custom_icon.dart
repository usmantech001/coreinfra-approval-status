import 'package:coreinfra_project/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appBarIcon({
  required IconData icon,
}) {
  return CircleAvatar(
    radius: 15.sp,
    backgroundColor: AppColors.appBarbackgroundIconColor,
    child: Icon(
      icon,
      size: 18,
      color: AppColors.appBarIconColor,
    ),
  );
}

Widget customIcon({
  required Color backgroundColor,
  required String imagePath,
  required VoidCallback onTap
}){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 60.h,
      width: 60.w,
      padding: EdgeInsets.all(15.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: backgroundColor,
      ),
      child: Image.asset(imagePath, )
    ),
  );
}
