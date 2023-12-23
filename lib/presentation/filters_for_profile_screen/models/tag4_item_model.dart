// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [tag4_item_widget] screen.
class Tag4ItemModel extends Equatable {
  Tag4ItemModel({
    this.frame,
    this.isSelected,
  }) {
    frame = frame ?? "Punjabi";
    isSelected = isSelected ?? false;
  }

  String? frame;

  bool? isSelected;

  Tag4ItemModel copyWith({
    String? frame,
    bool? isSelected,
  }) {
    return Tag4ItemModel(
      frame: frame ?? this.frame,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [frame, isSelected];
}
