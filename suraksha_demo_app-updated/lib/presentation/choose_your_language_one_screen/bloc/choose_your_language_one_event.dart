// ignore_for_file: must_be_immutable

part of 'choose_your_language_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseYourLanguageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseYourLanguageOneEvent extends Equatable {}

/// Event that is dispatched when the ChooseYourLanguageOne widget is first created.
class ChooseYourLanguageOneInitialEvent extends ChooseYourLanguageOneEvent {
  @override
  List<Object?> get props => [];
}
