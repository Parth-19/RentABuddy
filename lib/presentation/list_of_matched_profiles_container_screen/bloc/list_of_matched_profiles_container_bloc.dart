import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:renta_buddy/presentation/list_of_matched_profiles_container_screen/models/list_of_matched_profiles_container_model.dart';
part 'list_of_matched_profiles_container_event.dart';
part 'list_of_matched_profiles_container_state.dart';

/// A bloc that manages the state of a ListOfMatchedProfilesContainer according to the event that is dispatched to it.
class ListOfMatchedProfilesContainerBloc extends Bloc<
    ListOfMatchedProfilesContainerEvent, ListOfMatchedProfilesContainerState> {
  ListOfMatchedProfilesContainerBloc(
      ListOfMatchedProfilesContainerState initialState)
      : super(initialState) {
    on<ListOfMatchedProfilesContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ListOfMatchedProfilesContainerInitialEvent event,
    Emitter<ListOfMatchedProfilesContainerState> emit,
  ) async {}
}
