// ignore_for_file: must_be_immutable

part of 'choose_your_language_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseYourLanguageTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseYourLanguageTwoEvent extends Equatable {}

/// Event that is dispatched when the ChooseYourLanguageTwo widget is first created.
class ChooseYourLanguageTwoInitialEvent extends ChooseYourLanguageTwoEvent {
  @override
  List<Object?> get props => [];
}
