// ignore_for_file: must_be_immutable

part of 'personal_info_page_one_bloc.dart';

/// Represents the state of PersonalInfoPageOne in the application.
class PersonalInfoPageOneState extends Equatable {
  PersonalInfoPageOneState({
    this.fullNameController,
    this.ageController,
    this.addressController,
    this.emailController,
    this.selectedDropDownValue,
    this.personalInfoPageOneModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? ageController;

  TextEditingController? addressController;

  TextEditingController? emailController;

  SelectionPopupModel? selectedDropDownValue;

  PersonalInfoPageOneModel? personalInfoPageOneModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        ageController,
        addressController,
        emailController,
        selectedDropDownValue,
        personalInfoPageOneModelObj,
      ];
  PersonalInfoPageOneState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? ageController,
    TextEditingController? addressController,
    TextEditingController? emailController,
    SelectionPopupModel? selectedDropDownValue,
    PersonalInfoPageOneModel? personalInfoPageOneModelObj,
  }) {
    return PersonalInfoPageOneState(
      fullNameController: fullNameController ?? this.fullNameController,
      ageController: ageController ?? this.ageController,
      addressController: addressController ?? this.addressController,
      emailController: emailController ?? this.emailController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      personalInfoPageOneModelObj:
          personalInfoPageOneModelObj ?? this.personalInfoPageOneModelObj,
    );
  }
}
