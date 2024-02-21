import 'bloc/choose_your_language_one_bloc.dart';
import 'models/choose_your_language_one_model.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/core/app_export.dart';
import 'package:suraksha_demo_app/widgets/custom_text_form_field.dart';

class ChooseYourLanguageOneScreen extends StatelessWidget {
  const ChooseYourLanguageOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChooseYourLanguageOneBloc>(
        create: (context) => ChooseYourLanguageOneBloc(
            ChooseYourLanguageOneState(
                chooseYourLanguageOneModelObj: ChooseYourLanguageOneModel()))
          ..add(ChooseYourLanguageOneInitialEvent()),
        child: ChooseYourLanguageOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(34.h),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgSecurityShield,
                      height: 90.adaptSize,
                      width: 90.adaptSize),
                  SizedBox(height: 12.v),
                  Text("lbl_suraksha".tr, style: theme.textTheme.displayLarge),
                  Text("msg_women_safety_app".tr,
                      style: theme.textTheme.titleSmall),
                  SizedBox(height: 49.v),
                  Text("msg_choose_your_language".tr,
                      style: CustomTextStyles.titleLargeOpenSansBlack900),
                  SizedBox(height: 39.v),
                  Padding(
                      padding: EdgeInsets.only(right: 2.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(right: 12.h),
                                    child: Column(children: [
                                      BlocSelector<
                                              ChooseYourLanguageOneBloc,
                                              ChooseYourLanguageOneState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.languageController,
                                          builder:
                                              (context, languageController) {
                                            return CustomTextFormField(
                                                width: 168.h,
                                                controller: languageController,
                                                hintText: "lbl_english".tr,
                                                hintStyle: CustomTextStyles
                                                    .titleLargeOpenSansBlack900Regular,
                                                prefix: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        16.h, 25.v, 30.h, 24.v),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgMaterialsymbolscircleoutline,
                                                        height: 17.adaptSize,
                                                        width: 17.adaptSize)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        maxHeight: 66.v));
                                          }),
                                      SizedBox(height: 28.v),
                                      _buildLanguageSelection(context,
                                          widgetText: "lbl".tr),
                                      SizedBox(height: 28.v),
                                      _buildLanguageSelection(context,
                                          widgetText: "lbl2".tr),
                                      SizedBox(height: 28.v),
                                      _buildLanguageSelection(context,
                                          widgetText: "lbl3".tr),
                                      SizedBox(height: 28.v),
                                      BlocSelector<
                                              ChooseYourLanguageOneBloc,
                                              ChooseYourLanguageOneState,
                                              TextEditingController?>(
                                          selector: (state) =>
                                              state.malayalamController,
                                          builder:
                                              (context, malayalamController) {
                                            return CustomTextFormField(
                                                width: 168.h,
                                                controller: malayalamController,
                                                hintText: "lbl4".tr,
                                                hintStyle: CustomTextStyles
                                                    .titleLargeNotoSansMalayalamBlack900,
                                                textInputAction:
                                                    TextInputAction.done,
                                                prefix: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        19.h, 25.v, 22.h, 24.v),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgMaterialsymbolscircleoutline,
                                                        height: 17.v,
                                                        width: 14.h)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        maxHeight: 66.v));
                                          }),
                                      SizedBox(height: 28.v),
                                      _buildLanguageSelection(context,
                                          widgetText: "lbl5".tr)
                                    ]))),
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 12.h),
                                    child: Column(children: [
                                      Container(
                                          width: 168.h,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15.h, vertical: 17.v),
                                          decoration: AppDecoration.outlineGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder7),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMaterialsymbolscircleoutline,
                                                    height: 17.adaptSize,
                                                    width: 17.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        top: 6.v, bottom: 5.v)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 37.h,
                                                        bottom: 2.v),
                                                    child: Text("lbl6".tr,
                                                        style: CustomTextStyles
                                                            .titleLargeTiroDevanagariHindiBlack900))
                                              ])),
                                      SizedBox(height: 28.v),
                                      _buildLanguageSelection(context,
                                          widgetText: "lbl7".tr),
                                      SizedBox(height: 28.v),
                                      _buildLanguageSelection(context,
                                          widgetText: "lbl8".tr),
                                      SizedBox(height: 28.v),
                                      _buildLanguageSelection(context,
                                          widgetText: "lbl9".tr),
                                      SizedBox(height: 28.v),
                                      _buildLanguageSelection(context,
                                          widgetText: "lbl10".tr),
                                      SizedBox(height: 28.v),
                                      _buildLanguageSelection(context,
                                          widgetText: "lbl11".tr)
                                    ])))
                          ])),
                  SizedBox(height: 10.v)
                ]))));
  }

  /// Common widget
  Widget _buildLanguageSelection(
    BuildContext context, {
    required String widgetText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 5.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMaterialsymbolscircleoutline,
              height: 17.v,
              width: 14.h,
              margin: EdgeInsets.only(top: 18.v, bottom: 17.v)),
          Container(
              width: 33.h,
              margin: EdgeInsets.only(left: 45.h, top: 1.v),
              child: Text(widgetText,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeNotoNastaliqUrduBlack900
                      .copyWith(color: appTheme.black900, height: 1.27)))
        ]));
  }
}
