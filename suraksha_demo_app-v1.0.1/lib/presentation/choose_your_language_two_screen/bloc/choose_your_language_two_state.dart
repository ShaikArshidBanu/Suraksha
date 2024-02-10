// ignore_for_file: must_be_immutable

part of 'choose_your_language_two_bloc.dart';

/// Represents the state of ChooseYourLanguageTwo in the application.
class ChooseYourLanguageTwoState extends Equatable {
  ChooseYourLanguageTwoState({
    this.languageController,
    this.malayalamController,
    this.chooseYourLanguageTwoModelObj,
  });

  TextEditingController? languageController;

  TextEditingController? malayalamController;

  ChooseYourLanguageTwoModel? chooseYourLanguageTwoModelObj;

  @override
  List<Object?> get props => [
        languageController,
        malayalamController,
        chooseYourLanguageTwoModelObj,
      ];
  ChooseYourLanguageTwoState copyWith({
    TextEditingController? languageController,
    TextEditingController? malayalamController,
    ChooseYourLanguageTwoModel? chooseYourLanguageTwoModelObj,
  }) {
    return ChooseYourLanguageTwoState(
      languageController: languageController ?? this.languageController,
      malayalamController: malayalamController ?? this.malayalamController,
      chooseYourLanguageTwoModelObj:
          chooseYourLanguageTwoModelObj ?? this.chooseYourLanguageTwoModelObj,
    );
  }
}
