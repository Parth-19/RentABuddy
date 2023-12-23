// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'exploresection_item_model.dart';

/// This class defines the variables used in the [explore_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreModel extends Equatable {
  ExploreModel({this.exploresectionItemList = const []}) {}

  List<ExploresectionItemModel> exploresectionItemList;

  ExploreModel copyWith(
      {List<ExploresectionItemModel>? exploresectionItemList}) {
    return ExploreModel(
      exploresectionItemList:
          exploresectionItemList ?? this.exploresectionItemList,
    );
  }

  @override
  List<Object?> get props => [exploresectionItemList];
}
