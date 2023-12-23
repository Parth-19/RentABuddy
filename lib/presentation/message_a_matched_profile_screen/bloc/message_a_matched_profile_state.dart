// ignore_for_file: must_be_immutable

part of 'message_a_matched_profile_bloc.dart';

/// Represents the state of MessageAMatchedProfile in the application.
class MessageAMatchedProfileState extends Equatable {
  MessageAMatchedProfileState({
    this.messageController,
    this.messageAMatchedProfileModelObj,
  });

  TextEditingController? messageController;

  MessageAMatchedProfileModel? messageAMatchedProfileModelObj;

  @override
  List<Object?> get props => [
        messageController,
        messageAMatchedProfileModelObj,
      ];
  MessageAMatchedProfileState copyWith({
    TextEditingController? messageController,
    MessageAMatchedProfileModel? messageAMatchedProfileModelObj,
  }) {
    return MessageAMatchedProfileState(
      messageController: messageController ?? this.messageController,
      messageAMatchedProfileModelObj:
          messageAMatchedProfileModelObj ?? this.messageAMatchedProfileModelObj,
    );
  }
}
