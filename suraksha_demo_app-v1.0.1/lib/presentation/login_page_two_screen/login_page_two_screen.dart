import 'bloc/login_page_two_bloc.dart';
import 'models/login_page_two_model.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/core/app_export.dart';
import 'package:suraksha_demo_app/widgets/custom_elevated_button.dart';
import 'package:suraksha_demo_app/widgets/custom_text_form_field.dart';
import 'package:suraksha_demo_app/presentation/login_page_three_dialog/login_page_three_dialog.dart';

class LoginPageTwoScreen extends StatelessWidget {
  const LoginPageTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPageTwoBloc>(
        create: (context) => LoginPageTwoBloc(
            LoginPageTwoState(loginPageTwoModelObj: LoginPageTwoModel()))
          ..add(LoginPageTwoInitialEvent()),
        child: LoginPageTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 62.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(left: 62.h, right: 45.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgSecurityShield,
                                        height: 90.adaptSize,
                                        width: 90.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.h, top: 4.v, bottom: 3.v),
                                        child: Text("lbl_suraksha".tr,
                                            style:
                                                theme.textTheme.displayLarge))
                                  ]))),
                      Spacer(flex: 33),
                      Padding(
                          padding: EdgeInsets.only(right: 88.h),
                          child: Text("msg_login_to_your_account".tr,
                              style:
                                  CustomTextStyles.titleLargeOpenSansBlack900)),
                      SizedBox(height: 55.v),
                      Padding(
                          padding: EdgeInsets.only(right: 50.h),
                          child: BlocSelector<LoginPageTwoBloc,
                                  LoginPageTwoState, TextEditingController?>(
                              selector: (state) => state.priceController,
                              builder: (context, priceController) {
                                return CustomTextFormField(
                                    width: 261.h,
                                    controller: priceController,
                                    hintText: "lbl_xxxxxxxxxx".tr,
                                    textInputAction: TextInputAction.done,
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 30.h, vertical: 7.v));
                              })),
                      SizedBox(height: 37.v),
                      CustomElevatedButton(
                          width: 152.h,
                          text: "lbl_get_otp".tr,
                          margin: EdgeInsets.only(right: 120.h),
                          onPressed: () {
                            onTapGetOTP(context);
                          }),
                      Spacer(flex: 66),
                      CustomImageView(
                          imagePath: ImageConstant.imgPavan3544Errorcontainer,
                          height: 179.v,
                          width: 186.h)
                    ]))));
  }

  /// Displays a dialog with the [LoginPageThreeDialog] content.
  onTapGetOTP(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: LoginPageThreeDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
