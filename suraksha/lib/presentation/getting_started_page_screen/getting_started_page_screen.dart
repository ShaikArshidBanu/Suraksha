import 'bloc/getting_started_page_bloc.dart';
import 'models/getting_started_page_model.dart';
import 'package:flutter/material.dart';
import 'package:gaytri_s_application4/core/app_export.dart';
import 'package:gaytri_s_application4/widgets/custom_elevated_button.dart';

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
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Spacer(flex: 38),
                        Container(
                            height: 185.v,
                            width: 217.h,
                            margin: EdgeInsets.only(right: 92.h),
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 46.h),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgSecurityShield,
                                                    height: 90.adaptSize,
                                                    width: 90.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 14.h)),
                                                SizedBox(height: 76.v),
                                                Text("msg_women_safety_app".tr,
                                                    style: CustomTextStyles
                                                        .titleSmallSemiBold)
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 18.v),
                                          child: Text("lbl_suraksha".tr,
                                              style: theme
                                                  .textTheme.displayLarge)))
                                ])),
                        Spacer(flex: 36),
                        CustomElevatedButton(
                            width: 152.h,
                            text: "lbl_login".tr,
                            margin: EdgeInsets.only(right: 121.h)),
                        Spacer(flex: 24),
                        CustomImageView(
                            imagePath: ImageConstant.imgPavan3544,
                            height: 179.v,
                            width: 188.h)
                      ]))));
    });
  }
}
