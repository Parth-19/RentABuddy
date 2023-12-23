// ignore_for_file: must_be_immutable

part of 'new_matched_profile_notification_one_bloc.dart';

/// Represents the state of NewMatchedProfileNotificationOne in the application.
class NewMatchedProfileNotificationOneState extends Equatable {
  NewMatchedProfileNotificationOneState({
    this.messageController,
    this.newMatchedProfileNotificationOneModelObj,
  });

  TextEditingController? messageController;

  NewMatchedProfileNotificationOneModel?
      newMatchedProfileNotificationOneModelObj;

  @override
  List<Object?> get props => [
        messageController,
        newMatchedProfileNotificationOneModelObj,
      ];
  NewMatchedProfileNotificationOneState copyWith({
    TextEditingController? messageController,
    NewMatchedProfileNotificationOneModel?
        newMatchedProfileNotificationOneModelObj,
  }) {
    return NewMatchedProfileNotificationOneState(
      messageController: messageController ?? this.messageController,
      newMatchedProfileNotificationOneModelObj:
          newMatchedProfileNotificationOneModelObj ??
              this.newMatchedProfileNotificationOneModelObj,
    );
  }
}
