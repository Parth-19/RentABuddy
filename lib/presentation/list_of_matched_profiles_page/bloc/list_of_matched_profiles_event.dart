// ignore_for_file: must_be_immutable

part of 'list_of_matched_profiles_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ListOfMatchedProfiles widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListOfMatchedProfilesEvent extends Equatable {}

/// Event that is dispatched when the ListOfMatchedProfiles widget is first created.
class ListOfMatchedProfilesInitialEvent extends ListOfMatchedProfilesEvent {
  @override
  List<Object?> get props => [];
}
