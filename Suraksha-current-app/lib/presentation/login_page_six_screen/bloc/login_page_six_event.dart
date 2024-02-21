// ignore_for_file: must_be_immutable

part of 'login_page_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginPageSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginPageSixEvent extends Equatable {}

/// Event that is dispatched when the LoginPageSix widget is first created.
class LoginPageSixInitialEvent extends LoginPageSixEvent {
  @override
  List<Object?> get props => [];
}
