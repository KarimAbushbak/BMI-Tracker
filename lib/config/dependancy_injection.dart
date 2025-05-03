
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
// initAuth() {
//   disposeSplash();
//
//   Get.put<AuthController>(AuthController());
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
// }}
