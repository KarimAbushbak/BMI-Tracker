import 'package:bmi_tracker/core/resources/manager_colors.dart';
import 'package:bmi_tracker/core/resources/manager_height.dart';
import 'package:bmi_tracker/core/resources/manager_strings.dart';
import 'package:bmi_tracker/core/resources/manager_width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_fonts.dart';
import '../../../../core/routes.dart';
import '../../../splash/presntation/controller/splash_controller.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(builder: (controller) {
      return Scaffold(
        backgroundColor: ManagerColors.primaryColor,
        body: Center(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: ManagerHeight.h70),
                  child: Text(
                    ManagerStrings.appName,
                    style: TextStyle(
                        fontSize: ManagerFontSizes.s30,
                        fontFamily: ManagerFontFamily.appFont,
                        fontWeight: ManagerFontWeight.w800,
                        color: ManagerColors.white),
                  )),
              Container(
                width: ManagerWidth.w300,
                height: ManagerHeight.h250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ManagerAssets.splash))),
              ),
              SizedBox(
                height: ManagerHeight.h80,
              ),
              Padding(
                padding: EdgeInsets.only(right: ManagerWidth.w60),
                child: Text(
                  'Get Started With',
                  style: TextStyle(
                      fontSize: ManagerFontSizes.s26,
                      fontWeight: ManagerFontWeight.bold,
                      color: ManagerColors.white),
                ),
              ),
              Text(
                'Tracking Your Health!',
                style: TextStyle(
                    fontSize: ManagerFontSizes.s26,
                    fontWeight: ManagerFontWeight.bold,
                    color: ManagerColors.white),
              ),
              SizedBox(
                height: ManagerHeight.h16,
              ),
              Padding(
                padding: EdgeInsets.only(left: ManagerWidth.w25),
                child: Text(
                  'Calculate your BMI and stay on top of',
                  style: TextStyle(
                    color: ManagerColors.mainScreenSubTextColor,
                    fontSize: ManagerFontSizes.s16,
                  ),
                ),
              ),
              Text(
                'your wellness journey, effortlessly.',
                style: TextStyle(
                  color: ManagerColors.mainScreenSubTextColor,
                  fontSize: ManagerFontSizes.s16,
                ),
              ),
              SizedBox(
                height: ManagerHeight.h38,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(Routes.bmiCalculator);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ManagerColors.mainButtonScreen,
                  foregroundColor: ManagerColors.mainButtonScreenText,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: ManagerWidth.w120,
                      vertical: ManagerHeight.h20),
                  elevation: 0,
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
