// ignore_for_file: must_be_immutable

part of 'onboarding_page_bloc.dart';

/// Represents the state of OnboardingPage in the application.
class OnboardingPageState extends Equatable {
  OnboardingPageState({this.onboardingPageModelObj});

  OnboardingPageModel? onboardingPageModelObj;

  @override
  List<Object?> get props => [
        onboardingPageModelObj,
      ];
  OnboardingPageState copyWith({OnboardingPageModel? onboardingPageModelObj}) {
    return OnboardingPageState(
      onboardingPageModelObj:
          onboardingPageModelObj ?? this.onboardingPageModelObj,
    );
  }
}
