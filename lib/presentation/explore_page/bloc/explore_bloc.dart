import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/exploresection_item_model.dart';
import 'package:renta_buddy/presentation/explore_page/models/explore_model.dart';
part 'explore_event.dart';
part 'explore_state.dart';

/// A bloc that manages the state of a Explore according to the event that is dispatched to it.
class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  ExploreBloc(ExploreState initialState) : super(initialState) {
    on<ExploreInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExploreInitialEvent event,
    Emitter<ExploreState> emit,
  ) async {
    emit(state.copyWith(
        exploreModelObj: state.exploreModelObj?.copyWith(
      exploresectionItemList: fillExploresectionItemList(),
    )));
  }

  List<ExploresectionItemModel> fillExploresectionItemList() {
    return [
      ExploresectionItemModel(image: ImageConstant.imgImage58184x163),
      ExploresectionItemModel(image: ImageConstant.imgImage59),
      ExploresectionItemModel(image: ImageConstant.imgImage61),
      ExploresectionItemModel(image: ImageConstant.imgImage60),
      ExploresectionItemModel(image: ImageConstant.imgImage62),
      ExploresectionItemModel(image: ImageConstant.imgImage63169x163)
    ];
  }
}
