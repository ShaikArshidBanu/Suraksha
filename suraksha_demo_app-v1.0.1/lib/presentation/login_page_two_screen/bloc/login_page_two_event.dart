// ignore_for_file: must_be_immutable

part of 'login_page_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginPageTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginPageTwoEvent extends Equatable {}

/// Event that is dispatched when the LoginPageTwo widget is first created.
class LoginPageTwoInitialEvent extends LoginPageTwoEvent {
  @override
  List<Object?> get props => [];
}
