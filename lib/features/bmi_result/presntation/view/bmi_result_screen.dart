import 'package:bmi_tracker/core/resources/manager_colors.dart';
import 'package:bmi_tracker/core/resources/manager_font_weight.dart';
import 'package:bmi_tracker/core/resources/manager_width.dart';
import 'package:bmi_tracker/features/bmi_calculator/presntation/controller/bmi_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_height.dart';

class BmiResultScreen extends StatelessWidget {
  const BmiResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BmiController>(builder: (controller) {
      return Scaffold(
        backgroundColor: ManagerColors.bmiCalculatorBackground,
        body: Column(
          children: [
            Center(
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: ManagerHeight.h50),
                    child: Text(
                      "Bmi calculator",
                      style: TextStyle(
                          color: ManagerColors.mainButtonScreenText,
                          fontSize: ManagerFontSizes.s18),
                    ))),
            SizedBox(
              height: ManagerHeight.h68,
            ),
            Center(
              child: Text(
                'Body Mass Index',
                style: TextStyle(fontSize: ManagerFontSizes.s26),
              ),
            ),
            SizedBox(
              height: ManagerHeight.h40,
            ),
            Container(
              height: ManagerHeight.h490,
              width: ManagerWidth.w333,
              decoration: BoxDecoration(
                color: ManagerColors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: ManagerHeight.h56)),
                  Text(
                    'BMI Result',
                    style: TextStyle(fontSize: ManagerFontSizes.s30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        controller.bmiIntegerPart.string,
                        style: TextStyle(
                            color: controller.isMale.value
                                ? Colors.pink
                                : ManagerColors.primaryColor,
                            fontSize: ManagerFontSizes.s140,
                            fontWeight: ManagerFontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 70),
                        child: Text(
                          '.${controller.bmiDecimalPart.value}',
                          style: TextStyle(
                              color: controller.isMale.value
                                  ? Colors.pink
                                  : ManagerColors.primaryColor,
                              fontSize: ManagerFontSizes.s40,
                              fontWeight: ManagerFontWeight.regular),
                        ),
                      )
                    ],
                  ),
                  Text(
                    controller.getBmiCategory(
                        controller.bmiIntegerPart.value +
                            (controller.bmiDecimalPart.value / 100)),
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s24,
                      fontWeight: ManagerFontWeight.regular,
                      color: ManagerColors.mainButtonScreenText,
                    ),
                  ),
                  SizedBox(height: ManagerHeight.h20,),
                  Text(
                    'Underweight: BMI less than 18.5',
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s13,
                      fontWeight: ManagerFontWeight.regular,
                      color: ManagerColors.mainButtonScreenText,
                    ),
                  ),
                  Text(
                    'Normal weight: BMI 18.5 to 24.9',
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s13,
                      fontWeight: ManagerFontWeight.regular,
                      color: ManagerColors.mainButtonScreenText,
                    ),
                  ),
                  Text(
                    'Overweight: BMI 25 to 29.9',
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s13,
                      fontWeight: ManagerFontWeight.regular,
                      color: ManagerColors.mainButtonScreenText,
                    ),
                  ),
                  Text(
                    'Obesity: 30 to 40',
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s13,
                      fontWeight: ManagerFontWeight.regular,
                      color: ManagerColors.mainButtonScreenText,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
