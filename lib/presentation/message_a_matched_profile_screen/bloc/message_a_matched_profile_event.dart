// ignore_for_file: must_be_immutable

part of 'message_a_matched_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MessageAMatchedProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MessageAMatchedProfileEvent extends Equatable {}

/// Event that is dispatched when the MessageAMatchedProfile widget is first created.
class MessageAMatchedProfileInitialEvent extends MessageAMatchedProfileEvent {
  @override
  List<Object?> get props => [];
}
