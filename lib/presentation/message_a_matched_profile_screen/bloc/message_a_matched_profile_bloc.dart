import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:renta_buddy/presentation/message_a_matched_profile_screen/models/message_a_matched_profile_model.dart';
part 'message_a_matched_profile_event.dart';
part 'message_a_matched_profile_state.dart';

/// A bloc that manages the state of a MessageAMatchedProfile according to the event that is dispatched to it.
class MessageAMatchedProfileBloc
    extends Bloc<MessageAMatchedProfileEvent, MessageAMatchedProfileState> {
  MessageAMatchedProfileBloc(MessageAMatchedProfileState initialState)
      : super(initialState) {
    on<MessageAMatchedProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessageAMatchedProfileInitialEvent event,
    Emitter<MessageAMatchedProfileState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
    ));
  }
}
