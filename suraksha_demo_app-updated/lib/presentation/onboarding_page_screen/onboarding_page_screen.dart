import 'bloc/onboarding_page_bloc.dart';
import 'models/onboarding_page_model.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/core/app_export.dart';

class OnboardingPageScreen extends StatelessWidget {
  const OnboardingPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingPageBloc>(
        create: (context) => OnboardingPageBloc(
            OnboardingPageState(onboardingPageModelObj: OnboardingPageModel()))
          ..add(OnboardingPageInitialEvent()),
        child: OnboardingPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingPageBloc, OnboardingPageState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.all(36.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Spacer(flex: 56),
                        Container(
                            margin: EdgeInsets.only(left: 19.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 59.h, vertical: 83.v),
                            decoration: AppDecoration.fillPink.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder7),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 23.v),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSecurityShield,
                                      height: 90.adaptSize,
                                      width: 90.adaptSize),
                                  SizedBox(height: 12.v),
                                  Text("lbl_suraksha".tr,
                                      style: theme.textTheme.displayLarge),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 39.h),
                                          child: Text("msg_women_safety_app".tr,
                                              style:
                                                  theme.textTheme.titleSmall)))
                                ])),
                        Spacer(flex: 43),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage2,
                            height: 45.adaptSize,
                            width: 45.adaptSize,
                            onTap: () {
                              onTapImgImageTwo(context);
                            })
                      ]))));
    });
  }

  /// Navigates to the chooseYourLanguageOneScreen when the action is triggered.
  onTapImgImageTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chooseYourLanguageOneScreen,
    );
  }
}
