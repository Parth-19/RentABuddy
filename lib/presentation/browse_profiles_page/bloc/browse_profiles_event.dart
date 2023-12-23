// ignore_for_file: must_be_immutable

part of 'browse_profiles_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrowseProfiles widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrowseProfilesEvent extends Equatable {}

/// Event that is dispatched when the BrowseProfiles widget is first created.
class BrowseProfilesInitialEvent extends BrowseProfilesEvent {
  @override
  List<Object?> get props => [];
}
