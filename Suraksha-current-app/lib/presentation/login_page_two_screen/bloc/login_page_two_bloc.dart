import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:suraksha_demo_app/presentation/login_page_two_screen/models/login_page_two_model.dart';
part 'login_page_two_event.dart';
part 'login_page_two_state.dart';

/// A bloc that manages the state of a LoginPageTwo according to the event that is dispatched to it.
class LoginPageTwoBloc extends Bloc<LoginPageTwoEvent, LoginPageTwoState> {
  LoginPageTwoBloc(LoginPageTwoState initialState) : super(initialState) {
    on<LoginPageTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginPageTwoInitialEvent event,
    Emitter<LoginPageTwoState> emit,
  ) async {
    emit(state.copyWith(priceController: TextEditingController()));
  }
}
