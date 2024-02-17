// ignore_for_file: must_be_immutable

part of 'login_page_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginPageThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginPageThreeEvent extends Equatable {}

/// Event that is dispatched when the LoginPageThree widget is first created.
class LoginPageThreeInitialEvent extends LoginPageThreeEvent {
  @override
  List<Object?> get props => [];
}
