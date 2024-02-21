// ignore_for_file: must_be_immutable

part of 'login_page_seven_bloc.dart';

/// Represents the state of LoginPageSeven in the application.
class LoginPageSevenState extends Equatable {
  LoginPageSevenState({this.loginPageSevenModelObj});

  LoginPageSevenModel? loginPageSevenModelObj;

  @override
  List<Object?> get props => [
        loginPageSevenModelObj,
      ];
  LoginPageSevenState copyWith({LoginPageSevenModel? loginPageSevenModelObj}) {
    return LoginPageSevenState(
      loginPageSevenModelObj:
          loginPageSevenModelObj ?? this.loginPageSevenModelObj,
    );
  }
}
