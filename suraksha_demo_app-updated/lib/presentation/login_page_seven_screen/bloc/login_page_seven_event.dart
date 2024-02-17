// ignore_for_file: must_be_immutable

part of 'login_page_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginPageSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginPageSevenEvent extends Equatable {}

/// Event that is dispatched when the LoginPageSeven widget is first created.
class LoginPageSevenInitialEvent extends LoginPageSevenEvent {
  @override
  List<Object?> get props => [];
}
