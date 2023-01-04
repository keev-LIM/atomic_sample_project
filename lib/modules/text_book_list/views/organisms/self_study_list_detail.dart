import 'package:flutter/material.dart';

import '../../controllers/text_book_list_controller.dart';
import '../atoms/self_study_list_detail_title.dart';
import '../molecules/self_study_list_detail_sub_title.dart';
import '../molecules/self_study_list_detail_thumnail_images.dart';

class SelfStudyListDetail extends StatelessWidget {
  /// 하나의 타이틀과 서브타이틀들, 썸네일을 가진 카드 블록 위젯
  const SelfStudyListDetail({
    Key? key,
    required this.controller,
    required this.i,
  }) : super(key: key);

  final TextBookListController controller;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
        margin: const EdgeInsets.fromLTRB(16, 20, 16, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 한 카드의 제목 위젯
            SelfStudyListDetailTitle(controller: controller, index: i),
            const SizedBox(height: 16),
            Column(
              children: [
                for (int j = 0; j < controller.subTitles.length; j++)
                  Column(
                    children: [
                      // 한 카드의 소제목 위젯
                      SelfStudyListDetailSubTitle(
                          controller: controller, i: i, j: j),
                      const SizedBox(height: 12),
                      // 한 카드의 썸네일 이미지들 위젯
                      SelfStudyListDetailThumnailImages(
                          controller: controller, i: i, j: j),
                      const SizedBox(height: 24),
                    ],
                  ),
              ],
            )
          ],
        ));
  }
}
