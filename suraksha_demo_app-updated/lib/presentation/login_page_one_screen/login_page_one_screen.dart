import 'bloc/login_page_one_bloc.dart';
import 'models/login_page_one_model.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/core/app_export.dart';
import 'package:suraksha_demo_app/core/utils/validation_functions.dart';
import 'package:suraksha_demo_app/widgets/custom_elevated_button.dart';
import 'package:suraksha_demo_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginPageOneScreen extends StatelessWidget {
  LoginPageOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPageOneBloc>(
        create: (context) => LoginPageOneBloc(
            LoginPageOneState(loginPageOneModelObj: LoginPageOneModel()))
          ..add(LoginPageOneInitialEvent()),
        child: LoginPageOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(height: 62.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 62.h, right: 44.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgSecurityShield,
                                                    height: 90.adaptSize,
                                                    width: 90.adaptSize),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15.h,
                                                        top: 4.v,
                                                        bottom: 3.v),
                                                    child: Text(
                                                        "lbl_suraksha".tr,
                                                        style: theme.textTheme
                                                            .displayLarge))
                                              ]))),
                                  Spacer(flex: 33),
                                  Padding(
                                      padding: EdgeInsets.only(right: 88.h),
                                      child: Text(
                                          "msg_login_to_your_account".tr,
                                          style: CustomTextStyles
                                              .titleLargeOpenSansBlack900)),
                                  SizedBox(height: 55.v),
                                  Padding(
                                      padding: EdgeInsets.only(right: 56.h),
                                      child: BlocSelector<
                                              LoginPageOneBloc,
                                              LoginPageOneState,
                                              TextEditingController?>(
                                          selector: (state) => state
                                              .mobileNumberMessageController,
                                          builder: (context,
                                              mobileNumberMessageController) {
                                            return CustomTextFormField(
                                                width: 261.h,
                                                controller:
                                                    mobileNumberMessageController,
                                                hintText:
                                                    "msg_enter_your_mobile".tr,
                                                textInputAction:
                                                    TextInputAction.done,
                                                textInputType:
                                                    TextInputType.phone,
                                                validator: (value) {
                                                  if (!isValidPhone(value)) {
                                                    return "err_msg_please_enter_valid_phone_number"
                                                        .tr;
                                                  }
                                                  return null;
                                                },
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 30.h,
                                                        vertical: 7.v));
                                          })),
                                  SizedBox(height: 37.v),
                                  CustomElevatedButton(
                                      width: 152.h,
                                      text: "lbl_get_otp".tr,
                                      margin: EdgeInsets.only(right: 120.h)),
                                  Spacer(flex: 66),
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgPavan3544Errorcontainer,
                                      height: 179.v,
                                      width: 186.h)
                                ])))))));
  }
}
