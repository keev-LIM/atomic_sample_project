import 'package:atomic_sample_project/modules/text_book_list/views/molecules/self_study_list_detail_thumnail_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/text_book_list_controller.dart';

class SelfStudyListDetailSubTitle extends StatelessWidget {
  const SelfStudyListDetailSubTitle({
    Key? key,
    required this.controller,
    required this.i,
    required this.j,
  }) : super(key: key);

  final TextBookListController controller;
  final int i;
  final int j;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.white,
          child: InkWell(
            onTap: () => controller.onOpenTap(i, j),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => Text(
                    '${controller.subTitles[j]} p.${controller.tabIndex.value} ~ p${controller.tabIndex.value + 10}')),
                Obx(() => Icon(
                      controller.isOpenMap['$i$j'] != true
                          ? Icons.arrow_circle_down_outlined
                          : Icons.arrow_circle_up_outlined,
                      size: 24,
                      color: Colors.grey,
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
