import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:suraksha_demo_app/presentation/login_page_six_screen/models/login_page_six_model.dart';
part 'login_page_six_event.dart';
part 'login_page_six_state.dart';

/// A bloc that manages the state of a LoginPageSix according to the event that is dispatched to it.
class LoginPageSixBloc extends Bloc<LoginPageSixEvent, LoginPageSixState> {
  LoginPageSixBloc(LoginPageSixState initialState) : super(initialState) {
    on<LoginPageSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginPageSixInitialEvent event,
    Emitter<LoginPageSixState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 5000), () {
      NavigatorService.pushNamed(
        AppRoutes.loginPageSevenScreen,
      );
    });
  }
}
