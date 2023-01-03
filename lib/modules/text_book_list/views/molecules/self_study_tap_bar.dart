import 'package:flutter/material.dart';

import '../../controllers/text_book_list_controller.dart';

class SelfStudyTabBar extends StatelessWidget {
  const SelfStudyTabBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextBookListController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 30,
      child: TabBar(
        controller: controller.tabController,
        isScrollable: true,
        tabs: controller.tabBarTextWidgets,
        onTap: controller.onTabBarTap,
        //indicator: ContainerTabIndicator(),
        indicatorWeight: 3.0,

        labelPadding: const EdgeInsets.only(left: 8, right: 8),
        labelColor: Colors.purple,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.purple,
        indicatorSize: TabBarIndicatorSize.label,
      ),
    );
  }
}
