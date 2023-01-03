import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/text_book_list_controller.dart';

class SelfStudyToggleButton extends StatelessWidget {
  const SelfStudyToggleButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextBookListController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          TextButton(
            onPressed: controller.onSmartTextButtonPressed,
            child: Obx(() => Text(
                  '스마트',
                  style: TextStyle(
                    color:
                        controller.isSmart.value ? Colors.purple : Colors.grey,
                    fontSize: 19,
                  ),
                )),
          ),
          TextButton(
            onPressed: controller.onTextBookTextButtonPressed,
            child: Obx(() => Text(
                  '교재',
                  style: TextStyle(
                    color:
                        controller.isSmart.value ? Colors.grey : Colors.purple,
                    fontSize: 19,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
