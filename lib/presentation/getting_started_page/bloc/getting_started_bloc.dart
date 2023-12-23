import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:renta_buddy/presentation/getting_started_page/models/getting_started_model.dart';
part 'getting_started_event.dart';
part 'getting_started_state.dart';

/// A bloc that manages the state of a GettingStarted according to the event that is dispatched to it.
class GettingStartedBloc
    extends Bloc<GettingStartedEvent, GettingStartedState> {
  GettingStartedBloc(GettingStartedState initialState) : super(initialState) {
    on<GettingStartedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GettingStartedInitialEvent event,
    Emitter<GettingStartedState> emit,
  ) async {}
}
