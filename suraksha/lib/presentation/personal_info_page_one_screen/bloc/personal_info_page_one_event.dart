// ignore_for_file: must_be_immutable

part of 'personal_info_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PersonalInfoPageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PersonalInfoPageOneEvent extends Equatable {}

/// Event that is dispatched when the PersonalInfoPageOne widget is first created.
class PersonalInfoPageOneInitialEvent extends PersonalInfoPageOneEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends PersonalInfoPageOneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
