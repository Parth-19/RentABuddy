// ignore_for_file: must_be_immutable

part of 'view_a_profile_tab_container_bloc.dart';

/// Represents the state of ViewAProfileTabContainer in the application.
class ViewAProfileTabContainerState extends Equatable {
  ViewAProfileTabContainerState({this.viewAProfileTabContainerModelObj});

  ViewAProfileTabContainerModel? viewAProfileTabContainerModelObj;

  @override
  List<Object?> get props => [
        viewAProfileTabContainerModelObj,
      ];
  ViewAProfileTabContainerState copyWith(
      {ViewAProfileTabContainerModel? viewAProfileTabContainerModelObj}) {
    return ViewAProfileTabContainerState(
      viewAProfileTabContainerModelObj: viewAProfileTabContainerModelObj ??
          this.viewAProfileTabContainerModelObj,
    );
  }
}
