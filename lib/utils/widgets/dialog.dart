import 'package:coreinfra_project/utils/widgets/custom_button.dart';
import 'package:coreinfra_project/utils/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget dialog(BuildContext context) {
  return Dialog(
    insetPadding: EdgeInsets.symmetric(horizontal: 15.w),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 15.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.sp),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/warning.png',
            height: 38.h,
            width: 38.w,
          ),
          SizedBox(
            height: 10.h,
          ),
          boldText(text: 'Awaiting Approval', fontSize: 16.sp),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
            child: smallText(
              text:
                  'Awaiting superior approval, notification will be sent once approved',
              fontSize: 16.sp,
              textAlign: TextAlign.center,
            ),
          ),
          customButton(
              text: 'Continue',
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              })
        ],
      ),
    ),
  );
}
