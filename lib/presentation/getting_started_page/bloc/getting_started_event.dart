// ignore_for_file: must_be_immutable

part of 'getting_started_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GettingStarted widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GettingStartedEvent extends Equatable {}

/// Event that is dispatched when the GettingStarted widget is first created.
class GettingStartedInitialEvent extends GettingStartedEvent {
  @override
  List<Object?> get props => [];
}
