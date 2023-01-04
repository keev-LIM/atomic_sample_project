import 'package:atomic_sample_project/modules/text_book_list/controllers/text_book_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'atoms/floating_action_button_with_send_icon.dart';
import 'molecules/self_study_app_bar.dart';
import 'molecules/self_study_tap_bar.dart';
import 'molecules/self_study_toggle_button.dart';
import 'organisms/self_study_list.dart';

class TextBookListView extends GetView<TextBookListController> {
  const TextBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      // 플로팅 액션 버튼
      floatingActionButton:
          FloatingActionButtonWithSendIcon(controller: controller),
      // 앱바
      appBar: const SelfStudyAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 스마트, 교재 토글 버튼
          SelfStudyToggleButton(
            controller: controller,
          ),
          // 탭바 위젯
          SelfStudyTabBar(controller: controller),
          // [SelfStudyListDetail] 위젯의 리스트 위젯
          Expanded(
            child: SelfStudyList(
              controller: controller,
            ),
          ),
        ],
      ),
    );
  }
}
