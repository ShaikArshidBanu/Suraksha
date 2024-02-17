import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:suraksha_demo_app/presentation/permissions_page_screen/models/permissions_page_model.dart';
part 'permissions_page_event.dart';
part 'permissions_page_state.dart';

/// A bloc that manages the state of a PersonalInfoPage according to the event that is dispatched to it.
class PermissionsPageBloc
    extends Bloc<PermissionsPageEvent, PermissionsPageState> {
  PermissionsPageBloc(PermissionsPageState initialState) : super(initialState) {
    on<PermissionsPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
      PermissionsPageInitialEvent event,
      Emitter<PermissionsPageState> emit
      ) async {
  }
}
