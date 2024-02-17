import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:suraksha_demo_app/presentation/login_page_one_screen/models/login_page_one_model.dart';
part 'login_page_one_event.dart';
part 'login_page_one_state.dart';

/// A bloc that manages the state of a LoginPageOne according to the event that is dispatched to it.
class LoginPageOneBloc extends Bloc<LoginPageOneEvent, LoginPageOneState> {
  LoginPageOneBloc(LoginPageOneState initialState) : super(initialState) {
    on<LoginPageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginPageOneInitialEvent event,
    Emitter<LoginPageOneState> emit,
  ) async {
    emit(
        state.copyWith(mobileNumberMessageController: TextEditingController()));
    Future.delayed(const Duration(milliseconds: 5000), () {
      NavigatorService.pushNamed(
        AppRoutes.loginPageTwoScreen,
      );
    });
  }
}
