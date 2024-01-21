// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:gaytri_s_application4/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [personal_info_page_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PersonalInfoPageOneModel extends Equatable {
  PersonalInfoPageOneModel({this.dropdownItemList = const []}) {}

  List<SelectionPopupModel> dropdownItemList;

  PersonalInfoPageOneModel copyWith(
      {List<SelectionPopupModel>? dropdownItemList}) {
    return PersonalInfoPageOneModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
