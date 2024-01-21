import 'package:flutter/material.dart';
import 'package:gaytri_s_application4/presentation/getting_started_page_screen/getting_started_page_screen.dart';
import 'package:gaytri_s_application4/presentation/personal_info_page_one_screen/personal_info_page_one_screen.dart';
import 'package:gaytri_s_application4/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String gettingStartedPageScreen = '/getting_started_page_screen';

  static const String personalInfoPageOneScreen =
      '/personal_info_page_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        gettingStartedPageScreen: GettingStartedPageScreen.builder,
        personalInfoPageOneScreen: PersonalInfoPageOneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: GettingStartedPageScreen.builder
      };
}
