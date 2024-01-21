// ignore_for_file: must_be_immutable

part of 'getting_started_page_bloc.dart';

/// Represents the state of GettingStartedPage in the application.
class GettingStartedPageState extends Equatable {
  GettingStartedPageState({this.gettingStartedPageModelObj});

  GettingStartedPageModel? gettingStartedPageModelObj;

  @override
  List<Object?> get props => [
        gettingStartedPageModelObj,
      ];
  GettingStartedPageState copyWith(
      {GettingStartedPageModel? gettingStartedPageModelObj}) {
    return GettingStartedPageState(
      gettingStartedPageModelObj:
          gettingStartedPageModelObj ?? this.gettingStartedPageModelObj,
    );
  }
}
