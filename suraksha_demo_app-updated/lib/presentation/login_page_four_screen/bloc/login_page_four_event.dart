// ignore_for_file: must_be_immutable

part of 'login_page_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginPageFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginPageFourEvent extends Equatable {}

/// Event that is dispatched when the LoginPageFour widget is first created.
class LoginPageFourInitialEvent extends LoginPageFourEvent {
  @override
  List<Object?> get props => [];
}
