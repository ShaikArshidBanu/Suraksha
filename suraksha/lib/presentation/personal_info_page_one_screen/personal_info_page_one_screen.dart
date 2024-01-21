import 'bloc/personal_info_page_one_bloc.dart';
import 'models/personal_info_page_one_model.dart';
import 'package:flutter/material.dart';
import 'package:gaytri_s_application4/core/app_export.dart';
import 'package:gaytri_s_application4/widgets/custom_drop_down.dart';
import 'package:gaytri_s_application4/widgets/custom_elevated_button.dart';
import 'package:gaytri_s_application4/widgets/custom_text_form_field.dart';

class PersonalInfoPageOneScreen extends StatelessWidget {
  const PersonalInfoPageOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PersonalInfoPageOneBloc>(
      create: (context) => PersonalInfoPageOneBloc(PersonalInfoPageOneState(
        personalInfoPageOneModelObj: PersonalInfoPageOneModel(),
      ))
        ..add(PersonalInfoPageOneInitialEvent()),
      child: PersonalInfoPageOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.pink800,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 52.h,
            vertical: 42.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: 12.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSecurityShield,
                        height: 90.adaptSize,
                        width: 90.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          top: 5.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "lbl_suraksha".tr,
                          style: theme.textTheme.displayLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              Text(
                "msg_enter_your_personal".tr,
                style: CustomTextStyles.titleLargeOpenSansBlack900,
              ),
              SizedBox(height: 44.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 29.h),
                  child: Text(
                    "lbl_full_name".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              _buildFullName(context),
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 29.h),
                  child: Text(
                    "lbl_age".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              _buildAge(context),
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 29.h),
                  child: Text(
                    "lbl_state".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 29.h,
                  right: 36.h,
                ),
                child: BlocSelector<PersonalInfoPageOneBloc,
                    PersonalInfoPageOneState, PersonalInfoPageOneModel?>(
                  selector: (state) => state.personalInfoPageOneModelObj,
                  builder: (context, personalInfoPageOneModelObj) {
                    return CustomDropDown(
                      icon: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 11.v,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgTelevision,
                          height: 11.adaptSize,
                          width: 11.adaptSize,
                        ),
                      ),
                      items:
                          personalInfoPageOneModelObj?.dropdownItemList ?? [],
                      onChanged: (value) {
                        context
                            .read<PersonalInfoPageOneBloc>()
                            .add(ChangeDropDownEvent(value: value));
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 29.h),
                  child: Text(
                    "lbl_address".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              _buildAddress(context),
              SizedBox(height: 18.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 29.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_email_address".tr,
                          style: CustomTextStyles.titleSmallff000000,
                        ),
                        TextSpan(
                          text: "lbl_optional".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              _buildEmail(context),
              SizedBox(height: 37.v),
              _buildSubmit(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 36.h,
      ),
      child: BlocSelector<PersonalInfoPageOneBloc, PersonalInfoPageOneState,
          TextEditingController?>(
        selector: (state) => state.fullNameController,
        builder: (context, fullNameController) {
          return CustomTextFormField(
            controller: fullNameController,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAge(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 36.h,
      ),
      child: BlocSelector<PersonalInfoPageOneBloc, PersonalInfoPageOneState,
          TextEditingController?>(
        selector: (state) => state.ageController,
        builder: (context, ageController) {
          return CustomTextFormField(
            controller: ageController,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 36.h,
      ),
      child: BlocSelector<PersonalInfoPageOneBloc, PersonalInfoPageOneState,
          TextEditingController?>(
        selector: (state) => state.addressController,
        builder: (context, addressController) {
          return CustomTextFormField(
            controller: addressController,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 36.h,
      ),
      child: BlocSelector<PersonalInfoPageOneBloc, PersonalInfoPageOneState,
          TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
            controller: emailController,
            textInputAction: TextInputAction.done,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
      width: 152.h,
      text: "lbl_submit".tr,
    );
  }
}
