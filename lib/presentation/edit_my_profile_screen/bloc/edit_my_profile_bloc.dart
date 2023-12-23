import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/editmyprofile_item_model.dart';
import 'package:renta_buddy/presentation/edit_my_profile_screen/models/edit_my_profile_model.dart';
part 'edit_my_profile_event.dart';
part 'edit_my_profile_state.dart';

/// A bloc that manages the state of a EditMyProfile according to the event that is dispatched to it.
class EditMyProfileBloc extends Bloc<EditMyProfileEvent, EditMyProfileState> {
  EditMyProfileBloc(EditMyProfileState initialState) : super(initialState) {
    on<EditMyProfileInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
    on<ChangeSwitch1Event>(_changeSwitch1);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<EditMyProfileState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  _changeSwitch1(
    ChangeSwitch1Event event,
    Emitter<EditMyProfileState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch1: event.value));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<EditMyProfileState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  List<EditmyprofileItemModel> fillEditmyprofileItemList() {
    return [EditmyprofileItemModel(image: ImageConstant.imgImage4)];
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  _onInitialize(
    EditMyProfileInitialEvent event,
    Emitter<EditMyProfileState> emit,
  ) async {
    emit(state.copyWith(
        shareafewwordsaboutyourselfyouController: TextEditingController(),
        isSelectedSwitch: false,
        isSelectedSwitch1: false));
    emit(state.copyWith(
        editMyProfileModelObj: state.editMyProfileModelObj?.copyWith(
            editmyprofileItemList: fillEditmyprofileItemList(),
            dropdownItemList: fillDropdownItemList())));
  }
}
