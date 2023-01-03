import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelfStudyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SelfStudyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 48,
      centerTitle: false,
      backgroundColor: Colors.white,
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Row(
        children: [
          const SizedBox(width: 16),
          IconButton(
            onPressed: () => Get.back(),
            iconSize: 24,
            splashRadius: 24,
            constraints: const BoxConstraints(),
            padding: EdgeInsets.zero,
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
          const Text(
            '자습 - 수학',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
