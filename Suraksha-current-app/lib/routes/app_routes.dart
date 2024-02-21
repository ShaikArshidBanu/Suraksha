import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/presentation/onboarding_page_screen/onboarding_page_screen.dart';
import 'package:suraksha_demo_app/presentation/choose_your_language_one_screen/choose_your_language_one_screen.dart';
import 'package:suraksha_demo_app/presentation/choose_your_language_two_screen/choose_your_language_two_screen.dart';
import 'package:suraksha_demo_app/presentation/getting_started_page_screen/getting_started_page_screen.dart';
import 'package:suraksha_demo_app/presentation/login_page_one_screen/login_page_one_screen.dart';
import 'package:suraksha_demo_app/presentation/login_page_two_screen/login_page_two_screen.dart';
import 'package:suraksha_demo_app/presentation/login_page_four_screen/login_page_four_screen.dart';
import 'package:suraksha_demo_app/presentation/login_page_five_screen/login_page_five_screen.dart';
import 'package:suraksha_demo_app/presentation/login_page_six_screen/login_page_six_screen.dart';
import 'package:suraksha_demo_app/presentation/login_page_seven_screen/login_page_seven_screen.dart';
import 'package:suraksha_demo_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:suraksha_demo_app/presentation/personal_info_page/personal_info_page_screen.dart';
import 'package:suraksha_demo_app/presentation/emergency_contact_adding_screen/emergency_contact_adding_screen.dart';
import 'package:suraksha_demo_app/presentation/permissions_page_screen/permissions_page_screen.dart';
import  'package:suraksha_demo_app/presentation/home_page_screen/home_page_screen.dart';

class AppRoutes {
  static const String onboardingPageScreen = '/onboarding_page_screen';

  static const String chooseYourLanguageOneScreen =
      '/choose_your_language_one_screen';

  static const String chooseYourLanguageTwoScreen =
      '/choose_your_language_two_screen';

  static const String gettingStartedPageScreen = '/getting_started_page_screen';

  static const String loginPageOneScreen = '/login_page_one_screen';

  static const String loginPageTwoScreen = '/login_page_two_screen';

  static const String loginPageFourScreen = '/login_page_four_screen';

  static const String loginPageFiveScreen = '/login_page_five_screen';

  static const String loginPageSixScreen = '/login_page_six_screen';

  static const String loginPageSevenScreen = '/login_page_seven_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static const String personalInfoPageScreen='/personal_info_page_screen';

  static const String emergencyContactAddingScreen='/emergency_contact_adding_screen';

  static const String permissionsPageScreen='/permissions_page_screen';

  static const String homePageScreen='/home_page_screen';

  static Map<String, WidgetBuilder> get routes => {
        onboardingPageScreen: OnboardingPageScreen.builder,
        chooseYourLanguageOneScreen: ChooseYourLanguageOneScreen.builder,
        chooseYourLanguageTwoScreen: ChooseYourLanguageTwoScreen.builder,
        gettingStartedPageScreen: GettingStartedPageScreen.builder,
        loginPageOneScreen: LoginPageOneScreen.builder,
        loginPageTwoScreen: LoginPageTwoScreen.builder,
        loginPageFourScreen: LoginPageFourScreen.builder,
        loginPageFiveScreen: LoginPageFiveScreen.builder,
        loginPageSixScreen: LoginPageSixScreen.builder,
        loginPageSevenScreen: LoginPageSevenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OnboardingPageScreen.builder,
        personalInfoPageScreen:PersonalInfoPageScreen.builder,
        emergencyContactAddingScreen:EmergencyContactAddingScreen.builder,
        permissionsPageScreen:PermissionsPageScreen.builder,
        homePageScreen:HomePageScreen.builder,
      };
}


