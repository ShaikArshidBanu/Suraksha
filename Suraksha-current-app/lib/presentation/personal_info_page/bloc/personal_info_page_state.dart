// ignore_for_file: must_be_immutable

part of 'personal_info_page_bloc.dart';

/// Represents the state of PersonalInfoPage in the application.
class PersonalInfoPageState extends Equatable {
  PersonalInfoPageState({
    this.priceController,
    this.personalInfoPageModelObj
  });

  TextEditingController? priceController;

  PersonalInfoPageModel? personalInfoPageModelObj;

  @override
  List<Object?> get props => [
    priceController,
    personalInfoPageModelObj,
  ];
  PersonalInfoPageState  copyWith({
    TextEditingController? priceController,
    PersonalInfoPageModel? personalInfoPageModelObj,
  }) {
    return PersonalInfoPageState(
      priceController: priceController ?? this.priceController,
      personalInfoPageModelObj:
      personalInfoPageModelObj ?? this.personalInfoPageModelObj,
    );
  }
}
