import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

import '../../../../core/routes.dart';

class BmiController extends GetxController {
  RxDouble height = 175.0.obs;
  RxInt age = 50.obs;
  RxInt weight = 60.obs;
  RxInt bmiIntegerPart = 0.obs;
  RxInt bmiDecimalPart = 0.obs;
  String bmiResult = '';


  RxBool isMale = false.obs;

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

    bmiIntegerPart.value = bmi.floor();

    double decimal = bmi - bmi.floor();
    bmiDecimalPart.value = (decimal * 100).round();

    Get.toNamed(Routes.bmiResultScreen);

    return bmi;
  }
  String getBmiCategory(double bmi) {
    if (bmi < 18.5) {
      bmiResult = "Underweight";
    } else if (bmi >= 18.5 && bmi < 25) {
      bmiResult = "Normal BMI";
    } else if (bmi >= 25 && bmi < 30) {
      bmiResult = "Overweight";
    } else {
      bmiResult = "Obesity";
    }
    return bmiResult; // 🔵 You must RETURN the result
  }


}
