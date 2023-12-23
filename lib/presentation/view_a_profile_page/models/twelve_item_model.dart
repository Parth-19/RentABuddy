// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [twelve_item_widget] screen.
class TwelveItemModel extends Equatable {
  TwelveItemModel({
    this.englishNative,
    this.isSelected,
  }) {
    englishNative = englishNative ?? "English (Native)";
    isSelected = isSelected ?? false;
  }

  String? englishNative;

  bool? isSelected;

  TwelveItemModel copyWith({
    String? englishNative,
    bool? isSelected,
  }) {
    return TwelveItemModel(
      englishNative: englishNative ?? this.englishNative,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [englishNative, isSelected];
}
