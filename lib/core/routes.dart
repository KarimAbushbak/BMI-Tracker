import 'package:bmi_tracker/features/bmi_calculator/presntation/view/bmi_calculator.dart';
import 'package:flutter/material.dart';

import '../config/dependancy_injection.dart';
import '../features/main_screen/presntation/view/main_screen.dart';
import '../features/outboarding/presntation/view/outboarding_view.dart';
import '../features/splash/presntation/view/splash_screen.dart';



class Routes {
  static const String splashScreen = '/splash_screen';
  static const String languagePage = '/language_page';
  static const String homeView = '/homeView';
  static const String outBoarding = '/outBoardingView';
  static const String loginView = '/loginView';
  static const String registerView = '/registerView';
  static const String profileView = '/profileView';
  static const String detailsView = '/detailsView';
  static const String settingsView = '/settingsView';
  static const String cartView = '/cartView';
  static const String brandView = '/brandView';
  static const String questionPage = '/questionPage';
  static const String resultPage = '/resultPage';
  static const String mainScreen = '/mainScreen';
  static const String bmiCalculator = '/bmiCalculator';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        initSplash();
        return MaterialPageRoute(builder: (_) =>   SplashScreen());
      // case Routes.outBoarding:
      //   return MaterialPageRoute(builder: (_) => const OutBoardingView());
      case Routes.mainScreen:
        return MaterialPageRoute(builder: (_) => MainScreen());
      case Routes.bmiCalculator:
        return MaterialPageRoute(builder: (_) => BmiCalculator());
      // case Routes.registerView:
      //   initAuth();
      //   return MaterialPageRoute(builder: (_) => RegisterView());
      // case Routes.homeView:
      //   return MaterialPageRoute(builder: (_) => HomeView());



    // case Routes.profileView:
      //   initProfile();
      //   return MaterialPageRoute(builder: (_) => ProfileView());
      // case Routes.settingsView:
      //   initSettings();
      //   return MaterialPageRoute(builder: (_) => SettingView());
      // case Routes.detailsView:
      //   initDetails();
      //   return MaterialPageRoute(builder: (_) => DetailsView());
      // case Routes.cartView:
      //   initCart();
      //   return MaterialPageRoute(builder: (_) => CartView());
      // // case Routes.localeView:
      //   initLocale();
      //
      //   return MaterialPageRoute(builder: (_) =>  LocaleView());

      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text("ManagerStrings.notFoundRoute"),
        ),
      ),
    );
  }
}
