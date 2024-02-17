// ignore_for_file: must_be_immutable

part of 'login_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginPageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginPageOneEvent extends Equatable {}

/// Event that is dispatched when the LoginPageOne widget is first created.
class LoginPageOneInitialEvent extends LoginPageOneEvent {
  @override
  List<Object?> get props => [];
}
