import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:suraksha_demo_app/presentation/login_page_three_dialog/models/login_page_three_model.dart';
part 'login_page_three_event.dart';
part 'login_page_three_state.dart';

/// A bloc that manages the state of a LoginPageThree according to the event that is dispatched to it.
class LoginPageThreeBloc
    extends Bloc<LoginPageThreeEvent, LoginPageThreeState> {
  LoginPageThreeBloc(LoginPageThreeState initialState) : super(initialState) {
    on<LoginPageThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginPageThreeInitialEvent event,
    Emitter<LoginPageThreeState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 5000), () {
      NavigatorService.pushNamed(
        AppRoutes.loginPageFourScreen,
      );
    });
  }
}
