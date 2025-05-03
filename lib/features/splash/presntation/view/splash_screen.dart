import 'package:flutter/material.dart';
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
            backgroundColor: Colors.white, // Light background
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(), // Push logo and text a bit down
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // App Logo
                    Image.asset(
                      ManagerAssets.splash,
                      width: 60, // Adjust logo size
                      height: 60,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Foodu",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87, // Dark text like your image
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 32.0),
                  child: CircularProgressIndicator(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}
