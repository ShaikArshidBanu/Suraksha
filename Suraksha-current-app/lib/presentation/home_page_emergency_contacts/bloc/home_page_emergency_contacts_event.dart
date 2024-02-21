// ignore_for_file: must_be_immutable

part of 'home_page_emergency_contacts_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GettingStartedPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomePageEmergencyContactsEvent extends Equatable {}

/// Event that is dispatched when the GettingStartedPage widget is first created.
class HomePageEmergencyContactsInitialEvent extends HomePageEmergencyContactsEvent {
  @override
  List<Object?> get props => [];
}