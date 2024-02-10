import 'bloc/login_page_six_bloc.dart';
import 'models/login_page_six_model.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/core/app_export.dart';
import 'package:suraksha_demo_app/widgets/custom_elevated_button.dart';

class LoginPageSixScreen extends StatelessWidget {
  const LoginPageSixScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPageSixBloc>(
        create: (context) => LoginPageSixBloc(
            LoginPageSixState(loginPageSixModelObj: LoginPageSixModel()))
          ..add(LoginPageSixInitialEvent()),
        child: LoginPageSixScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginPageSixBloc, LoginPageSixState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 45.h, vertical: 62.v),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
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
                                          style: theme.textTheme.displayLarge))
                                ])),
                        Spacer(),
                        Container(
                            width: 248.h,
                            margin: EdgeInsets.only(left: 50.h, right: 41.h),
                            child: Text("msg_link_your_aadhar".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineSmall!
                                    .copyWith(height: 1.27))),
                        SizedBox(height: 49.v),
                        Container(
                            height: 342.v,
                            width: 261.h,
                            padding: EdgeInsets.symmetric(vertical: 151.v),
                            decoration: AppDecoration.outlinePrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder7),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgImage1,
                                height: 37.adaptSize,
                                width: 37.adaptSize,
                                alignment: Alignment.center)),
                        SizedBox(height: 75.v),
                        CustomElevatedButton(
                            width: 152.h,
                            text: "lbl_upload".tr,
                            onPressed: () {
                              onTapUpload(context);
                            }),
                        SizedBox(height: 17.v)
                      ]))));
    });
  }

  /// Navigates to the loginPageSevenScreen when the action is triggered.
  onTapUpload(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageSevenScreen,
    );
  }
}
