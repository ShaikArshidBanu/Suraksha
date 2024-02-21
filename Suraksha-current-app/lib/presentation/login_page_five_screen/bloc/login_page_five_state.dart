// ignore_for_file: must_be_immutable

part of 'login_page_five_bloc.dart';

/// Represents the state of LoginPageFive in the application.
class LoginPageFiveState extends Equatable {
  LoginPageFiveState({this.loginPageFiveModelObj});

  LoginPageFiveModel? loginPageFiveModelObj;

  @override
  List<Object?> get props => [
        loginPageFiveModelObj,
      ];
  LoginPageFiveState copyWith({LoginPageFiveModel? loginPageFiveModelObj}) {
    return LoginPageFiveState(
      loginPageFiveModelObj:
          loginPageFiveModelObj ?? this.loginPageFiveModelObj,
    );
  }
}
