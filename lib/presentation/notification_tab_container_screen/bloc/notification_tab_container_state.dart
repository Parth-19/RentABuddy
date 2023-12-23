// ignore_for_file: must_be_immutable

part of 'notification_tab_container_bloc.dart';

/// Represents the state of NotificationTabContainer in the application.
class NotificationTabContainerState extends Equatable {
  NotificationTabContainerState({this.notificationTabContainerModelObj});

  NotificationTabContainerModel? notificationTabContainerModelObj;

  @override
  List<Object?> get props => [
        notificationTabContainerModelObj,
      ];
  NotificationTabContainerState copyWith(
      {NotificationTabContainerModel? notificationTabContainerModelObj}) {
    return NotificationTabContainerState(
      notificationTabContainerModelObj: notificationTabContainerModelObj ??
          this.notificationTabContainerModelObj,
    );
  }
}
