import 'package:flutter/material.dart';

import '../../controllers/text_book_list_controller.dart';

class FloatingActionButtonWithSendIcon extends StatelessWidget {
  const FloatingActionButtonWithSendIcon({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextBookListController controller;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: controller.onFloatingActionButtonPressed,
        child: const Icon(Icons.send));
  }
}
