import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/twentyeight_item_model.dart';
import 'package:renta_buddy/presentation/list_of_matched_profiles_page/models/list_of_matched_profiles_model.dart';
part 'list_of_matched_profiles_event.dart';
part 'list_of_matched_profiles_state.dart';

/// A bloc that manages the state of a ListOfMatchedProfiles according to the event that is dispatched to it.
class ListOfMatchedProfilesBloc
    extends Bloc<ListOfMatchedProfilesEvent, ListOfMatchedProfilesState> {
  ListOfMatchedProfilesBloc(ListOfMatchedProfilesState initialState)
      : super(initialState) {
    on<ListOfMatchedProfilesInitialEvent>(_onInitialize);
  }

  List<TwentyeightItemModel> fillTwentyeightItemList() {
    return [
      TwentyeightItemModel(
          userImage: ImageConstant.imgAvatar2, userName: "Jhon Doe"),
      TwentyeightItemModel(
          userImage: ImageConstant.imgUser, userName: "Jhon Doe"),
      TwentyeightItemModel(
          userImage: ImageConstant.imgContrast, userName: "Jhon Doe"),
      TwentyeightItemModel(userName: "Jhon Doe Morris")
    ];
  }

  _onInitialize(
    ListOfMatchedProfilesInitialEvent event,
    Emitter<ListOfMatchedProfilesState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        listOfMatchedProfilesModelObj:
            state.listOfMatchedProfilesModelObj?.copyWith(
      twentyeightItemList: fillTwentyeightItemList(),
    )));
  }
}
