import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:suraksha_demo_app/presentation/choose_your_language_one_screen/models/choose_your_language_one_model.dart';
part 'choose_your_language_one_event.dart';
part 'choose_your_language_one_state.dart';

/// A bloc that manages the state of a ChooseYourLanguageOne according to the event that is dispatched to it.
class ChooseYourLanguageOneBloc
    extends Bloc<ChooseYourLanguageOneEvent, ChooseYourLanguageOneState> {
  ChooseYourLanguageOneBloc(ChooseYourLanguageOneState initialState)
      : super(initialState) {
    on<ChooseYourLanguageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChooseYourLanguageOneInitialEvent event,
    Emitter<ChooseYourLanguageOneState> emit,
  ) async {
    emit(state.copyWith(
        languageController: TextEditingController(),
        malayalamController: TextEditingController()));
    Future.delayed(const Duration(milliseconds: 5000), () {
      NavigatorService.pushNamed(
        AppRoutes.chooseYourLanguageTwoScreen,
      );
    });
  }
}
