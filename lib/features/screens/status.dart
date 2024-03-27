import 'package:coreinfra_project/features/screens/awaiting_approval.dart';
import 'package:coreinfra_project/utils/constants/colors.dart';
import 'package:coreinfra_project/utils/constants/text_string.dart';
import 'package:coreinfra_project/utils/helpers.dart';
import 'package:coreinfra_project/utils/widgets/custom_search.dart';
import 'package:coreinfra_project/utils/widgets/list_tile.dart';
import 'package:coreinfra_project/utils/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  late TabController controller;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      setState(() {
        index = controller.index;
      });
    });

    return Scaffold(
      appBar: AppBar(
        title: boldText(
            text: TextStringConstant.status,
            textColor: AppColors.appBarTextColor,
            fontSize: 16.sp),
        centerTitle: true,
        toolbarHeight: 60.h,
      ),
      body: Column(
        children: [
          TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelPadding: EdgeInsets.only(bottom: 5.h),
              indicatorColor: changeTabIndicatorColor(index),
              controller: controller,
              tabs: [
                Text(
                  TextStringConstant.approved,
                  style: changeTabTextStyle(0, index),
                ),
                Text(
                  TextStringConstant.pending,
                  style: changeTabTextStyle(1, index),
                ),
                Text(
                  TextStringConstant.declined,
                  style: changeTabTextStyle(2, index),
                )
              ]),
          customSearch(),
          Expanded(
            child: TabBarView(controller: controller, children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return tabBarViewListTile(
                        statusText: TextStringConstant.approved,
                        textColor: AppColors.approvedTextColor);
                  }),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return tabBarViewListTile(
                      statusText: TextStringConstant.awaitingApproval,
                      textColor: AppColors.pendingTextColor,
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const AwaitingApprovalScreen())),
                    );
                  }),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return tabBarViewListTile(
                        statusText: TextStringConstant.declined, textColor: AppColors.mainColor);
                  }),
            ]),
          )
        ],
      ),
    );
  }
}

