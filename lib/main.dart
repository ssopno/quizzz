
//
//
//
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:quizzz/routes/app_routes.dart';
//
// import 'binding/initial_bindings.dart';
// import 'controller/common/theme_controller.dart';
// import 'firebase_option.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await initFireBase();
//   InitialBinding().dependencies();
//
//   SystemChrome.setPreferredOrientations(
//       [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
//     runApp(const MyApp());
//   });
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static final GlobalKey<NavigatorState> navigatorKey = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       navigatorKey: navigatorKey,
//       title: 'Flutter Demo',
//       theme: Get.find<ThemeController>().getLightheme(),
//       darkTheme: Get.find<ThemeController>().getDarkTheme(),
//       getPages: AppRoutes.pages(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzz/screens/data_uploader_screen.dart';

import 'firebase_option.dart';

Future<void> initFireBase() async {
  if(Firebase.apps.isEmpty){
   await Firebase.initializeApp(
    name: 'quizzle-demo',
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
}

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await initFireBase();
  runApp(GetMaterialApp(
    home: DataUploaderScreen(),
  ));
}

