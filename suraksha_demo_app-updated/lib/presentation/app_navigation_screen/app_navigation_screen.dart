import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "onboarding page ".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "choose your language - One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chooseYourLanguageOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "choose your language - Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chooseYourLanguageTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "getting started page".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.gettingStartedPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "login page - One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loginPageOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "login page -Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loginPageTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "login page - Four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loginPageFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "login page - Five".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loginPageFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "login page - Six".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loginPageSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "login page - Seven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.loginPageSevenScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
