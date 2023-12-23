import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/twentynine_item_model.dart';
import '../models/twelve_item_model.dart';
import 'package:renta_buddy/presentation/view_a_profile_page/models/view_a_profile_model.dart';
part 'view_a_profile_event.dart';
part 'view_a_profile_state.dart';

/// A bloc that manages the state of a ViewAProfile according to the event that is dispatched to it.
class ViewAProfileBloc extends Bloc<ViewAProfileEvent, ViewAProfileState> {
  ViewAProfileBloc(ViewAProfileState initialState) : super(initialState) {
    on<ViewAProfileInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    on<UpdateChipView1Event>(_updateChipView1);
  }

  _onInitialize(
    ViewAProfileInitialEvent event,
    Emitter<ViewAProfileState> emit,
  ) async {
    emit(state.copyWith(
        viewAProfileModelObj: state.viewAProfileModelObj?.copyWith(
      twentynineItemList: fillTwentynineItemList(),
      twelveItemList: fillTwelveItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ViewAProfileState> emit,
  ) {
    List<TwentynineItemModel> newList = List<TwentynineItemModel>.from(
        state.viewAProfileModelObj!.twentynineItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        viewAProfileModelObj:
            state.viewAProfileModelObj?.copyWith(twentynineItemList: newList)));
  }

  _updateChipView1(
    UpdateChipView1Event event,
    Emitter<ViewAProfileState> emit,
  ) {
    List<TwelveItemModel> newList =
        List<TwelveItemModel>.from(state.viewAProfileModelObj!.twelveItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        viewAProfileModelObj:
            state.viewAProfileModelObj?.copyWith(twelveItemList: newList)));
  }

  List<TwentynineItemModel> fillTwentynineItemList() {
    return List.generate(9, (index) => TwentynineItemModel());
  }

  List<TwelveItemModel> fillTwelveItemList() {
    return List.generate(4, (index) => TwelveItemModel());
  }
}
