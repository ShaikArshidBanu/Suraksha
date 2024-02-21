import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:suraksha_demo_app/presentation/login_page_five_screen/models/login_page_five_model.dart';
part 'login_page_five_event.dart';
part 'login_page_five_state.dart';

/// A bloc that manages the state of a LoginPageFive according to the event that is dispatched to it.
class LoginPageFiveBloc extends Bloc<LoginPageFiveEvent, LoginPageFiveState> {
  LoginPageFiveBloc(LoginPageFiveState initialState) : super(initialState) {
    on<LoginPageFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginPageFiveInitialEvent event,
    Emitter<LoginPageFiveState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 5000), () {
      NavigatorService.pushNamed(
        AppRoutes.loginPageSixScreen,
      );
    });
  }
}
