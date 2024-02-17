// ignore_for_file: must_be_immutable

part of 'login_page_four_bloc.dart';

/// Represents the state of LoginPageFour in the application.
class LoginPageFourState extends Equatable {
  LoginPageFourState({
    this.enterCodeController,
    this.loginPageFourModelObj,
  });

  TextEditingController? enterCodeController;

  LoginPageFourModel? loginPageFourModelObj;

  @override
  List<Object?> get props => [
        enterCodeController,
        loginPageFourModelObj,
      ];
  LoginPageFourState copyWith({
    TextEditingController? enterCodeController,
    LoginPageFourModel? loginPageFourModelObj,
  }) {
    return LoginPageFourState(
      enterCodeController: enterCodeController ?? this.enterCodeController,
      loginPageFourModelObj:
          loginPageFourModelObj ?? this.loginPageFourModelObj,
    );
  }
}
