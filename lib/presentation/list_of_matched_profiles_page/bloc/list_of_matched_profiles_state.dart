// ignore_for_file: must_be_immutable

part of 'list_of_matched_profiles_bloc.dart';

/// Represents the state of ListOfMatchedProfiles in the application.
class ListOfMatchedProfilesState extends Equatable {
  ListOfMatchedProfilesState({
    this.searchController,
    this.listOfMatchedProfilesModelObj,
  });

  TextEditingController? searchController;

  ListOfMatchedProfilesModel? listOfMatchedProfilesModelObj;

  @override
  List<Object?> get props => [
        searchController,
        listOfMatchedProfilesModelObj,
      ];
  ListOfMatchedProfilesState copyWith({
    TextEditingController? searchController,
    ListOfMatchedProfilesModel? listOfMatchedProfilesModelObj,
  }) {
    return ListOfMatchedProfilesState(
      searchController: searchController ?? this.searchController,
      listOfMatchedProfilesModelObj:
          listOfMatchedProfilesModelObj ?? this.listOfMatchedProfilesModelObj,
    );
  }
}
