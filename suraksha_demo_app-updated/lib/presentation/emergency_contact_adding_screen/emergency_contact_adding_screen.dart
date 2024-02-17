import 'bloc/emergency_contact_adding_bloc.dart';
import 'models/emergency_contact_adding_model.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/core/app_export.dart';
import 'package:suraksha_demo_app/widgets/custom_elevated_button.dart';
import 'package:suraksha_demo_app/widgets/custom_text_form_field.dart';

class EmergencyContactAddingScreen extends StatelessWidget {
  const EmergencyContactAddingScreen({Key? key})
      : super(
    key: key,
  );



  static Widget builder(BuildContext context) {
    return BlocProvider<EmergencyContactAddingBloc>(
      create: (context) =>
      EmergencyContactAddingBloc(EmergencyContactAddingState(
        emergencyContactAddingModelObj: EmergencyContactAddingModel(),
      ))
        ..add(EmergencyContactAddingInitialEvent()),
      child: EmergencyContactAddingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmergencyContactAddingBloc, EmergencyContactAddingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
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
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "Add Emergency Contacts",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),

                  Align(
                    alignment: Alignment.center,
                    child:Padding(
                       padding: EdgeInsets.only(
                           left: 30.h,
                            top: 2.v,
                            bottom: 3.v, ),
                          child: Text(
                            "Add emergency contact who will be notified with location information in case of an emergency",
                           style: theme.textTheme.headlineMedium,
                         ),
                       ),
                  ),
                  Spacer(),
                  Text(
                    "Emergency Contact 1",
                    style: theme.textTheme.headlineSmall,
                  ),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(right: 50.h),
                      child: BlocSelector<EmergencyContactAddingBloc,
                          EmergencyContactAddingState, TextEditingController?>(
                          selector: (state) => state.priceController,
                          builder: (context, priceController) {
                            return CustomTextFormField(
                              width: 291.h,
                              controller: priceController,
                              hintText: "Enter Name".tr,
                              textInputAction: TextInputAction.done,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 10.v),);
                          })),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(right: 50.h),
                      child: BlocSelector<EmergencyContactAddingBloc,
                          EmergencyContactAddingState, TextEditingController?>(
                          selector: (state) => state.priceController,
                          builder: (context, priceController) {
                            return CustomTextFormField(
                              width: 2911.h,
                              controller: priceController,
                              hintText: "Enter Mobile No".tr,
                              textInputAction: TextInputAction.done,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 10.v),);
                          })),
                  Spacer(),
                  Text(
                    "Emergency Contact 2",
                    style: theme.textTheme.headlineSmall,
                  ),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(right: 50.h),
                      child: BlocSelector<EmergencyContactAddingBloc,
                          EmergencyContactAddingState, TextEditingController?>(
                          selector: (state) => state.priceController,
                          builder: (context, priceController) {
                            return CustomTextFormField(
                              width: 291.h,
                              controller: priceController,
                              hintText: "Enter Name".tr,
                              textInputAction: TextInputAction.done,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 10.v),);
                          })),

                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(right: 50.h),
                      child: BlocSelector<EmergencyContactAddingBloc,
                          EmergencyContactAddingState, TextEditingController?>(
                          selector: (state) => state.priceController,
                          builder: (context, priceController) {
                            return CustomTextFormField(
                              width: 291.h,
                              controller: priceController,
                              hintText: "Enter Mobile No".tr,
                              textInputAction: TextInputAction.done,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 10.v),);
                          })),
                  Spacer(),
                  Text(
                    "Emergency Contact 3",
                    style: theme.textTheme.headlineSmall,
                  ),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(right: 50.h),
                      child: BlocSelector<EmergencyContactAddingBloc,
                          EmergencyContactAddingState, TextEditingController?>(
                          selector: (state) => state.priceController,
                          builder: (context, priceController) {
                            return CustomTextFormField(
                              width: 291.h,
                              controller: priceController,
                              hintText: "Enter Name".tr,
                              textInputAction: TextInputAction.done,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30.h, vertical: 10.v),);
                          })),

                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(right: 50.h),
                      child: BlocSelector<EmergencyContactAddingBloc,
                          EmergencyContactAddingState, TextEditingController?>(
                          selector: (state) => state.priceController,
                          builder: (context, priceController) {
                            return CustomTextFormField(
                              width: 291.h,
                              controller: priceController,
                              hintText: "Enter Mobile No".tr,
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
                  Spacer(),
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
      AppRoutes.permissionsPageScreen,
    );
  }
}


