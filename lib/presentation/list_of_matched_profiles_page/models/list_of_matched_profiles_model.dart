// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'twentyeight_item_model.dart';

/// This class defines the variables used in the [list_of_matched_profiles_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ListOfMatchedProfilesModel extends Equatable {
  ListOfMatchedProfilesModel({this.twentyeightItemList = const []}) {}

  List<TwentyeightItemModel> twentyeightItemList;

  ListOfMatchedProfilesModel copyWith(
      {List<TwentyeightItemModel>? twentyeightItemList}) {
    return ListOfMatchedProfilesModel(
      twentyeightItemList: twentyeightItemList ?? this.twentyeightItemList,
    );
  }

  @override
  List<Object?> get props => [twentyeightItemList];
}
