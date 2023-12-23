// ignore_for_file: must_be_immutable

part of 'edit_my_profile_bloc.dart';

/// Represents the state of EditMyProfile in the application.
class EditMyProfileState extends Equatable {
  EditMyProfileState({
    this.shareafewwordsaboutyourselfyouController,
    this.selectedDropDownValue,
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.editMyProfileModelObj,
  });

  TextEditingController? shareafewwordsaboutyourselfyouController;

  SelectionPopupModel? selectedDropDownValue;

  EditMyProfileModel? editMyProfileModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  @override
  List<Object?> get props => [
        shareafewwordsaboutyourselfyouController,
        selectedDropDownValue,
        isSelectedSwitch,
        isSelectedSwitch1,
        editMyProfileModelObj,
      ];
  EditMyProfileState copyWith({
    TextEditingController? shareafewwordsaboutyourselfyouController,
    SelectionPopupModel? selectedDropDownValue,
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    EditMyProfileModel? editMyProfileModelObj,
  }) {
    return EditMyProfileState(
      shareafewwordsaboutyourselfyouController:
          shareafewwordsaboutyourselfyouController ??
              this.shareafewwordsaboutyourselfyouController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      editMyProfileModelObj:
          editMyProfileModelObj ?? this.editMyProfileModelObj,
    );
  }
}
