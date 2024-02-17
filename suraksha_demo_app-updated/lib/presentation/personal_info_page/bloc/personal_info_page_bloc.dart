import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:suraksha_demo_app/presentation/personal_info_page/models/personal_info_page_model.dart';
part 'personal_info_page_event.dart';
part 'personal_info_page_state.dart';

/// A bloc that manages the state of a PersonalInfoPage according to the event that is dispatched to it.
class PersonalInfoPageBloc
    extends Bloc<PersonalInfoPageEvent, PersonalInfoPageState> {
  PersonalInfoPageBloc(PersonalInfoPageState initialState) : super(initialState) {
    on<PersonalInfoPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
      PersonalInfoPageInitialEvent event,
      Emitter<PersonalInfoPageState> emit,
      ) async {
    emit(state.copyWith(priceController: TextEditingController()));
    Future.delayed(const Duration(milliseconds: 5000), () {
      NavigatorService.pushNamed(
        AppRoutes.emergencyContactAddingScreen,
      );
    });
  }
}