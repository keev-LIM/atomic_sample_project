import 'package:get/get.dart';

import '../modules/text_book_list/bindings/text_book_list_binding.dart';
import '../modules/text_book_list/views/textbook_list_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: _Paths.INITIAL,
      page: () => const TextBookListView(),
      binding: TextBookListBinding(),
      transition: Transition.fade,
    ),
  ];
}
