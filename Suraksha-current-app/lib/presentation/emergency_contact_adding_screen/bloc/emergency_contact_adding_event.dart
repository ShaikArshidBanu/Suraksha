// ignore_for_file: must_be_immutable

part of 'emergency_contact_adding_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PersonalInfoPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EmergencyContactAddingEvent extends Equatable {}

/// Event that is dispatched when the ChooseYourLanguageOne widget is first created.
class EmergencyContactAddingInitialEvent extends EmergencyContactAddingEvent {
  @override
  List<Object?> get props => [];
}