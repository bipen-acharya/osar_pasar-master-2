import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osar_pasar/screens/home.dart';

import 'controller/home_controller.dart';

void main() {
  Get.put(HomeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:nepal_administrative_division/enums.dart';
// import 'package:nepal_administrative_division/nepal_administrative_division.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Material App Bar'),
//         ),
//         body: 
//         Column(
//           children: [
//             const NepalAdminstrativeArea(
//               areaType: AreaType.province,
//             ),
//             const NepalAdminstrativeArea(
//               areaType: AreaType.district,
//             ),
//             const NepalAdminstrativeArea(
//               areaType: AreaType.localLevel,
//             ),
//             NepalAdminstrativeArea(
//               provinceLabel: "state",
//               useNepaliText: true,
//               ontap: (value, areatype) {
//                 debugPrint(value);
//                 debugPrint(areatype.toString());
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
