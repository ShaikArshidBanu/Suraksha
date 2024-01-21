// ignore_for_file: must_be_immutable

part of 'getting_started_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GettingStartedPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GettingStartedPageEvent extends Equatable {}

/// Event that is dispatched when the GettingStartedPage widget is first created.
class GettingStartedPageInitialEvent extends GettingStartedPageEvent {
  @override
  List<Object?> get props => [];
}
