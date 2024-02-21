// ignore_for_file: must_be_immutable

part of 'onboarding_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingPageEvent extends Equatable {}

/// Event that is dispatched when the OnboardingPage widget is first created.
class OnboardingPageInitialEvent extends OnboardingPageEvent {
  @override
  List<Object?> get props => [];
}
