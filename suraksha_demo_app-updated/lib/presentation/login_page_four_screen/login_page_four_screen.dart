import 'bloc/login_page_four_bloc.dart';
import 'models/login_page_four_model.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/core/app_export.dart';
import 'package:suraksha_demo_app/widgets/custom_elevated_button.dart';
import 'package:suraksha_demo_app/widgets/custom_text_form_field.dart';

class LoginPageFourScreen extends StatelessWidget {
  const LoginPageFourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPageFourBloc>(
        create: (context) => LoginPageFourBloc(
            LoginPageFourState(loginPageFourModelObj: LoginPageFourModel()))
          ..add(LoginPageFourInitialEvent()),
        child: LoginPageFourScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                    BlocSelector<LoginPageFourBloc, LoginPageFourState,
                            TextEditingController?>(
                        selector: (state) => state.enterCodeController,
                        builder: (context, enterCodeController) {
                          return CustomTextFormField(
                              width: 261.h,
                              controller: enterCodeController,
                              hintText: "lbl_enter_the_code".tr,
                              textInputAction: TextInputAction.done,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 7.v));
                        }),
                    SizedBox(height: 5.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_valid_for".tr,
                                style: CustomTextStyles.bodyMediumff000000),
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
  }
}
