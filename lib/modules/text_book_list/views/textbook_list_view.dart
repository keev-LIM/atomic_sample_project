import 'package:atomic_sample_project/modules/text_book_list/controllers/text_book_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextBookListView extends GetView<TextBookListController> {
  const TextBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      // 플로팅 액션 버튼
      floatingActionButton: FloatingActionButton(
          onPressed: controller.onFloatingActionButtonPressed,
          child: const Icon(Icons.send)),

      /// 앱바 (자습 - 수학) 이런 형식
      appBar: AppBar(
        toolbarHeight: 48,
        centerTitle: false,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            const SizedBox(width: 16),
            IconButton(
              onPressed: () {},
              iconSize: 24,
              splashRadius: 24,
              constraints: const BoxConstraints(),
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
            const Text(
              '자습 - 수학',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 스마트, 교재 토글
          Container(
            color: Colors.white,
            child: Row(
              children: [
                TextButton(
                  onPressed: controller.onSmartTextButtonPressed,
                  child: Obx(() => Text(
                        '스마트',
                        style: TextStyle(
                          color: controller.isSmart.value
                              ? Colors.purple
                              : Colors.grey,
                          fontSize: 19,
                        ),
                      )),
                ),
                TextButton(
                  onPressed: controller.onTextBookTextButtonPressed,
                  child: Obx(() => Text(
                        '교재',
                        style: TextStyle(
                          color: controller.isSmart.value
                              ? Colors.grey
                              : Colors.purple,
                          fontSize: 19,
                        ),
                      )),
                ),
              ],
            ),
          ),
          // 탭바
          Container(
            color: Colors.white,
            height: 30,
            child: TabBar(
              controller: controller.tabController,
              isScrollable: true,
              tabs: const [
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
              ],
              onTap: controller.onTabBarTap,
              //indicator: ContainerTabIndicator(),
              indicatorWeight: 3.0,

              labelPadding: const EdgeInsets.only(left: 8, right: 8),
              labelColor: Colors.purple,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.purple,
              indicatorSize: TabBarIndicatorSize.label,
            ),
          ),
          // 아래 리스트 부분
          Expanded(
            child: ListView(shrinkWrap: true, children: [
              for (int i = 0; i < controller.titles.length; i++)

                /// 제목 부분
                Container(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                    margin: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(controller.titles[i]),
                        const SizedBox(height: 16),
                        Obx(() => Column(
                              children: [
                                for (int j = 0;
                                    j < controller.subTitles.length;
                                    j++)
                                  // 서브 타이틀 (1. 첫번째 단원 p.2~p12)
                                  Column(
                                    children: [
                                      Material(
                                        color: Colors.white,
                                        child: InkWell(
                                          onTap: () =>
                                              controller.onOpenTap(i, j),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                  '${controller.subTitles[j]} p.${controller.tabIndex.value} ~ p${controller.tabIndex.value + 10}'),
                                              controller.isOpenMap['$i$j'] ==
                                                      false
                                                  ? const Icon(
                                                      Icons
                                                          .arrow_circle_down_outlined,
                                                      size: 24,
                                                      color: Colors.grey,
                                                    )
                                                  : const Icon(
                                                      Icons
                                                          .arrow_circle_up_outlined,
                                                      size: 24,
                                                      color: Colors.grey,
                                                    ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // 서브타이틀을 터치하면 나오는 이미지 부분
                                      const SizedBox(height: 12),
                                      if (controller.isOpenMap['$i$j'] == true)
                                        AnimatedContainer(
                                          duration: const Duration(seconds: 2),
                                          height: 120,
                                          child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: controller.images,
                                          ),
                                        ),
                                      const SizedBox(height: 24),
                                    ],
                                  ),
                              ],
                            ))
                      ],
                    )),
            ]),
          ),
        ],
      ),
    );
  }
}
