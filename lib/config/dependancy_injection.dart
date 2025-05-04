
import 'package:bmi_tracker/features/bmi_calculator/presntation/controller/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../features/splash/presntation/controller/splash_controller.dart';

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
}
initSplash() {
  Get.put<SplashController>(SplashController());
}

disposeSplash() {
  Get.delete<SplashController>();
}
initBmi() {
  disposeSplash();

  Get.put<BmiController>(BmiController());
// }
//
// disposeAuth() {
//   Get.delete<AuthController>();
// }
// initHome() {
//   disposeSplash();
//
//   Get.put<HomeController>(HomeController());
// }
// initLocale(){
//   Get.put<LocaleNotifierController>(LocaleNotifierController());
// }}}
}