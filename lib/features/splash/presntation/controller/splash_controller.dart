import 'package:get/get.dart';
import '../../../../core/constants.dart';
import '../../../../core/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    Future.delayed(
      Duration(seconds: Constants.splashTime), // example: 3 seconds
          () {
        Get.offAllNamed(Routes.outBoarding); // or any route you want
      },
    );
  }
}
