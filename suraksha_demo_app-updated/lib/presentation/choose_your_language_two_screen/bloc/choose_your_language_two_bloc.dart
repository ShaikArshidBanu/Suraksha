import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:suraksha_demo_app/presentation/choose_your_language_two_screen/models/choose_your_language_two_model.dart';
part 'choose_your_language_two_event.dart';
part 'choose_your_language_two_state.dart';

/// A bloc that manages the state of a ChooseYourLanguageTwo according to the event that is dispatched to it.
class ChooseYourLanguageTwoBloc
    extends Bloc<ChooseYourLanguageTwoEvent, ChooseYourLanguageTwoState> {
  ChooseYourLanguageTwoBloc(ChooseYourLanguageTwoState initialState)
      : super(initialState) {
    on<ChooseYourLanguageTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChooseYourLanguageTwoInitialEvent event,
    Emitter<ChooseYourLanguageTwoState> emit,
  ) async {
    emit(state.copyWith(
        languageController: TextEditingController(),
        malayalamController: TextEditingController()));
    Future.delayed(const Duration(milliseconds: 5000), () {
      NavigatorService.pushNamed(
        AppRoutes.gettingStartedPageScreen,
      );
    });
  }
}
