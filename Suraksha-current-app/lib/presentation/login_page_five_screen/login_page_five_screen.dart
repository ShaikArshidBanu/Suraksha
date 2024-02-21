import 'bloc/login_page_five_bloc.dart';
import 'models/login_page_five_model.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/core/app_export.dart';
import 'package:suraksha_demo_app/widgets/custom_elevated_button.dart';
import 'package:suraksha_demo_app/widgets/custom_outlined_button.dart';

class LoginPageFiveScreen extends StatelessWidget {
  const LoginPageFiveScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPageFiveBloc>(
        create: (context) => LoginPageFiveBloc(
            LoginPageFiveState(loginPageFiveModelObj: LoginPageFiveModel()))
          ..add(LoginPageFiveInitialEvent()),
        child: LoginPageFiveScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginPageFiveBloc, LoginPageFiveState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 62.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Column(children: [
                      Padding(
                          padding: EdgeInsets.only(left: 62.h, right: 45.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgSecurityShield,
                                    height: 90.adaptSize,
                                    width: 90.adaptSize),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 15.h, top: 4.v, bottom: 3.v),
                                    child: Text("lbl_suraksha".tr,
                                        style: theme.textTheme.displayLarge))
                              ])),
                      SizedBox(height: 136.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 117.h),
                              child: Text("lbl_enter_the_otp".tr,
                                  style: theme.textTheme.headlineSmall))),
                      SizedBox(height: 54.v),
                      CustomOutlinedButton(
                          width: 261.h,
                          text: "lbl_xxx_xxx".tr,
                          onPressed: () {
                            onTapXXXXXX(context);
                          }),
                      SizedBox(height: 5.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl_valid_for".tr,
                                      style:
                                          CustomTextStyles.bodyMediumff000000),
                                  TextSpan(text: " "),
                                  TextSpan(
                                      text: "lbl_29_secs".tr,
                                      style: theme.textTheme.labelLarge)
                                ]),
                                textAlign: TextAlign.left),
                            Padding(
                                padding: EdgeInsets.only(left: 92.h),
                                child: Text("lbl_resend_otp".tr,
                                    style: CustomTextStyles.labelLargeBlack900))
                          ]),
                      SizedBox(height: 13.v),
                      CustomElevatedButton(
                          width: 152.h,
                          text: "lbl_login".tr,
                          margin: EdgeInsets.only(right: 124.h),
                          alignment: Alignment.centerRight),
                      SizedBox(height: 253.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgPavan3544,
                          height: 179.v,
                          width: 188.h,
                          alignment: Alignment.centerRight)
                    ])))
                  ]))));
    });
  }

  /// Navigates to the loginPageSixScreen when the action is triggered.
  onTapXXXXXX(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageSixScreen,
    );
  }
}
