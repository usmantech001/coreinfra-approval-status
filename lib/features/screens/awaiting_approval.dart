import 'package:coreinfra_project/utils/constants/colors.dart';
import 'package:coreinfra_project/utils/constants/image_string.dart';
import 'package:coreinfra_project/utils/constants/text_string.dart';
import 'package:coreinfra_project/utils/widgets/custom_button.dart';
import 'package:coreinfra_project/utils/widgets/dialog.dart';
import 'package:coreinfra_project/utils/widgets/row_container.dart';
import 'package:coreinfra_project/utils/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AwaitingApprovalScreen extends StatelessWidget {
  const AwaitingApprovalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: boldText(
              text: 'Awaiting Approval',
              textColor: AppColors.appBarTextColor,
              fontSize: 16.sp),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.asset(
                  ImageStringConstant.cancel,
                  height: 17.h,
                  width: 17.w,
                ),
              ),
            )
          ],
        ),
        body: Padding(
          padding:
              EdgeInsets.only(left: 30.w, right: 40.w, top: 20.h, bottom: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                ImageStringConstant.pending,
                height: 39.5.h,
                width: 39.5.w,
              ),
              boldText(
                  text:TextStringConstant.pendingApproval ,
                  textColor: AppColors.pendingApprovalTextColor,
                  fontSize: 15.sp),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: boldText(
                    text: '₦25,000',
                    textColor: AppColors.awaitingApprovalAmountColor,
                    fontSize: 20.sp),
              ),
              smallText(
                  text: 'March 22, 2024',
                  fontSize: 12.sp,
                  textColor: AppColors.awaitingApprovalDateColor),
              Padding(
                padding: EdgeInsets.only(top: 14.h, bottom: 12.h),
                child: boldText(text: TextStringConstant.depositDetails, fontSize: 12.sp),
              ),
              awaitingApprovalRowContainer(
                  context: context, leftText:TextStringConstant.amount , rightText: 'N 25,000'),
              awaitingApprovalRowContainer(
                  context: context,
                  leftText: TextStringConstant.withdrawalFee ,
                  rightText: 'N 100'),
              awaitingApprovalRowContainer(
                  context: context,
                  leftText: TextStringConstant.withdrawalName,
                  rightText: 'Kolade Ololade',
                  rightTextcolor: AppColors.appBarTextColor),
              awaitingApprovalRowContainer(
                  context: context,
                  leftText: TextStringConstant.narration,
                  rightText: 'What the money is for goes here',
                  rightTextcolor: AppColors.appBarTextColor,
                  fontSize: 12.sp),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customButton(
                    text: TextStringConstant.decline,
                    isDecline: true,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return dialog(context);
                          });
                    },
                  ),
                  customButton(
                    text: TextStringConstant.approve,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return dialog(context);
                          });
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }
}
