// ignore_for_file: must_be_immutable

part of 'browse_profiles_bloc.dart';

/// Represents the state of BrowseProfiles in the application.
class BrowseProfilesState extends Equatable {
  BrowseProfilesState({this.browseProfilesModelObj});

  BrowseProfilesModel? browseProfilesModelObj;

  @override
  List<Object?> get props => [
        browseProfilesModelObj,
      ];
  BrowseProfilesState copyWith({BrowseProfilesModel? browseProfilesModelObj}) {
    return BrowseProfilesState(
      browseProfilesModelObj:
          browseProfilesModelObj ?? this.browseProfilesModelObj,
    );
  }
}
