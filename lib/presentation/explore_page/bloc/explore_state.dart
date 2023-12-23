// ignore_for_file: must_be_immutable

part of 'explore_bloc.dart';

/// Represents the state of Explore in the application.
class ExploreState extends Equatable {
  ExploreState({this.exploreModelObj});

  ExploreModel? exploreModelObj;

  @override
  List<Object?> get props => [
        exploreModelObj,
      ];
  ExploreState copyWith({ExploreModel? exploreModelObj}) {
    return ExploreState(
      exploreModelObj: exploreModelObj ?? this.exploreModelObj,
    );
  }
}
