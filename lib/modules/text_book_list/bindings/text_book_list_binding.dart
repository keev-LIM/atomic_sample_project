// 📦 Package imports:
import 'package:get/get.dart';

import '../controllers/text_book_list_controller.dart';

class TextBookListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TextBookListController>(
      () => TextBookListController(),
    );
  }
}
