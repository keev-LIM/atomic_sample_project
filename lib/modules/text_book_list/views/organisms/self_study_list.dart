import 'package:flutter/material.dart';

import '../../controllers/text_book_list_controller.dart';
import 'self_study_list_detail.dart';

class SelfStudyList extends StatelessWidget {
  ///[SelfStudyListDetail] 위젯의 리스트 위젯
  const SelfStudyList({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextBookListController controller;

  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true, children: [
      for (int i = 0; i < controller.titles.length; i++)
        // 하나의 타이틀과 서브타이틀들, 썸네일을 가진 카드 블록 위젯
        SelfStudyListDetail(controller: controller, i: i),
    ]);
  }
}
