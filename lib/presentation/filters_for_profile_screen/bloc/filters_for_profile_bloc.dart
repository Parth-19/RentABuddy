import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/tag4_item_model.dart';
import 'package:renta_buddy/presentation/filters_for_profile_screen/models/filters_for_profile_model.dart';
part 'filters_for_profile_event.dart';
part 'filters_for_profile_state.dart';

/// A bloc that manages the state of a FiltersForProfile according to the event that is dispatched to it.
class FiltersForProfileBloc
    extends Bloc<FiltersForProfileEvent, FiltersForProfileState> {
  FiltersForProfileBloc(FiltersForProfileState initialState)
      : super(initialState) {
    on<FiltersForProfileInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<FiltersForProfileState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<FiltersForProfileState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FiltersForProfileState> emit,
  ) {
    List<Tag4ItemModel> newList =
        List<Tag4ItemModel>.from(state.filtersForProfileModelObj!.tag4ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        filtersForProfileModelObj:
            state.filtersForProfileModelObj?.copyWith(tag4ItemList: newList)));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<Tag4ItemModel> fillTag4ItemList() {
    return List.generate(2, (index) => Tag4ItemModel());
  }

  _onInitialize(
    FiltersForProfileInitialEvent event,
    Emitter<FiltersForProfileState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
    emit(state.copyWith(
        filtersForProfileModelObj: state.filtersForProfileModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      tag4ItemList: fillTag4ItemList(),
    )));
  }
}
