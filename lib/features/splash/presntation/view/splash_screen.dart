import 'package:bmi_tracker/core/resources/manager_colors.dart';
import 'package:bmi_tracker/core/resources/manager_font_sizes.dart';
import 'package:bmi_tracker/core/resources/manager_font_weight.dart';
import 'package:bmi_tracker/core/resources/manager_fonts.dart';
import 'package:bmi_tracker/core/resources/manager_height.dart';
import 'package:bmi_tracker/core/resources/manager_strings.dart';
import 'package:bmi_tracker/core/resources/manager_width.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../core/resources/manager_assets.dart';
import '../controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        builder: (controller) {
          return Scaffold(
            backgroundColor: ManagerColors.primaryColor,
                body: Center(
                  child: Text(
                    ManagerStrings.appName,
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s40,
                      fontFamily: ManagerFontFamily.appFont,
                      fontWeight: ManagerFontWeight.w800,
                      color: ManagerColors.white
                    ),
                  )

                          ),

          );
        }
    );
  }
}
