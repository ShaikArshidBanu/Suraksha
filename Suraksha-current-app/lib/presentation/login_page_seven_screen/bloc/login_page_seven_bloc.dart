import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:suraksha_demo_app/presentation/login_page_seven_screen/models/login_page_seven_model.dart';
part 'login_page_seven_event.dart';
part 'login_page_seven_state.dart';

/// A bloc that manages the state of a LoginPageSeven according to the event that is dispatched to it.
class LoginPageSevenBloc
    extends Bloc<LoginPageSevenEvent, LoginPageSevenState> {
  LoginPageSevenBloc(LoginPageSevenState initialState) : super(initialState) {
    on<LoginPageSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginPageSevenInitialEvent event,
    Emitter<LoginPageSevenState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 5000), () {
      NavigatorService.pushNamed(
        AppRoutes.personalInfoPageScreen,
      );
    });
  }
}
