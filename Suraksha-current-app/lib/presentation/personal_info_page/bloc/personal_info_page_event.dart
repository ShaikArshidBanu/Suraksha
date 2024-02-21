// ignore_for_file: must_be_immutable

part of 'personal_info_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PersonalInfoPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PersonalInfoPageEvent extends Equatable {}

/// Event that is dispatched when the ChooseYourLanguageOne widget is first created.
class PersonalInfoPageInitialEvent extends PersonalInfoPageEvent {
  @override
  List<Object?> get props => [];
}
