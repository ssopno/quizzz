import 'package:get/get.dart';

import '../controller/auth_controller.dart';
import '../controller/common/theme_controller.dart';
import '../servies/firebasestorage_services.dart';
import '../servies/notification_services.dart';


class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController());
    //Get.put(PapersDataUploader());
    Get.put(AuthController(), permanent: true);
    Get.put(NotificationService());
    Get.lazyPut(() =>  FireBaseStorageService());
  }
}
