import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:renta_buddy/presentation/view_a_profile_tab_container_page/models/view_a_profile_tab_container_model.dart';
part 'view_a_profile_tab_container_event.dart';
part 'view_a_profile_tab_container_state.dart';

/// A bloc that manages the state of a ViewAProfileTabContainer according to the event that is dispatched to it.
class ViewAProfileTabContainerBloc
    extends Bloc<ViewAProfileTabContainerEvent, ViewAProfileTabContainerState> {
  ViewAProfileTabContainerBloc(ViewAProfileTabContainerState initialState)
      : super(initialState) {
    on<ViewAProfileTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ViewAProfileTabContainerInitialEvent event,
    Emitter<ViewAProfileTabContainerState> emit,
  ) async {}
}
