// ignore_for_file: must_be_immutable

part of 'list_of_matched_profiles_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ListOfMatchedProfilesContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListOfMatchedProfilesContainerEvent extends Equatable {}

/// Event that is dispatched when the ListOfMatchedProfilesContainer widget is first created.
class ListOfMatchedProfilesContainerInitialEvent
    extends ListOfMatchedProfilesContainerEvent {
  @override
  List<Object?> get props => [];
}
