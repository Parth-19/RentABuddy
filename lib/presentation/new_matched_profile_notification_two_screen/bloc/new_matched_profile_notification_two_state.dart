// ignore_for_file: must_be_immutable

part of 'new_matched_profile_notification_two_bloc.dart';

/// Represents the state of NewMatchedProfileNotificationTwo in the application.
class NewMatchedProfileNotificationTwoState extends Equatable {
  NewMatchedProfileNotificationTwoState({
    this.searchController,
    this.newMatchedProfileNotificationTwoModelObj,
  });

  TextEditingController? searchController;

  NewMatchedProfileNotificationTwoModel?
      newMatchedProfileNotificationTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        newMatchedProfileNotificationTwoModelObj,
      ];
  NewMatchedProfileNotificationTwoState copyWith({
    TextEditingController? searchController,
    NewMatchedProfileNotificationTwoModel?
        newMatchedProfileNotificationTwoModelObj,
  }) {
    return NewMatchedProfileNotificationTwoState(
      searchController: searchController ?? this.searchController,
      newMatchedProfileNotificationTwoModelObj:
          newMatchedProfileNotificationTwoModelObj ??
              this.newMatchedProfileNotificationTwoModelObj,
    );
  }
}
