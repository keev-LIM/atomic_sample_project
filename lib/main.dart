import 'package:atomic_sample_project/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}

// / Nav 2 snippet
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp.router(
//       getPages: [
//         GetPage(
//             participatesInRootNavigator: true,
//             name: '/first',
//             page: () => First()),
//         GetPage(
//           name: '/second',
//           page: () => Second(),
//         ),
//         GetPage(
//           name: '/third',
//           page: () => Third(),
//         ),
//       ],
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class First extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('page one'),
//         leading: IconButton(
//           icon: Icon(Icons.more),
//           onPressed: () {
//             Get.changeTheme(
//                 context.isDarkMode ? ThemeData.light() : ThemeData.dark());
//           },
//         ),
//       ),
//       body: Center(
//         child: Container(
//           height: 300,
//           width: 300,
//           child: ElevatedButton(
//             onPressed: () {},
//             child: Text('next screen'),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Second extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('page two ${Get.parameters["id"]}'),
//       ),
//       body: Center(
//         child: Container(
//           height: 300,
//           width: 300,
//           child: ElevatedButton(
//             onPressed: () {},
//             child: Text('next screen'),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Third extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.red,
//       appBar: AppBar(
//         title: Text('page three'),
//       ),
//       body: Center(
//         child: Container(
//           height: 300,
//           width: 300,
//           child: ElevatedButton(
//             onPressed: () {},
//             child: Text('go to first screen'),
//           ),
//         ),
//       ),
//     );
//   }
// }