import 'bloc/login_page_three_bloc.dart';
import 'models/login_page_three_model.dart';
import 'package:flutter/material.dart';
import 'package:suraksha_demo_app/core/app_export.dart';
import 'package:suraksha_demo_app/widgets/custom_icon_button.dart';

class LoginPageThreeDialog extends StatelessWidget {
  const LoginPageThreeDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPageThreeBloc>(
        create: (context) => LoginPageThreeBloc(
            LoginPageThreeState(loginPageThreeModelObj: LoginPageThreeModel()))
          ..add(LoginPageThreeInitialEvent()),
        child: LoginPageThreeDialog());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 389.h,
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 16.v),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder7),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconButton(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  alignment: Alignment.centerRight,
                  onTap: () {
                    onTapBtnImageThree(context);
                  },
                  child: CustomImageView(imagePath: ImageConstant.imgImage3)),
              SizedBox(height: 48.v),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      width: 314.h,
                      margin: EdgeInsets.only(left: 30.h, right: 21.h),
                      child: Text("msg_otp_has_been_sent".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineSmall!
                              .copyWith(height: 1.27)))),
              SizedBox(height: 29.v),
              Padding(
                  padding: EdgeInsets.only(left: 82.h),
                  child: Text("lbl_91_xxxxxxxxxx".tr,
                      style: CustomTextStyles.headlineSmallLight)),
              SizedBox(height: 46.v)
            ]));
  }

  /// Navigates to the loginPageFourScreen when the action is triggered.
  onTapBtnImageThree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageFourScreen,
    );
  }
}
