import 'package:flutter/material.dart';

import '../../controllers/text_book_list_controller.dart';

class SelfStudyListDetailTitle extends StatelessWidget {
  const SelfStudyListDetailTitle({
    Key? key,
    required this.controller,
    required this.index,
  }) : super(key: key);

  final TextBookListController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(controller.titles[index]);
  }
}
