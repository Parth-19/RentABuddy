import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:renta_buddy/presentation/browse_profiles_page/models/browse_profiles_model.dart';
part 'browse_profiles_event.dart';
part 'browse_profiles_state.dart';

/// A bloc that manages the state of a BrowseProfiles according to the event that is dispatched to it.
class BrowseProfilesBloc
    extends Bloc<BrowseProfilesEvent, BrowseProfilesState> {
  BrowseProfilesBloc(BrowseProfilesState initialState) : super(initialState) {
    on<BrowseProfilesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BrowseProfilesInitialEvent event,
    Emitter<BrowseProfilesState> emit,
  ) async {}
}
