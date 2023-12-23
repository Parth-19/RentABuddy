import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:renta_buddy/presentation/new_matched_profile_notification_one_screen/models/new_matched_profile_notification_one_model.dart';
part 'new_matched_profile_notification_one_event.dart';
part 'new_matched_profile_notification_one_state.dart';

/// A bloc that manages the state of a NewMatchedProfileNotificationOne according to the event that is dispatched to it.
class NewMatchedProfileNotificationOneBloc extends Bloc<
    NewMatchedProfileNotificationOneEvent,
    NewMatchedProfileNotificationOneState> {
  NewMatchedProfileNotificationOneBloc(
      NewMatchedProfileNotificationOneState initialState)
      : super(initialState) {
    on<NewMatchedProfileNotificationOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewMatchedProfileNotificationOneInitialEvent event,
    Emitter<NewMatchedProfileNotificationOneState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
    ));
  }
}
