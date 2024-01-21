import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gaytri_s_application4/presentation/personal_info_page_one_screen/models/personal_info_page_one_model.dart';
part 'personal_info_page_one_event.dart';
part 'personal_info_page_one_state.dart';

/// A bloc that manages the state of a PersonalInfoPageOne according to the event that is dispatched to it.
class PersonalInfoPageOneBloc
    extends Bloc<PersonalInfoPageOneEvent, PersonalInfoPageOneState> {
  PersonalInfoPageOneBloc(PersonalInfoPageOneState initialState)
      : super(initialState) {
    on<PersonalInfoPageOneInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<PersonalInfoPageOneState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  _onInitialize(
    PersonalInfoPageOneInitialEvent event,
    Emitter<PersonalInfoPageOneState> emit,
  ) async {
    emit(state.copyWith(
      fullNameController: TextEditingController(),
      ageController: TextEditingController(),
      addressController: TextEditingController(),
      emailController: TextEditingController(),
    ));
    emit(state.copyWith(
        personalInfoPageOneModelObj:
            state.personalInfoPageOneModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
