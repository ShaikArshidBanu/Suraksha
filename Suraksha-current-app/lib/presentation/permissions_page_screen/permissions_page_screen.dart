import 'package:flutter/material.dart';
import 'bloc/permissions_page_bloc.dart';
import 'models/permissions_page_model.dart';
import 'package:suraksha_demo_app/core/app_export.dart';
import 'package:suraksha_demo_app/widgets/custom_elevated_button.dart';

class PermissionsPageScreen extends StatefulWidget {
  const PermissionsPageScreen({Key? key}) : super(key: key);
  static Widget builder(BuildContext context) {
    return BlocProvider<PermissionsPageBloc>(
      create: (context) =>
      PermissionsPageBloc(PermissionsPageState(
        permissionsPageModelObj: PermissionsPageModel(),
      ))
        ..add(PermissionsPageInitialEvent()),
      child: PermissionsPageScreen(),
    );
  }
  @override
  _PermissionsPageScreenState createState() => _PermissionsPageScreenState();
}

class _PermissionsPageScreenState extends State<PermissionsPageScreen> {
  bool is_checked_contacts= false;
  bool is_checked_camera= false;
  bool is_checked_location= false;
  bool is_checked_microphone= false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PermissionsPageBloc>(
      create: (context) => PermissionsPageBloc(
        PermissionsPageState(
          permissionsPageModelObj: PermissionsPageModel(),
        ),
      )..add(PermissionsPageInitialEvent()),
      child: BlocBuilder<PermissionsPageBloc, PermissionsPageState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillPink,
                padding: EdgeInsets.symmetric(
                  horizontal: 45.h,
                  vertical: 26.v,
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
                    SizedBox(height:10.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 90.h,
                        top: 4.v,
                        bottom: 3.v,
                      ),
                      child: Text(
                        "App Permissions",
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    SizedBox(height:60.v),
                    CheckboxListTile(
                      checkColor: Colors.black,
                      title: Text("Contacts",
                        style: theme.textTheme.headlineSmall,
                      ),
                      value: is_checked_contacts,
                      onChanged: (val) {
                        setState(() {
                          is_checked_contacts = val!;
                        });
                      },
                    ),
                    SizedBox(height:2.v),
                    Text("Allow and manage access to contacts",
                      style: theme.textTheme.headlineMedium,
                    ),
                    SizedBox(height:10.v),
                    CheckboxListTile(
                      checkColor: Colors.black,
                      title: Text("Camera",
                        style: theme.textTheme.headlineSmall,
                      ),
                      value: is_checked_camera,
                      onChanged: (val) {
                        setState(() {
                          is_checked_camera = val!;
                        });
                      },
                    ),
                    SizedBox(height:2.v),
                    Text("Allow permissions for photos and videos",
                      style: theme.textTheme.headlineMedium,
                    ),
                    SizedBox(height:10.v),
                    CheckboxListTile(
                      checkColor: Colors.black,
                      title: Text("Location",
                        style: theme.textTheme.headlineSmall,
                      ),
                      value: is_checked_location,
                      onChanged: (val) {
                        setState(() {
                          is_checked_location = val!;
                        });
                      },
                    ),
                    SizedBox(height:2.v),
                    Text("Allow access to location",
                      style: theme.textTheme.headlineMedium,
                    ),
                    SizedBox(height:10.v),
                    CheckboxListTile(
                      checkColor: Colors.black,
                      title: Text("Microphone",
                        style: theme.textTheme.headlineSmall,
                      ),
                      value: is_checked_microphone,
                      onChanged: (val) {
                        setState(() {
                          is_checked_microphone = val!;
                        });
                      },
                    ),
                    SizedBox(height:2.v),
                    Text("Allow access to record audio",
                      style: theme.textTheme.headlineMedium,
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(left: 90.h),
                      child: CustomElevatedButton(
                        width: 152.h,
                        text: "Submit",
                      ),
                    ),
                    SizedBox(height: 70.h),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  onTapUpload(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }
}
