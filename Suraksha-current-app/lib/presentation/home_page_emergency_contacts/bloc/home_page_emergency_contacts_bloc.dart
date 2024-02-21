import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/home_page_emergency_contacts_model.dart';
import '/core/app_export.dart';
import 'package:suraksha_demo_app/presentation/home_page_screen/models/home_page_model.dart';
part 'home_page_emergency_contacts_event.dart';
part 'home_page_emergency_contacts_state.dart';

/// A bloc that manages the state of a GettingStartedPage according to the event that is dispatched to it.
class HomePageEmergencyContactsBloc
    extends Bloc<HomePageEmergencyContactsEvent,HomePageEmergencyContactsState> {
  HomePageEmergencyContactsBloc(HomePageEmergencyContactsState initialState)
      : super(initialState) {
    on<HomePageEmergencyContactsInitialEvent>(_onInitialize);
  }

  _onInitialize(
      HomePageEmergencyContactsInitialEvent event,
      Emitter<HomePageEmergencyContactsState> emit,
      ) async {
  }
}
