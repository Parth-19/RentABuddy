// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'twentynine_item_model.dart';
import 'twelve_item_model.dart';

/// This class defines the variables used in the [view_a_profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ViewAProfileModel extends Equatable {
  ViewAProfileModel({
    this.twentynineItemList = const [],
    this.twelveItemList = const [],
  }) {}

  List<TwentynineItemModel> twentynineItemList;

  List<TwelveItemModel> twelveItemList;

  ViewAProfileModel copyWith({
    List<TwentynineItemModel>? twentynineItemList,
    List<TwelveItemModel>? twelveItemList,
  }) {
    return ViewAProfileModel(
      twentynineItemList: twentynineItemList ?? this.twentynineItemList,
      twelveItemList: twelveItemList ?? this.twelveItemList,
    );
  }

  @override
  List<Object?> get props => [twentynineItemList, twelveItemList];
}
