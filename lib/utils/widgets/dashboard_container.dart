import 'package:coreinfra_project/utils/widgets/custom_icon.dart';
import 'package:coreinfra_project/utils/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget dashboardContainer({
  required String imagePath,
  required String firstText,
  required String secondText,
  required Color backgroundColor,
  required VoidCallback onTap,
}) {
  return Padding(
    padding: EdgeInsets.only(right: 15.85.w, top: 20.h),
    child: Column(
      children: [
        customIcon(
            backgroundColor: backgroundColor,
            imagePath: imagePath,
            onTap: onTap),
        Column(
          children: [
            smallText(
              text: firstText,
            ),
            smallText(text: secondText)
          ],
        )
      ],
    ),
  );
}
