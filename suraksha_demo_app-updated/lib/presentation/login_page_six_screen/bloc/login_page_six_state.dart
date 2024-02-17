// ignore_for_file: must_be_immutable

part of 'login_page_six_bloc.dart';

/// Represents the state of LoginPageSix in the application.
class LoginPageSixState extends Equatable {
  LoginPageSixState({this.loginPageSixModelObj});

  LoginPageSixModel? loginPageSixModelObj;

  @override
  List<Object?> get props => [
        loginPageSixModelObj,
      ];
  LoginPageSixState copyWith({LoginPageSixModel? loginPageSixModelObj}) {
    return LoginPageSixState(
      loginPageSixModelObj: loginPageSixModelObj ?? this.loginPageSixModelObj,
    );
  }
}
