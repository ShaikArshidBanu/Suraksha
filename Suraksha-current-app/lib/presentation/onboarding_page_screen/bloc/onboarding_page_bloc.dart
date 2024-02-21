import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:suraksha_demo_app/presentation/onboarding_page_screen/models/onboarding_page_model.dart';
part 'onboarding_page_event.dart';
part 'onboarding_page_state.dart';

/// A bloc that manages the state of a OnboardingPage according to the event that is dispatched to it.
class OnboardingPageBloc
    extends Bloc<OnboardingPageEvent, OnboardingPageState> {
  OnboardingPageBloc(OnboardingPageState initialState) : super(initialState) {
    on<OnboardingPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingPageInitialEvent event,
    Emitter<OnboardingPageState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 5000), () {
      NavigatorService.pushNamed(
        AppRoutes.chooseYourLanguageOneScreen,
      );
    });
  }
}
