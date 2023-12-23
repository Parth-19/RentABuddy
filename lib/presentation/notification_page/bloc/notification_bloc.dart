import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import '../models/userprofile1_item_model.dart';
import 'package:renta_buddy/presentation/notification_page/models/notification_model.dart';
part 'notification_event.dart';
part 'notification_state.dart';

/// A bloc that manages the state of a Notification according to the event that is dispatched to it.
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc(NotificationState initialState) : super(initialState) {
    on<NotificationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationInitialEvent event,
    Emitter<NotificationState> emit,
  ) async {
    emit(state.copyWith(
        notificationModelObj: state.notificationModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
      userprofile1ItemList: fillUserprofile1ItemList(),
    )));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          userImage: ImageConstant.imgRectangle,
          fullName: "Full name",
          professionalTitle: "Professional title"),
      UserprofileItemModel(
          userImage: ImageConstant.imgRectangle96x96,
          fullName: "Full name",
          professionalTitle: "Professional title")
    ];
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(
          userImage: ImageConstant.imgRectangle36x36,
          userName:
              "User name lorem ipsum dolor sit amet, consectetur adipiscing elit.",
          timeAgo: "A few seconds ago"),
      Userprofile1ItemModel(
          userImage: ImageConstant.imgRectangle36x36,
          userName:
              "User name lorem ipsum dolor sit amet, consectetur adipiscing elit.",
          timeAgo: "A few seconds ago"),
      Userprofile1ItemModel(
          userImage: ImageConstant.imgRectangle1,
          userName:
              "User name lorem ipsum dolor sit amet, consectetur adipiscing elit.",
          timeAgo: "A few seconds ago")
    ];
  }
}
