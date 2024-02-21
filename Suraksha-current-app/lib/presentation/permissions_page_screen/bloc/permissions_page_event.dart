// ignore_for_file: must_be_immutable

part of 'permissions_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PersonalInfoPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PermissionsPageEvent extends Equatable {}

/// Event that is dispatched when the ChooseYourLanguageOne widget is first created.
class PermissionsPageInitialEvent extends PermissionsPageEvent {
  @override
  List<Object?> get props => [];
}
