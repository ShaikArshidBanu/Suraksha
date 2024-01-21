import 'controller/getting_started_page_flutter_pg_controller.dart';
import 'package:flutter/material.dart';
import 'package:gaytri_s_application3/core/app_export.dart';
import 'package:gaytri_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class GettingStartedPageFlutterPgScreen
    extends GetWidget<GettingStartedPageFlutterPgController> {
  const GettingStartedPageFlutterPgScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Spacer(
                flex: 38,
              ),
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
                        padding: EdgeInsets.symmetric(horizontal: 46.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgSecurityShield,
                              height: 90.adaptSize,
                              width: 90.adaptSize,
                              margin: EdgeInsets.only(left: 14.h),
                            ),
                            SizedBox(height: 76.v),
                            Text(
                              "msg_women_safety_app".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 18.v),
                        child: Text(
                          "lbl_suraksha".tr,
                          style: theme.textTheme.displayLarge,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 36,
              ),
              CustomElevatedButton(
                width: 152.h,
                text: "lbl_login".tr,
                margin: EdgeInsets.only(right: 121.h),
              ),
              Spacer(
                flex: 24,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgPavan3544,
                height: 179.v,
                width: 188.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
