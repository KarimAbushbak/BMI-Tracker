import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class BmiController extends GetxController {
  RxDouble height = 175.0.obs;
  RxInt age = 50.obs; // 🟰 Correct: RxInt not RxDouble
  RxInt weight = 12.obs;

  RxBool isMale = true.obs;

  void toggleGender(bool value) {
    isMale.value = value;
  }



  void incrementAge() {
    age++;
  }

  void decrementAge() {
    age--;
  }

  void incrementWeight() {
    weight++;
  }

  void decrementWeight() {
    weight--;
  }
  double calculateBmi() {
    double heightInMeters = height.value / 100;
    double bmi = weight.value / (heightInMeters * heightInMeters);
    return bmi;
  }


}
