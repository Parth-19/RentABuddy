// ignore_for_file: must_be_immutable

part of 'filters_for_profile_bloc.dart';

/// Represents the state of FiltersForProfile in the application.
class FiltersForProfileState extends Equatable {
  FiltersForProfileState({
    this.selectedDropDownValue,
    this.isSelectedSwitch = false,
    this.filtersForProfileModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  FiltersForProfileModel? filtersForProfileModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        isSelectedSwitch,
        filtersForProfileModelObj,
      ];
  FiltersForProfileState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    bool? isSelectedSwitch,
    FiltersForProfileModel? filtersForProfileModelObj,
  }) {
    return FiltersForProfileState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      filtersForProfileModelObj:
          filtersForProfileModelObj ?? this.filtersForProfileModelObj,
    );
  }
}
