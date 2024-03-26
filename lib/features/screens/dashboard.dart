import 'package:coreinfra_project/features/screens/status.dart';
import 'package:coreinfra_project/utils/constants/colors.dart';
import 'package:coreinfra_project/utils/constants/image_string.dart';
import 'package:coreinfra_project/utils/widgets/custom_icon.dart';
import 'package:coreinfra_project/utils/widgets/dashboard_container.dart';
import 'package:coreinfra_project/utils/widgets/list_tile.dart';
import 'package:coreinfra_project/utils/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 80.h,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            boldText(
              text: 'Field Agent',
            ),
            Row(
              children: [
                appBarIcon(icon: Icons.notification_important_sharp),
                const SizedBox(
                  width: 15,
                ),
                appBarIcon(icon: Icons.search)
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                children: [
                  dashboardContainer(
                      imagePath: ImageStringConstant.cashDeposit,
                      firstText: 'Cash',
                      secondText: 'Deposit',
                      backgroundColor: const Color(0xFF6B75FF).withOpacity(0.1), onTap: () {  }),
                     
                  dashboardContainer(
                      imagePath: ImageStringConstant.cashWithdrawal,
                      firstText: 'Cash',
                      secondText: 'Withdrawal',
                      backgroundColor: const Color(0xFFCF3B62).withOpacity(0.1), onTap: () {  }),
                  dashboardContainer(
                      imagePath: ImageStringConstant.createCustomer,
                      firstText: 'Create new',
                      secondText: 'Customer',
                      backgroundColor: const Color(0xFFFFC633).withOpacity(0.1), onTap: () {  }),
                  dashboardContainer(
                      imagePath: ImageStringConstant.chart,
                      firstText: 'User',
                      secondText: 'Profile',
                      backgroundColor: const Color(0xFF6D5FFE).withOpacity(0.1), onTap: () {  }),
                  dashboardContainer(
                      imagePath: ImageStringConstant.chart,
                      firstText: 'Approval',
                      secondText: 'Status',
                      backgroundColor:const Color(0xFFC30A3B).withOpacity(0.1), onTap: () { 
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const StatusScreen()));
                       }),
                ],
              ),
              
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  boldText(
                      text: 'Transactions',
                      textColor: AppColors.boldText1,
                      fontSize: 18),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.buttonBorderColor),
                        borderRadius: BorderRadius.circular(15.sp)),
                    child: smallText(text: 'see all'),
                  )
                ],
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 20,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return listTile();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
