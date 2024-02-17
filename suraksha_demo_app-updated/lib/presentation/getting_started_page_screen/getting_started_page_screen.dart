import 'bloc/getting_started_page_bloc.dart';
import 'models/getting_started_page_model.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/core/app_export.dart';
import 'package:suraksha_demo_app/widgets/custom_elevated_button.dart';

class GettingStartedPageScreen extends StatelessWidget {
  const GettingStartedPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<GettingStartedPageBloc>(
        create: (context) => GettingStartedPageBloc(GettingStartedPageState(
            gettingStartedPageModelObj: GettingStartedPageModel()))
          ..add(GettingStartedPageInitialEvent()),
        child: GettingStartedPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GettingStartedPageBloc, GettingStartedPageState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    Spacer(flex: 44),
                    Container(
                        margin: EdgeInsets.only(left: 54.h, right: 37.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 59.h, vertical: 25.v),
                        decoration: AppDecoration.fillPink.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder7),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(height: 82.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgSecurityShield,
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
                                      style: theme.textTheme.titleSmall))),
                          SizedBox(height: 5.v),
                          CustomElevatedButton(
                              width: 152.h,
                              text: "lbl_login".tr,
                              onPressed: () {
                                onTapLogin(context);
                              })
                        ])),
                    Spacer(flex: 55),
                    CustomImageView(
                        imagePath: ImageConstant.imgPavan3544,
                        height: 179.v,
                        width: 188.h,
                        alignment: Alignment.centerRight)
                  ]))));
    });
  }

  /// Navigates to the loginPageOneScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageOneScreen,
    );
  }
}
