// ignore_for_file: must_be_immutable

part of 'login_page_three_bloc.dart';

/// Represents the state of LoginPageThree in the application.
class LoginPageThreeState extends Equatable {
  LoginPageThreeState({this.loginPageThreeModelObj});

  LoginPageThreeModel? loginPageThreeModelObj;

  @override
  List<Object?> get props => [
        loginPageThreeModelObj,
      ];
  LoginPageThreeState copyWith({LoginPageThreeModel? loginPageThreeModelObj}) {
    return LoginPageThreeState(
      loginPageThreeModelObj:
          loginPageThreeModelObj ?? this.loginPageThreeModelObj,
    );
  }
}
