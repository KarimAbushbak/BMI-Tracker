import 'package:bmi_tracker/core/resources/manager_colors.dart';
import 'package:bmi_tracker/core/resources/manager_font_sizes.dart';
import 'package:bmi_tracker/core/resources/manager_font_weight.dart';
import 'package:bmi_tracker/core/resources/manager_height.dart';
import 'package:bmi_tracker/core/resources/manager_width.dart';
import 'package:bmi_tracker/features/bmi_calculator/presntation/controller/bmi_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
              child: Row(
                children: [
                  Container(
                    height: ManagerHeight.h175,
                    width: ManagerWidth.w155,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: ManagerHeight.h24),
                              child: Text('Age')),
                          Obx(() => Text(
                                controller.age.string,
                                style: TextStyle(
                                  color: controller.isMale.value ? Colors.pink:ManagerColors.primaryColor,
                                  fontSize: ManagerFontSizes.s50,
                                  fontWeight: ManagerFontWeight.bold,
                                ),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  controller.decrementAge();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF0A1D5E),
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(12),
                                  elevation: 0,
                                ),
                                child: Icon(Icons.remove, color: Colors.white),
                              ),
                              SizedBox(width: 20),
                              // Plus button
                              ElevatedButton(
                                onPressed: () {
                                  controller.incrementAge();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF0A1D5E),
                                  // Dark blue color
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(12),
                                  elevation: 0,
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: ManagerHeight.h175,
                    width: ManagerWidth.w155,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: ManagerHeight.h24),
                              child: Text('Weight')),
                          Obx(() => Text(
                                controller.weight.string,
                                style: TextStyle(
                                  color: controller.isMale.value ? Colors.pink:ManagerColors.primaryColor,
                                  fontSize: ManagerFontSizes.s50,
                                  fontWeight: ManagerFontWeight.bold,
                                ),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  controller.decrementWeight();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF0A1D5E),
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(12),
                                  elevation: 0,
                                ),
                                child: Icon(Icons.remove, color: Colors.white),
                              ),
                              SizedBox(width: 20),
                              // Plus button
                              ElevatedButton(
                                onPressed: () {
                                  controller.incrementWeight();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF0A1D5E),
                                  // Dark blue color
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(12),
                                  elevation: 0,
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ManagerHeight.h24,
            ),
            Container(
              width: ManagerWidth.w333,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: ManagerHeight.h18),
                        child: Text('Height (CM)')),
                    Obx(() => Text(
                          controller.height.value.toInt().toString(),
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: controller.isMale.value ? Colors.pink:ManagerColors.primaryColor,
                          ),
                        )),
                    Obx(() => Slider(
                          value: controller.height.value,
                          min: 50,
                          max: 300,
                          activeColor: controller.isMale.value ? Colors.pink:ManagerColors.primaryColor,
                          inactiveColor: Colors.grey[300],
                          onChanged: (value) {
                            controller.height.value = value;
                          },
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: ManagerWidth.w25),
                          child: Text(
                            "50 cm",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: ManagerWidth.w25),
                          child: Text(
                            "300 cm",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: ManagerHeight.h24,
            ),
            Container(
              width: ManagerWidth.w333,
              height: ManagerHeight.h135,
              decoration: BoxDecoration(
                color: ManagerColors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: ManagerHeight.h24),
                      child: Text('Gender'),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: ManagerWidth.w45,
                      ),
                      Text('Male'),
                      SizedBox(
                        width: ManagerWidth.w14,
                      ),
                      Obx(() => FlutterSwitch(
                            width: ManagerWidth.w132,
                            height: ManagerHeight.h40,
                            value: controller.isMale.value,
                            onToggle: (value) {
                              controller.toggleGender(value);
                            },
                            activeColor: Colors.pink,
                            inactiveColor: ManagerColors.primaryColor,
                          )),
                      SizedBox(
                        width: ManagerWidth.w6,
                      ),
                      Text('Female'),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: ManagerHeight.h30,),
            Obx(() => ElevatedButton(
              onPressed: () {
                // Get.toNamed(Routes.bmiCalculator);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: controller.isMale.value
                    ? Colors.pink
                    : ManagerColors.primaryColor,
                foregroundColor: ManagerColors.bmiCalculatorBackground,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: ManagerWidth.w120,
                    vertical: ManagerHeight.h20),
                elevation: 0,
              ),
              child: Text(
                'Calculate BMI',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ))

          ],
        ),
      );
    });
  }
}
