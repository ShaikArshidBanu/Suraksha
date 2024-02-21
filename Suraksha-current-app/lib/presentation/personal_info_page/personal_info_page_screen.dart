import 'bloc/personal_info_page_bloc.dart';
import 'models/personal_info_page_model.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/core/app_export.dart';
import 'package:suraksha_demo_app/widgets/custom_elevated_button.dart';
import 'package:suraksha_demo_app/widgets/custom_text_form_field.dart';

class PersonalInfoPageScreen extends StatelessWidget {
  const PersonalInfoPageScreen({Key? key})
      : super(
    key: key,
  );



  static Widget builder(BuildContext context) {
    return BlocProvider<PersonalInfoPageBloc>(
      create: (context) =>
      PersonalInfoPageBloc(PersonalInfoPageState(
        personalInfoPageModelObj: PersonalInfoPageModel(),
      ))
        ..add(PersonalInfoPageInitialEvent()),
      child: PersonalInfoPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonalInfoPageBloc, PersonalInfoPageState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillPink,
              padding: EdgeInsets.symmetric(
                horizontal: 45.h,
                vertical: 6.v,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSecurityShield,
                          height: 90.adaptSize,
                          width: 90.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15.h,
                            top: 9.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "lbl_suraksha".tr,
                            style: theme.textTheme.displayLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.h,
                      top: 4.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "Enter your personal details",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Full Name",
                    style: theme.textTheme.headlineSmall,
                  ),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(right: 50.h),
                      child: BlocSelector<PersonalInfoPageBloc,
                          PersonalInfoPageState, TextEditingController?>(
                          selector: (state) => state.priceController,
                          builder: (context, priceController) {
                            return CustomTextFormField(
                              width: 291.h,
                              controller: priceController,
                              hintText: "Enter your full name".tr,
                              textInputAction: TextInputAction.done,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 10.v),);
                          })),
                  Spacer(),
                  Text(
                    "Age",
                    style: theme.textTheme.headlineSmall,
                  ),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(right: 50.h),
                      child: BlocSelector<PersonalInfoPageBloc,
                          PersonalInfoPageState, TextEditingController?>(
                          selector: (state) => state.priceController,
                          builder: (context, priceController) {
                            return CustomTextFormField(
                              width: 2911.h,
                              controller: priceController,
                              hintText: "Enter your Age".tr,
                              textInputAction: TextInputAction.done,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 10.v),);
                          })),
                  Spacer(),
                  Text(
                    "Country",
                    style: theme.textTheme.headlineSmall,
                  ),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(right: 50.h),
                      child: BlocSelector<PersonalInfoPageBloc,
                          PersonalInfoPageState, TextEditingController?>(
                          selector: (state) => state.priceController,
                          builder: (context, priceController) {
                            return CustomTextFormField(
                              width: 291.h,
                              controller: priceController,
                              hintText: "Enter your country name".tr,
                              textInputAction: TextInputAction.done,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 10.v),);
                          })),
                  Spacer(),
                  Text(
                    "Address",
                    style: theme.textTheme.headlineSmall,
                  ),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(right: 50.h),
                      child: BlocSelector<PersonalInfoPageBloc,
                          PersonalInfoPageState, TextEditingController?>(
                          selector: (state) => state.priceController,
                          builder: (context, priceController) {
                            return CustomTextFormField(
                              width: 291.h,
                              controller: priceController,
                              hintText: "Enter your Address".tr,
                              textInputAction: TextInputAction.done,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 10.v),);
                          })),
                  Spacer(),
                  Text(
                    "Email Address",
                    style: theme.textTheme.headlineSmall,
                  ),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(right: 50.h),
                      child: BlocSelector<PersonalInfoPageBloc,
                          PersonalInfoPageState, TextEditingController?>(
                          selector: (state) => state.priceController,
                          builder: (context, priceController) {
                            return CustomTextFormField(
                              width: 291.h,
                              controller: priceController,
                              hintText: "Enter your email address".tr,
                              textInputAction: TextInputAction.done,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 10.v),);
                          })),

                  Spacer(),
                 Padding(
                  padding: EdgeInsets.only(left: 90.h),
                  child: CustomElevatedButton(
                    width: 152.h,
                    text: "Submit",
                  ),
                  ),
                  SizedBox(height:12.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.emergencyContactAddingScreen,
    );
  }
}


