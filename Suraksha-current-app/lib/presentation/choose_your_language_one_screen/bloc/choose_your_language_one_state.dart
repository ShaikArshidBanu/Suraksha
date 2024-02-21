// ignore_for_file: must_be_immutable

part of 'choose_your_language_one_bloc.dart';

/// Represents the state of ChooseYourLanguageOne in the application.
class ChooseYourLanguageOneState extends Equatable {
  ChooseYourLanguageOneState({
    this.languageController,
    this.malayalamController,
    this.chooseYourLanguageOneModelObj,
  });

  TextEditingController? languageController;

  TextEditingController? malayalamController;

  ChooseYourLanguageOneModel? chooseYourLanguageOneModelObj;

  @override
  List<Object?> get props => [
        languageController,
        malayalamController,
        chooseYourLanguageOneModelObj,
      ];
  ChooseYourLanguageOneState copyWith({
    TextEditingController? languageController,
    TextEditingController? malayalamController,
    ChooseYourLanguageOneModel? chooseYourLanguageOneModelObj,
  }) {
    return ChooseYourLanguageOneState(
      languageController: languageController ?? this.languageController,
      malayalamController: malayalamController ?? this.malayalamController,
      chooseYourLanguageOneModelObj:
          chooseYourLanguageOneModelObj ?? this.chooseYourLanguageOneModelObj,
    );
  }
}
