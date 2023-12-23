import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:renta_buddy/presentation/notification_tab_container_screen/models/notification_tab_container_model.dart';
part 'notification_tab_container_event.dart';
part 'notification_tab_container_state.dart';

/// A bloc that manages the state of a NotificationTabContainer according to the event that is dispatched to it.
class NotificationTabContainerBloc
    extends Bloc<NotificationTabContainerEvent, NotificationTabContainerState> {
  NotificationTabContainerBloc(NotificationTabContainerState initialState)
      : super(initialState) {
    on<NotificationTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationTabContainerInitialEvent event,
    Emitter<NotificationTabContainerState> emit,
  ) async {}
}
