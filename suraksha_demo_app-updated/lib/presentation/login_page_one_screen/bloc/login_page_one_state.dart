// ignore_for_file: must_be_immutable

part of 'login_page_one_bloc.dart';

/// Represents the state of LoginPageOne in the application.
class LoginPageOneState extends Equatable {
  LoginPageOneState({
    this.mobileNumberMessageController,
    this.loginPageOneModelObj,
  });

  TextEditingController? mobileNumberMessageController;

  LoginPageOneModel? loginPageOneModelObj;

  @override
  List<Object?> get props => [
        mobileNumberMessageController,
        loginPageOneModelObj,
      ];
  LoginPageOneState copyWith({
    TextEditingController? mobileNumberMessageController,
    LoginPageOneModel? loginPageOneModelObj,
  }) {
    return LoginPageOneState(
      mobileNumberMessageController:
          mobileNumberMessageController ?? this.mobileNumberMessageController,
      loginPageOneModelObj: loginPageOneModelObj ?? this.loginPageOneModelObj,
    );
  }
}
