// ignore_for_file: must_be_immutable

part of 'login_page_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginPageFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginPageFiveEvent extends Equatable {}

/// Event that is dispatched when the LoginPageFive widget is first created.
class LoginPageFiveInitialEvent extends LoginPageFiveEvent {
  @override
  List<Object?> get props => [];
}
