// ignore_for_file: must_be_immutable

part of 'notification_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationTabContainerEvent extends Equatable {}

/// Event that is dispatched when the NotificationTabContainer widget is first created.
class NotificationTabContainerInitialEvent
    extends NotificationTabContainerEvent {
  @override
  List<Object?> get props => [];
}
