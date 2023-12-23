// ignore_for_file: must_be_immutable

part of 'new_matched_profile_notification_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewMatchedProfileNotificationTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewMatchedProfileNotificationTwoEvent extends Equatable {}

/// Event that is dispatched when the NewMatchedProfileNotificationTwo widget is first created.
class NewMatchedProfileNotificationTwoInitialEvent
    extends NewMatchedProfileNotificationTwoEvent {
  @override
  List<Object?> get props => [];
}
