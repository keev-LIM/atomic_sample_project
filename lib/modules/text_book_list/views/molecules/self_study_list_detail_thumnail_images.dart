import 'package:atomic_sample_project/modules/text_book_list/controllers/text_book_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// [SelfStudyListDetailSubTitle]위젯을 탭하면 보이는 썸네일 이미지들의 위젯입니다.
class SelfStudyListDetailThumnailImages extends StatelessWidget {
  // 한 카드의 썸네일 이미지들 위젯
  const SelfStudyListDetailThumnailImages({
    super.key,
    required this.controller,
    required this.i,
    required this.j,
  });

  final TextBookListController controller;
  final int i;
  final int j;

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: controller.isOpenMap['$i$j'] == true ? 120 : 0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: controller.images,
          ),
        ));
  }
}
