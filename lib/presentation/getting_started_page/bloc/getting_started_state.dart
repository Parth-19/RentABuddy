// ignore_for_file: must_be_immutable

part of 'getting_started_bloc.dart';

/// Represents the state of GettingStarted in the application.
class GettingStartedState extends Equatable {
  GettingStartedState({this.gettingStartedModelObj});

  GettingStartedModel? gettingStartedModelObj;

  @override
  List<Object?> get props => [
        gettingStartedModelObj,
      ];
  GettingStartedState copyWith({GettingStartedModel? gettingStartedModelObj}) {
    return GettingStartedState(
      gettingStartedModelObj:
          gettingStartedModelObj ?? this.gettingStartedModelObj,
    );
  }
}
