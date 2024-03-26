import 'package:coreinfra_project/utils/constants/colors.dart';
import 'package:coreinfra_project/utils/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget awaitingApprovalRowContainer({
  required BuildContext context,
  required String leftText,
  required String rightText,
  Color rightTextcolor = AppColors.mainColor,
  double fontSize = 14
}){
  return Padding(
    padding: EdgeInsets.only(bottom: 10.h),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SizedBox(
                  width: MediaQuery.sizeOf(context).width/2.w-20.w,
                  child: boldText(text: leftText, textColor: AppColors.awaitingApprovalgreyColor, fontSize: 12.sp),),
                  SizedBox(
                  width: (MediaQuery.sizeOf(context).width/2.w)-20.w,
                  child: boldText(text: rightText, textColor:rightTextcolor , fontSize: fontSize.sp, textAlign: TextAlign.end),),
    
                ],
              ),
  );
}