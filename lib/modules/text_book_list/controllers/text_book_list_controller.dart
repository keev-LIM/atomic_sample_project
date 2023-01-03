import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextBookListController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var bookList = [].obs;

  Rx<bool> isSmart = true.obs;

  Rx<int> tabIndex = 0.obs;

  late TabController tabController;

  List<String> titles = ['수학 - 고2', '수학 - 고3', '수학 - 고4'];
  List<String> subTitles = [
    '1. 첫번째 단원',
    '2. 두번째 단원',
    '3. 세번째 단원',
    '4. 네번째 단원',
    '5. 다섯번째 단원',
  ];
  List<Widget> images = [
    Container(
      color: Colors.red,
      width: 100,
    ),
    Container(
      color: Colors.blue,
      width: 100,
    ),
    Container(
      color: Colors.red,
      width: 100,
    ),
    Container(
      color: Colors.blue,
      width: 100,
    ),
    Container(
      color: Colors.red,
      width: 100,
    ),
    Container(
      color: Colors.blue,
      width: 100,
    ),
  ];
  List<Widget> tabBarTextWidgets = const [
    Text('센 고2뭐시기'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
    Text('블랙라벨 수2'),
  ];

  final isOpenMap = RxMap<String, bool>();

  @override
  void onInit() {
    tabController = TabController(length: 20, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  onSmartTextButtonPressed() => isSmart.value = true;
  onTextBookTextButtonPressed() => isSmart.value = false;
  onTabBarTap(int index) => tabIndex.value = index;
  onOpenTap(int i, int j) {
    isOpenMap['$i$j'] = isOpenMap['$i$j'] == null ? true : !isOpenMap['$i$j']!;
  }

  onFloatingActionButtonPressed() {
    Get.snackbar(
      '플로팅 액션 버튼',
      'hi',
      snackPosition: SnackPosition.BOTTOM,
      forwardAnimationCurve: Curves.elasticInOut,
      reverseAnimationCurve: Curves.easeOut,
    );
  }
}
