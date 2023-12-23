// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [twentynine_item_widget] screen.
class TwentynineItemModel extends Equatable {
  TwentynineItemModel({
    this.flat,
    this.isSelected,
  }) {
    flat = flat ?? "5'6\" (168 cm)";
    isSelected = isSelected ?? false;
  }

  String? flat;

  bool? isSelected;

  TwentynineItemModel copyWith({
    String? flat,
    bool? isSelected,
  }) {
    return TwentynineItemModel(
      flat: flat ?? this.flat,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [flat, isSelected];
}
