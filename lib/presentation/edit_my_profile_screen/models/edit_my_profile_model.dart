// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'editmyprofile_item_model.dart';
import 'package:renta_buddy/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [edit_my_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EditMyProfileModel extends Equatable {
  EditMyProfileModel({
    this.editmyprofileItemList = const [],
    this.dropdownItemList = const [],
  }) {}

  List<EditmyprofileItemModel> editmyprofileItemList;

  List<SelectionPopupModel> dropdownItemList;

  EditMyProfileModel copyWith({
    List<EditmyprofileItemModel>? editmyprofileItemList,
    List<SelectionPopupModel>? dropdownItemList,
  }) {
    return EditMyProfileModel(
      editmyprofileItemList:
          editmyprofileItemList ?? this.editmyprofileItemList,
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [editmyprofileItemList, dropdownItemList];
}
