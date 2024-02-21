// ignore_for_file: must_be_immutable

part of 'home_page_emergency_contacts_bloc.dart';

/// Represents the state of GettingStartedPage in the application.
class HomePageEmergencyContactsState extends Equatable {
  HomePageEmergencyContactsState({this.homePageEmergencyContactsModelObj});

  HomePageEmergencyContactsModel? homePageEmergencyContactsModelObj;

  @override
  List<Object?> get props => [
    homePageEmergencyContactsModelObj,
  ];
  HomePageEmergencyContactsState copyWith(
      {HomePageEmergencyContactsModel? homePageEmergencyContactsModelObj}) {
    return HomePageEmergencyContactsState(
      homePageEmergencyContactsModelObj:
      homePageEmergencyContactsModelObj ?? this.homePageEmergencyContactsModelObj,
    );
  }
}
