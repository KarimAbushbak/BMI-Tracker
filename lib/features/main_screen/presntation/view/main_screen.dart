import 'package:bmi_tracker/core/resources/manager_colors.dart';
import 'package:bmi_tracker/core/resources/manager_height.dart';
import 'package:bmi_tracker/core/resources/manager_width.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../splash/presntation/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        builder: (controller) {
          return Scaffold(
            backgroundColor: ManagerColors.primaryColor,
            body: Column(
              children: [
                Text("data"),
                Center(
                  child: Container(
                    width: ManagerWidth.w300,
                    height: ManagerHeight.h250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                ManagerAssets.splash
                            )
                        )
                    ),
                  ),

                ),
              ],
            ),

          );
        }
    );
  }
}
