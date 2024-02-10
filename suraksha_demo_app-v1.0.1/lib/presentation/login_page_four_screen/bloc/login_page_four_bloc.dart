import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:suraksha_demo_app/presentation/login_page_four_screen/models/login_page_four_model.dart';
part 'login_page_four_event.dart';
part 'login_page_four_state.dart';

/// A bloc that manages the state of a LoginPageFour according to the event that is dispatched to it.
class LoginPageFourBloc extends Bloc<LoginPageFourEvent, LoginPageFourState> {
  LoginPageFourBloc(LoginPageFourState initialState) : super(initialState) {
    on<LoginPageFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginPageFourInitialEvent event,
    Emitter<LoginPageFourState> emit,
  ) async {
    emit(state.copyWith(enterCodeController: TextEditingController()));
    Future.delayed(const Duration(milliseconds: 5000), () {
      NavigatorService.pushNamed(
        AppRoutes.loginPageFiveScreen,
      );
    });
  }
}
