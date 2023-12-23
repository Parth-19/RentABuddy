import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:renta_buddy/presentation/facebook_login_screen/models/facebook_login_model.dart';
part 'facebook_login_event.dart';
part 'facebook_login_state.dart';

/// A bloc that manages the state of a FacebookLogin according to the event that is dispatched to it.
class FacebookLoginBloc extends Bloc<FacebookLoginEvent, FacebookLoginState> {
  FacebookLoginBloc(FacebookLoginState initialState) : super(initialState) {
    on<FacebookLoginInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FacebookLoginInitialEvent event,
    Emitter<FacebookLoginState> emit,
  ) async {}
}
