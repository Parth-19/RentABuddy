import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:renta_buddy/presentation/new_matched_profile_notification_two_screen/models/new_matched_profile_notification_two_model.dart';
part 'new_matched_profile_notification_two_event.dart';
part 'new_matched_profile_notification_two_state.dart';

/// A bloc that manages the state of a NewMatchedProfileNotificationTwo according to the event that is dispatched to it.
class NewMatchedProfileNotificationTwoBloc extends Bloc<
    NewMatchedProfileNotificationTwoEvent,
    NewMatchedProfileNotificationTwoState> {
  NewMatchedProfileNotificationTwoBloc(
      NewMatchedProfileNotificationTwoState initialState)
      : super(initialState) {
    on<NewMatchedProfileNotificationTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewMatchedProfileNotificationTwoInitialEvent event,
    Emitter<NewMatchedProfileNotificationTwoState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
