// ignore_for_file: must_be_immutable

part of 'list_of_matched_profiles_container_bloc.dart';

/// Represents the state of ListOfMatchedProfilesContainer in the application.
class ListOfMatchedProfilesContainerState extends Equatable {
  ListOfMatchedProfilesContainerState(
      {this.listOfMatchedProfilesContainerModelObj});

  ListOfMatchedProfilesContainerModel? listOfMatchedProfilesContainerModelObj;

  @override
  List<Object?> get props => [
        listOfMatchedProfilesContainerModelObj,
      ];
  ListOfMatchedProfilesContainerState copyWith(
      {ListOfMatchedProfilesContainerModel?
          listOfMatchedProfilesContainerModelObj}) {
    return ListOfMatchedProfilesContainerState(
      listOfMatchedProfilesContainerModelObj:
          listOfMatchedProfilesContainerModelObj ??
              this.listOfMatchedProfilesContainerModelObj,
    );
  }
}
