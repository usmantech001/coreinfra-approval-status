import 'package:coreinfra_project/utils/constants/colors.dart';
import 'package:coreinfra_project/utils/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget listTile() {
  return Container(
    margin: EdgeInsets.only(top: 10.h),
    padding: EdgeInsets.symmetric(vertical: 10.h),
    decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.bottomBorderColor))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            boldText(
                text: 'Withdrawal',
                textColor: AppColors.homeBlackColor,
                fontSize: 12.sp,
                fontFamily: 'Encode Sans'),
            smallText(
                text: 'GTBank/chrisnwabuokei/0569946101',
                textColor: AppColors.homeGreyColor,
                fontSize: 11.sp)
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            boldText(
                text: '₦4,000.00',
                textColor: AppColors.homeAmountColor,
                fontSize: 12.sp),
            smallText(
                text: '24-Feb-2024',
                textColor: AppColors.homeGreyColor,
                fontSize: 10.sp)
          ],
        )
      ],
    ),
  );
}

Widget tabBarViewListTile(
    {required String statusText,
    required Color textColor,
    VoidCallback? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(color: AppColors.bottomBorderColor))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 35.h,
                width: 35.w,
                decoration: BoxDecoration(
                    //color: Colors.red,
                    border: Border.all(color: AppColors.borderColor),
                    shape: BoxShape.circle),
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  boldText(text: 'Cash Withdrawal', fontSize: 13),
                  smallText(
                      text: 'CTRANS-473875889983',
                      textColor: AppColors.statusGreyColor,
                      fontSize: 10)
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              boldText(
                  text: '₦25,000.00',
                  textColor: AppColors.statusAmountColor,
                  fontSize: 12),
              boldText(text: statusText, textColor: textColor, fontSize: 12)
            ],
          )
        ],
      ),
    ),
  );
}
