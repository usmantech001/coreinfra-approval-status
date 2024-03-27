import 'package:coreinfra_project/utils/constants/colors.dart';
import 'package:coreinfra_project/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customSearch(){
  return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          height: 55.h,
          child: Card(
            elevation: 0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.sp),
                  side: BorderSide.none
                  ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    cursorColor: AppColors.mainColor,
                    decoration: InputDecoration(
                      isDense: true,
                      
                      prefixIcon: Container(
                        padding: EdgeInsets.all(12.sp),
                        height: 5.h,
                        child: Image.asset(ImageStringConstant.search,)),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: AppColors.searchTextColor,
                        fontSize: 12.sp
                      ),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                         borderSide:const BorderSide(
                         color: AppColors.borderColor
                        ),
                       borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:const BorderSide(
                         color: AppColors.borderColor,
                         
                        ),
                        borderRadius: BorderRadius.circular(10.sp)
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide.none
                      ),
                      focusedErrorBorder:const  OutlineInputBorder(
                        borderSide: BorderSide.none
                      ),
                     
                    ),
                  ),
                ),
                SizedBox(width: 5.w,),
               const Icon(Icons.calendar_today_outlined, color: AppColors.calenderIconColor,)
              ],
            ),
          ),
        );
}