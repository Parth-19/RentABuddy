// ignore_for_file: must_be_immutable

part of 'new_matched_profile_notification_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewMatchedProfileNotificationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewMatchedProfileNotificationOneEvent extends Equatable {}

/// Event that is dispatched when the NewMatchedProfileNotificationOne widget is first created.
class NewMatchedProfileNotificationOneInitialEvent
    extends NewMatchedProfileNotificationOneEvent {
  @override
  List<Object?> get props => [];
}
