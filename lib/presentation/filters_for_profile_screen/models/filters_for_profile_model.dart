// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:renta_buddy/data/models/selectionPopupModel/selection_popup_model.dart';
import 'tag4_item_model.dart';

/// This class defines the variables used in the [filters_for_profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FiltersForProfileModel extends Equatable {
  FiltersForProfileModel({
    this.dropdownItemList = const [],
    this.tag4ItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<Tag4ItemModel> tag4ItemList;

  FiltersForProfileModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<Tag4ItemModel>? tag4ItemList,
  }) {
    return FiltersForProfileModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      tag4ItemList: tag4ItemList ?? this.tag4ItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, tag4ItemList];
}
