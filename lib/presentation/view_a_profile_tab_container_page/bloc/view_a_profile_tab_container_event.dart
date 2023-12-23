// ignore_for_file: must_be_immutable

part of 'view_a_profile_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ViewAProfileTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ViewAProfileTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ViewAProfileTabContainer widget is first created.
class ViewAProfileTabContainerInitialEvent
    extends ViewAProfileTabContainerEvent {
  @override
  List<Object?> get props => [];
}
