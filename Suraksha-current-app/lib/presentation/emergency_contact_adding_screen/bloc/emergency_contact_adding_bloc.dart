import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/emergency_contact_adding_model.dart';
import '/core/app_export.dart';
import 'package:suraksha_demo_app/presentation/personal_info_page/models/personal_info_page_model.dart';
part 'emergency_contact_adding_event.dart';
part 'emergency_contact_adding_state.dart';

/// A bloc that manages the state of a PersonalInfoPage according to the event that is dispatched to it.
class EmergencyContactAddingBloc
    extends Bloc<EmergencyContactAddingEvent, EmergencyContactAddingState> {
  EmergencyContactAddingBloc(EmergencyContactAddingState initialState) : super(initialState) {
    on<EmergencyContactAddingInitialEvent>(_onInitialize);
  }

  _onInitialize(
      EmergencyContactAddingInitialEvent event,
      Emitter<EmergencyContactAddingState> emit,
      ) async {
    emit(state.copyWith(priceController: TextEditingController()));
    Future.delayed(const Duration(milliseconds: 5000), () {
      NavigatorService.pushNamed(
        AppRoutes.permissionsPageScreen,
      );
    });
  }
}