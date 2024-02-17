// ignore_for_file: must_be_immutable

part of 'login_page_two_bloc.dart';

/// Represents the state of LoginPageTwo in the application.
class LoginPageTwoState extends Equatable {
  LoginPageTwoState({
    this.priceController,
    this.loginPageTwoModelObj,
  });

  TextEditingController? priceController;

  LoginPageTwoModel? loginPageTwoModelObj;

  @override
  List<Object?> get props => [
        priceController,
        loginPageTwoModelObj,
      ];
  LoginPageTwoState copyWith({
    TextEditingController? priceController,
    LoginPageTwoModel? loginPageTwoModelObj,
  }) {
    return LoginPageTwoState(
      priceController: priceController ?? this.priceController,
      loginPageTwoModelObj: loginPageTwoModelObj ?? this.loginPageTwoModelObj,
    );
  }
}
