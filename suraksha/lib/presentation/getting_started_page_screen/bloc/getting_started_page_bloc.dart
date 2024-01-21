import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gaytri_s_application4/presentation/getting_started_page_screen/models/getting_started_page_model.dart';
part 'getting_started_page_event.dart';
part 'getting_started_page_state.dart';

/// A bloc that manages the state of a GettingStartedPage according to the event that is dispatched to it.
class GettingStartedPageBloc
    extends Bloc<GettingStartedPageEvent, GettingStartedPageState> {
  GettingStartedPageBloc(GettingStartedPageState initialState)
      : super(initialState) {
    on<GettingStartedPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GettingStartedPageInitialEvent event,
    Emitter<GettingStartedPageState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.personalInfoPageOneScreen,
      );
    });
  }
}
